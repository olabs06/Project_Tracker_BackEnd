class ProjectsController < ApplicationController
<<<<<<< HEAD
    skip_before_action :authorize, only: :index
=======
>>>>>>> 19428695860f9eb0fa0c028d9165245985978006
    def index
        projects = Project.all 
        render json: projects
    end

    def show
<<<<<<< HEAD
        project = Project.find_by(id: params[:id])
        render json: project
    end

    def create
        add_project = Project.create!(project_params)
        render json: add_project, status: :created
    end

    def update
        update_project = Project.find_by(id: params[:id])
        update_project.update(project_params)
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
=======
        project = Project.find(params[:id])
        render json: project
     end
    
>>>>>>> 19428695860f9eb0fa0c028d9165245985978006
end
