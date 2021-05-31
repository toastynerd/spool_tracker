class Print < ApplicationRecord
  belongs_to :user
  belongs_to :spool

  validates :settings, :file, :success, presence: true
end
