class Api::V1::ToDoController < ApplicationController


  def index
    @to_dos = ToDo.all

    render json: @to_dos
  end

  def create
    full_sanitizer = Rails::Html::FullSanitizer.new
    title = full_sanitizer.sanitize(to_do_params['title'])
    
    completed = to_do_params['completed']

    @to_do = ToDo.create(title: title, completed: completed)

    if @to_do.valid?
      render json: { newToDo: @to_do }
    else
      render json: { error: @to_do.errors.full_messages[0] }
    end

  end

  def update
    @to_do = ToDo.find(params[:id])
    @to_do.update(to_do_params)

    render json: { updatedToDo: @to_do}

  end

  def delete
    @to_do = ToDo.find(params[:id])
    @to_do.destroy
    @to_dos = ToDo.all

    render json: { toDos: @to_dos }
  end


  private

  def to_do_params
    params.require(:to_do).permit(:title, :completed)
  end

end
