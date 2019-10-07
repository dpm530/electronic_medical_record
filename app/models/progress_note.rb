class ProgressNote < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :patient

   validates :user_id, :date, :time, :duration, :location, :participants, presence: true

end
