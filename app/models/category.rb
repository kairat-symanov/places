class Category < ApplicationRecord
  before_validation { name.capitalize! }
  validates :name, presence: true, length: { minimum: 3 }

  has_many :places, dependent: :destroy
end
