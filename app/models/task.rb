class Task < ApplicationRecord
  enum status: [:active, :completed]
  belongs_to :user
end
