class Task < ApplicationRecord
  belongs_to :status
  validates :name, presence: true, length: { minimum: 10, maximum: 50 }
  validates :pr, presence: true, length: { minimum: 20, maximum: 100 }
  validates :hours, presence: true, numericality: { in: 0..8 }
end
