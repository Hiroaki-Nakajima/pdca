class Plan < ApplicationRecord
  has_many :cards

  validates :content, presence: true
end
