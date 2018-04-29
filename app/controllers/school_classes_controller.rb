class SchoolClassesController < ApplicationController
    def index
        @schoolclasses = SchoolClass.all
    end

    def new
        @schoolclass = SchoolClass.new
    end

    def create
    	@schoolclass = SchoolClass.create(post_params(:title, :room_number))
		redirect_to schoolclass_path(@schoolclass)
    end

    def edit
        @schoolclass = find_class(params[:id])
    end

    def show
        @schoolclass = find_class(params[:id])
    end

    def update
        @schoolclass = find_class(params[:id])
        # @schoolclass = Schoolclass.find(params[:id])
    end

    private
        def find_class(param)
            SchoolClass.find(param)
        end
        
        def post_params(*args)
			params.require(:schoolclass).permit(*args)
		end
end