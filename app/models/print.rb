class Print < ApplicationRecord
  belongs_to :user

  validates :settings, :file, :success, presence: true
end
