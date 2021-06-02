class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :prints
  has_many :spools
  has_many :printers
  has_many :prusa_settings_printers

  validates :password_confirmation, presence: true, on: :create
end
