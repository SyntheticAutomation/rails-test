class Lists::TasksController < ApplicationController
  before_filter do
    @list = List.find(params[:list_id])
  end

  # GET /lists/tasks
  def index
    #sorting logic using query params
    tasks = @list.tasks.all
    if params[:sort]
      @tasks = @list.tasks.order('due_date ASC') if params[:sort] == 'ASC'
      @tasks = @list.tasks.order('due_date DESC') if params[:sort] == 'DESC'
    else
      @tasks = tasks
    end
  end

  # GET /lists/tasks/1
  def show
    @task = Task.find(params[:id])
  end

  # GET /lists/tasks/new
  def new
    @task = Task.new
  end

  # GET /lists/tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /lists/tasks
  def create
    @task = Task.new(task_params)
    @task.list = @list

    if @task.save
      redirect_to list_task_path(@list, @task), notice: 'Task was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /lists/tasks/1
  def update
    @task = Task.find(params[:id])

    if @task.update_attributes(task_params)
      redirect_to list_task_path(@list, @task), notice: 'Task was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /lists/tasks/1
  def destroy
    @task = Task.find(task_params[:id])
    @task.destroy

    redirect_to list_tasks_path(@list)
  end

  private

  def task_params
    params.require(:task).permit(:id, :name, :complete, :due_date, :list_id)
  end
end
