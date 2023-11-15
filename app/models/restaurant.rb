class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: {
    in: %w[Chinese Italian Japanese French Belgian chinese italian japanese french belgian],
    message: 'Not a valid category'
  }
end
