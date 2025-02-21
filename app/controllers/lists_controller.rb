class ListsController < ApplicationController
  respond_to :html, :json
  
  # GET /lists
  def index
    @lists = List.all
  end

  # GET /lists/1
  def show
    @list = List.find(params[:id])
  end
  
  # GET /lists/new
  def new
    @list = List.new
  end
  
  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id])
  end
  
  # POST /lists
  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /lists/1
  def update
    @list = List.find(params[:id])

    if @list.update_attributes(list_params)
      redirect_to @list, notice: 'List was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /lists/1
  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_url
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end
end
