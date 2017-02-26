class TasksController < ApplicationController
	before_action :find_task, only: [:show, :edit, :update, :destroy]

	def index
		@task = Task.all("created_at DESC"
	end

	def show
	end

	def new
		@task = Task.new
	end

	def edit
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to_ root_path
		else
			render 'new'
		end
	end

	def update
	end

	def destroy
	end

	private
		def task_params
			params.require(:task).permit(:title, :text)
		end

		def find_task
			@task = Task.find(params[:id])
		end

end
