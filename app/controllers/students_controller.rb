class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = find_student_id
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)

    redirect_to student_path(@student)
  end

  def edit
    @student = find_student_id
  end

  def update
    @student = find_student_id
    @student.update(student_params)

    redirect_to student_path(@student)
  end

  private

  def find_student_id
    Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
