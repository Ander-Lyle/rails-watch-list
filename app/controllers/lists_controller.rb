class ListsController < ApplicationController
  before_action :set_list, only: %i[show destroy]

  def index
    @lists = List.all
  end

  def show
    # @list = List.find(params[:id])
    # need the top line to clear the rspec, but not in show
    @bookmark = Bookmark.new
    @review = Review.new(list: @list)
  end

  def new
    @list = List.new
  end

  def destroy
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
