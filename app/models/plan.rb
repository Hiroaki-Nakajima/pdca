class Plan < ApplicationRecord
  has_many :cards, dependent: :destroy

  validates :content, presence: true
end
