class SchoolClassesController < ApplicationController

  def index
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
    class_path
  end

  def edit
    class_path
  end

  def update
    class_path
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def class_path
    @school_class = SchoolClass.find(params[:id])
  end
end
