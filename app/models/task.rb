class Task < ApplicationRecord
  belongs_to :list

  validates :name, presence: true

  scope :pending_first, -> { order(completed_at: :desc) }
 
  def completed?
    completed_at.present?
  end
end
