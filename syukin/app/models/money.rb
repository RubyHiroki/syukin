class Money < ApplicationRecord
  validates :deposit, presence: true
end
