class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_validation { name.capitalize! }
  validates :name, presence: true, length: { minimum: 3 }

  has_many :places, dependent: :destroy
end
