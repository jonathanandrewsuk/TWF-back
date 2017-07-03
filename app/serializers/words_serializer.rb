class WordsSerializer < ActiveModel::Serializer
  attributes :id, :text, :text_theme, :gif_theme, :gif_id

  belongs_to :phrase
end
