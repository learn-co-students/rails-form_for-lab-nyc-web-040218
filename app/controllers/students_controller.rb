class StudentsController < ApplicationController
    def index
        @students = Student.all
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
        @student = Student.find(params[:id])
    end

    def show
        @student = Student.find(params[:id])
    end

    def update
        @student = find_student(params[:id])

        @student.update(post_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private
        def find_student(param)
            Student.find(param)
        end

        def get_students
            @students = Student.all
        end
        
        def post_params(*args)
			params.require(:student).permit(*args)
		end
end