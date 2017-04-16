class Blog < ApplicationRecord

  scope :by_date, -> { order(created_at: :desc) }
end
