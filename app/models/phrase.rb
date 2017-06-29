class Phrase < ApplicationRecord
  belongs_to :user
  uniquify :hash_token
end
