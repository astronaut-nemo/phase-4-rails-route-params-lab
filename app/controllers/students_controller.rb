class StudentsController < ApplicationController

  def index
    if params.key?(:name)
      students = Student.where("last_name LIKE ? OR first_name LIKE ?", params[:name], params[:name])
    elsif
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
