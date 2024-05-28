class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to root
  end 
  
  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
