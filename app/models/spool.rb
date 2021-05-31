class Spool < ApplicationRecord
  belongs_to :user
  has_many :prints

  validates :rfid, :material, :manufacturer, :purchased, presence: true
end
