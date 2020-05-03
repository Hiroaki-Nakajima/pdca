class Card < ApplicationRecord
  belongs_to :month
  
  validates :title, presence: true
  validates :content, presence: true
end
