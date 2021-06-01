class Print < ApplicationRecord
  belongs_to :user
  belongs_to :spool

  validates :settings, :file, :print_name, :description, presence: true
end
