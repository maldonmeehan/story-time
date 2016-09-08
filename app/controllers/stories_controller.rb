class StoriesController < ApplicationController
  def index
    @stories = Story.all
    render :index
  end

  def show
    @story = Story.find(params[:id])
    render :show
  end

  def new
    @story = Story.new
    render :new
  end

  def edit
    @story = Story.find(params[:id])
    render :edit
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to  stories_path
    else
      render :new
    end
  end

  def update
    @story= Story.find(params[:id])
    if @story.update(story_params)
      redirect_to stories_path
    else
      render :edit
    end
  end

  private
    def story_params
      params.require(:story).permit(:title, :image)
    end


end
