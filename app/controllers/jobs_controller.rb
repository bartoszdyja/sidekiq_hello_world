class JobsController < ApplicationController
  def new
  end

  def create
    complexity = params[:complexity]
    JobWorker.perform_async(complexity)
    redirect_to jobs_new_path
  end
end
