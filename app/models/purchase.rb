class Purchase < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :contracts, dependent: :destroy
  # has_and_belongs_to_many :groups, optional: true

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
