class SentencesController < ApplicationController
  def index
    @sentences = Sentence.order(created_at: :desc).first(10)
  end

  def new
    @sentence = Sentence.new
  end

  def create
    @sentence = Sentence.new(sentence_params)
    if @sentence.save
      flash[:notice] = 'successfully created'
      redirect_to sentences_path
    else
      flash.now[:error] = @sentence.errors.full_messages.join(' ')
      render :new
    end
  end

  private

  def sentence_params
    params.require(:sentence).permit(:text)
  end
end
