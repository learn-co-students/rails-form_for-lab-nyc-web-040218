class SchoolclassesController < ApplicationController
    def index
        @schoolclasses = SchoolClass.all
    end

    def new
    end

    def create
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
end