class Spool < ApplicationRecord
  belongs_to :user
  has_many :prints, dependent: :destroy

  validates :rfid, :material, :manufacturer, :purchased, presence: true

  def is_owner?(testuser)
    return user.id == testuser.id
  end
end
