class List < ApplicationRecord
  has_many :tasks, -> { pending_first.order(position: :asc) }, dependent: :destroy
end
