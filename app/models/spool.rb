class Spool < ApplicationRecord
  belongs_to :user

  validates :rfid, :material, :manufacturer, :purchased, presence: true
end
