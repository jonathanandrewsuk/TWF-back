class Api::V1::PhrasesController < ApplicationController

  def index
    phrases = Phrase.all
    render json: phrases
  end

  def create
    phrase = Phrase.create(phrase_params)
  end

  def show


  phrase = Phrase.find_by(params[:hash_token])
  render json: phrase

  end



  private

    def phrase_params
      params.require(:phrase).permit(:user_id, :gif_1, :term_1, :gif_2, :term_2,:gif_3, :term_3)
    end


end
