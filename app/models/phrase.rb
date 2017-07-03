class Phrase < ApplicationRecord
  belongs_to :user
  has_many :words
  uniquify :hash_token
end
