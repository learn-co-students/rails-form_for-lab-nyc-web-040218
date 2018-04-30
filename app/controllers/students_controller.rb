class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    #Reminder: use strong paramaters
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = find_student(params)
  end

  def edit
    @student = find_student(params)
  end

  def update
    @student = find_student(params)
    @student.update(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def post_params(*args)
    params.require(:student).permit(*args)
  end

  def find_student(params)
    Student.find(params[:id])
  end
end
