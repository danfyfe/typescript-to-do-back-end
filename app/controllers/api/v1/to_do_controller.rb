class Api::V1::ToDoController < ApplicationController

  def index
    @to_dos = ToDo.all

    render json: @to_dos
  end

  def create
    @to_do = ToDo.create(to_do_params)
    render json: @to_do
  end


  private

  def to_do_params
    params.require(:to_do).permit(:title, :completed)
  end

end
