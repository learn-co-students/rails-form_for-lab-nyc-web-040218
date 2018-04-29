class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def new
    end

    def edit
        @student = Student.find(params[:id])
    end

    def create
		@student = Student.create(post_params(:first_name, :last_name))
		#@student.save
		redirect_to student_path(@student)
    end

    def show
        @student = Student.find(params[:id])
    end

    def update
    end

    private
        def get_students
            @students = Student.all
        end
        
        def post_params(*args)
			params.require(:student).permit(*args)
		end
end