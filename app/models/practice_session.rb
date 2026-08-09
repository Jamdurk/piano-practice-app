class PracticeSession < ApplicationRecord
    validates :name, presence: true
    validates :started_at, presence: true
    validates :duration_seconds, presence: true, numericality: { greater_than: 0 }
end
