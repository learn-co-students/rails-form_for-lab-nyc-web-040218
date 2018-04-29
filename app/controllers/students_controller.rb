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
end