class  SchoolClassesController < ApplicationController

  def show
    @school_class = SchoolClass.find(params[:id])
    #code
  end
  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    # byebug
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))

    redirect_to @school_class
  end


  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:title, :room_number))

    redirect_to @school_class
  end

end
