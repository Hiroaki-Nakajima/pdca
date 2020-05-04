class Card < ApplicationRecord
  belongs_to :month
  belongs_to :plan
  
  validates :title, presence: true
  validates :content, presence: true
end
