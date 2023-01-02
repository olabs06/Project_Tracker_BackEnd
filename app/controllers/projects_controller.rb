class ProjectsController < ApplicationController
  skip_before_action :authorize, only: :index
  def index
      projects = Project.all 
      render json: projects, status: :ok
  end

  def show
      project = Project.find_by(id: params[:id])
      render json: project, status: :ok
  end

  def create
      image = Cloudinary::Uploader.upload(params[:image_url], {
          upload_preset: "project-tracker",
        })

      add_project = Project.create!({:title => params[:title], :cohort => params[:cohort],:image_url => image['url'], :github_link => params[:github_link], :description => params[:description], :user_id => params[:user_id]})
      render json: add_project, status: :created
  end

  def update
      update_project = Project.find_by(id: params[:id])
      image = Cloudinary::Uploader.upload(params[:image_url], {
          upload_preset: "project-tracker",
        })
      update_project.update({:title => params[:title], :cohort => params[:cohort],:image_url => image['url'], :github_link => params[:github_link], :description => params[:description], :user_id => params[:user_id]})
      render json: update_project
  end

  def destroy
      project = Project.find(params[:id])
      project.destroy
      head :no_content
    end

  private


  def project_params
    params.permit(:title, :cohort, :image_url, :github_link, :description, :user_id)
  end
end
