class TerminationNote < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :patient

  validates :user_id, :date, :time, presence: true

end
