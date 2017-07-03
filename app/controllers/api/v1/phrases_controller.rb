class Api::V1::PhrasesController < ApplicationController

  def index
    phrases = Phrase.all
    render json: phrases
  end

  def create
    phrase =  Phrase.create(user_id:params[:phrase][:user_id])
    words = params[:phrase][:words].map do |word_params|
      Word.create(text:word_params[:text],phrase_id:phrase.id,gif_id:word_params[:gif_id],text_theme:word_params[:text_theme],gif_theme:word_params[:gif_theme])
    end
    render json: phrase
  end

  def show
  phrase = Phrase.find_by(hash_token: params["id"])
  render json: phrase
  end



  private

    def phrase_params
      params.require(:phrase).permit(:user_id)
    end


end
