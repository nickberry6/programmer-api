class ProgramsController < ApplicationController
  def index
    programs = Program.all
    render json: programs, status: 200
  end

  def show
    program = Program.find(program_params[:id])
    render json: program, status: 200
  end

  def create
    program = Program.create(program_params[:program])
    render json: program, status: 201
  end

  def update
    program = Program.find(program_params[:id])
    program.update(program_params[:program].except(:id))
    render json: program, status: 201
  end

  def destroy
    program = Program.find(program_params[:id])
    program.destroy
    render 'Successfully deleted program.', status: 200
  end

  private

  def program_params
    params.permit(
    :id,
    :name,
    :start_date,
    :end_date,
    :program => [:name, :id, :goal, :keywords, :duration, :start_date, :end_date, tags: [:text]]
    )
  end
end
