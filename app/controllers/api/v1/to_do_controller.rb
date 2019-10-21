class Api::V1::ToDoController < ApplicationController

  def index
    @to_dos = ToDo.all

    render json: @to_dos
  end


end
