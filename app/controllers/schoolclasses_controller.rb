class SchoolclassesController < ApplicationController
    def index
        @schoolclasses = Schoolclass.all
    end
    
    def new
    end

    def create
    end

    def show
    end

    def update
    end
end