class Printer < ApplicationRecord
  belongs_to :user

  validates :name, :manufacturer, :model, presence: true
end
