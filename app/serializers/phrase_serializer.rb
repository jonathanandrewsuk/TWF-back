class PhraseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :hash_token

  has_many :words
  
end
