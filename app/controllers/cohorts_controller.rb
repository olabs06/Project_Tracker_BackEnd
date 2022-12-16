class CohortsController < ApplicationController
    skip_before_action :authorize, only: :index
    def index
        cohorts = Cohort.all 
        render json: cohorts
    end

    def show
        cohort = Cohort.find_by(id: params[:id])
        render json: cohort
    end

    def create
        image = Cloudinary::Uploader.upload(params[:image_url], {
            upload_preset: "project-tracker",
          })

        add_cohort = Cohort.create!({:year => params[:year], :user_id => params[:user_id]})
        render json: add_cohort, status: :created
    end

    def update
        update_cohort = Group.find_by(id: params[:id])
        image = Cloudinary::Uploader.upload(params[:image_url], {
            upload_preset: "project-tracker",
          })
        update_cohort.update({:year => params[:year],:user_id => params[:user_id]})
        render json: update_cohort
    end

    def destroy
        cohort = Cohort.find(params[:id])
        cohort.destroy
        head :no_content
      end
  
    private
  
  
    def cohort_params
      params.permit(:year, :user_id)
    end
end


