class GroupsController < ApplicationController
    skip_before_action :authorize, only: :index
    def index
        groups = Group.all 
        render json: groups, status: :ok
    end

    def show
        group = Group.find_by(id: params[:id])
        render json: group, status: :ok
    end

    def create
        add_group = Group.create!(group_params)
        render json: add_group, status: :created
    end

    def update
        update_project = Group.find_by(id: params[:id])
        update_group.update(group_params)
        render json: update_group
    end

    def destroy
        group = Group.find(params[:id])
        group.destroy
        head :no_content
      end
  
    private
  
  
    def group_params
      params.permit(:group_name)
    end
end