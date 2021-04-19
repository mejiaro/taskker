class Task < ApplicationRecord
  belongs_to :list

  acts_as_list scope: [:list_id, completed_at: nil], top_of_list: 0

  validates :name, presence: true

  scope :pending_first, -> { order(completed_at: :desc) }
 
  def completed?
    completed_at.present?
  end
end
