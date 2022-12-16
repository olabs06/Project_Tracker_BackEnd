class GroupsController < ApplicationController
    skip_before_action :authorize, only: :index
    def index
        groups = Group.all 
        render json: groups
    end

    def show
        group = Group.find_by(id: params[:id])
        render json: group
    end

    def create
        image = Cloudinary::Uploader.upload(params[:image_url], {
            upload_preset: "project-tracker",
          })

        add_group = Group.create!({:group_name => params[:group_name], :group_members => params[:group_members], :user_id => params[:user_id], :project_id => params[:project_id]})
        render json: add_group, status: :created
    end

    def update
        update_project = Group.find_by(id: params[:id])
        image = Cloudinary::Uploader.upload(params[:image_url], {
            upload_preset: "project-tracker",
          })
        update_group.update({:group_name => params[:group_name], :group_members => params[:group_members], :user_id => params[:user_id], :project_id => params[:project_id]})
        render json: update_group
    end

    def destroy
        group = Group.find(params[:id])
        group.destroy
        head :no_content
      end
  
    private
  
  
    def group_params
      params.permit(:group_name, :group_members, :user_id, :project_id)
    end
end