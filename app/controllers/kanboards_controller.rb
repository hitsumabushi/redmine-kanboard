class KanboardsController < ApplicationController
  unloadable
  before_filter :find_project, :authorize

  def show
  end

  def update
    kanboard = Kanboard.where(:project_id => @project.id).first || Kanboard.new(:project_id => @project.id)
    kanboard.url = params[:url]
    if kanboard.save
       flash[:notice] = l(:notice_update_success)
    else
       flash[:error] = l(:notice_update_fail)
    end
    redirect_to show_kanboards_path(@project)
  end

private
  def find_project
    @project = Project.find(params[:project_id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end 
end
