class User < ApplicationRecord
  validate :name, presence: true

  has_many :foods
  has_many :recipes
end
