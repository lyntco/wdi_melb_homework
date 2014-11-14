class TasksController < ApplicationController

	def index
		@tasks = Task.order(:id)

		respond_to do |format|
			format.html {  } # Magic rendering call is happening here
			format.json { render :json => @tasks }
		end
	end

	def create
		#binding.pry
		@task = Task.new(task_params)

		# @task.description = params[:description] # Shortcut

		if @task.save
			render :json => @task
			# respond_to do |format|
			# 	# This allows support for javascript being enabled or disabled in the browser
			# 	format.html { redirect_to tasks_path }
			# 	format.json {}
			# end
		else
			render :json => @task
		end
	end

	def complete
		@task = Task.find(params[:id])
		@task.completed = true
		@task.save
		render :json => @task
	end

	def uncomplete
		@task = Task.find(params[:id])
		@task.completed = false
		@task.save
		render :json => @task
	end

	private

	def task_params
		params.require(:task).permit(:description)
	end

end