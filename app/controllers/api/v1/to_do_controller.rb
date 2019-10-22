class Api::V1::ToDoController < ApplicationController

  def index
    @to_dos = ToDo.all

    render json: @to_dos
  end

  def create
    @to_do = ToDo.create(to_do_params)

    if @to_do.valid?
      render json: { newToDo: @to_do}
    else
      render json: { error: @to_do.errors.full_messages[0]}
    end
    
  end


  private

  def to_do_params
    params.require(:to_do).permit(:title, :completed)
  end

end
