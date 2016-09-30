class YogaClassesController < ApplicationController

  def index
    @yoga_class = YogaClass.all
  end

  def show
    @yoga_class = YogaClass.find(params[:id])
  end

  def new
    @yoga_class = YogaClass.new
  end


  def edit
    @yoga_class = YogaClass.find(params[:id])
  end

  def create
    @yoga_class = YogaClass.new(yoga_class_params)
      if
        @yoga_class.save
        redirect_to #TBD
      else
        render 'new'
      end
  end

  def update
    @yoga_class = YogaClass.find(params[:id])
    if          @yoga_class.update(yoga_class_params)
      redirect_to #TBD
    else
      render 'edit'
    end
  end

  def destroy
    @yoga_class = YogaClass.find(params[:id])
    @yoga_class.destroy

    redirect_to #TBD

  end












end
