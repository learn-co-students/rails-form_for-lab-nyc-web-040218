class SchoolClassesController < ApplicationController
    def index
        @schoolclasses = SchoolClass.all
    end

    def new
        @schoolclass = SchoolClass.new
    end

    def create
        @schoolclass = SchoolClass.new(post_params(:title, :room_number))
        @schoolclass.save
		redirect_to school_class_path(@schoolclass)
    end

    def edit
        @schoolclass = find_class(params[:id])
    end

    def show
        @schoolclass = find_class(params[:id])
    end

    def update
        @schoolclass = find_class(params[:id])
        
        @schoolclass.update(post_params(:title, :room_number))
        redirect_to school_class_path(@schoolclass)
    end

    private
        def find_class(param)
            SchoolClass.find(param)
        end
        
        def post_params(*args)
			params.require(:school_class).permit(*args)
		end
end