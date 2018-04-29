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
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
		@student = find_student_id
  end

	def update
	  @student = find_student_id
	  @student.update(post_params(:first_name, :last_name))
	  redirect_to student_path(@student)
  end
  
  private

  def find_student_id
    Student.find(params[:id])
  end

  def post_params(*args)
    params.require(:student).permit(*args)
  end

end
