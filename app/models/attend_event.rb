class AttendEvent < ApplicationRecord
  # attribute: attendee_id, event_id

  belongs_to :attendee, class_name: 'user'
  belongs_to :event, class_name: 'event'
end
