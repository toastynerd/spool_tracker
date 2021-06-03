class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :prints
  has_many :spools
  has_many :printers
  #will attach to basic models and be populated from an ini file
  has_many :prusa_settings_printers
  has_many :prusa_settings_prints
  has_many :prusa_settings_filaments

  validates :password_confirmation, presence: true, on: :create
end
