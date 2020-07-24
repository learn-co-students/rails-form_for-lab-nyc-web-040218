class StudentsController < ApplicationController
  
  def index
    @students = all_students
  end

  def show
    @student = find_student_id
    @students = all_students
  end

  def new
    @student = Student.new
    @students = all_students
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = find_student_id
    @students = all_students
  end

	def update
	  @student = find_student_id
	  @student.update(post_params(:first_name, :last_name))
	  redirect_to student_path(@student)
  end
  
  private

  def all_students
    Student.all
  end

  def find_student_id
    Student.find(params[:id])
  end

  def post_params(*args)
    params.require(:student).permit(*args)
  end

end
