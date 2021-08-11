class Status < ApplicationRecord
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks
  validates :date, presence: true

  def total_hours_count
    tasks.sum(:hours)
  end
end
