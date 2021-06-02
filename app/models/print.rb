class Print < ApplicationRecord
  belongs_to :user
  belongs_to :spool

  validates :settings, :file, :print_name, :description, presence: true

  def is_owner?(test_user)
    user.id == test_user.id
  end
end
