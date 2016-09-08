class SentencesController < ApplicationController

  def new
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new
    @random_s = Random.rand(1...75)
  end

  def create
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new(sentence_params)
    if @sentence.save
      redirect_to story_path(@sentence.story)
    else
      render :new
    end
  end

  def edit
    @story = Story.find(params[:story_id])
    @sentence = Sentence.find(params[:id])
    @random_s = @sentence.icon
  end

  def update
    @story = Story.find(params[:story_id])
    @sentence = Sentence.find(params[:id])
    if @sentence.update(sentence_params)
      redirect_to story_path(@sentence.story)
    else
      render :edit
    end
  end

  def destroy
    @sentence = Sentence.find(params[:id])
    @sentence.destroy
    redirect_to story_path(@sentence.story)
  end

private
  def sentence_params
    params.require(:sentence).permit(:user, :contribution, :icon)
  end

end
