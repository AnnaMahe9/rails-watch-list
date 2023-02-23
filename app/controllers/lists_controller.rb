class ListsController < ApplicationController
  before_action :set_list, only: %i[ show edit update destroy ]
  def index
    @lists = List.all
  end

  def show
    @movie = Movie.new
  end

  def new
    @list = List.new
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def list_params
    params.require(:list).permit(:name)
  end
end
