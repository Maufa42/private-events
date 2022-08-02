class Event < ApplicationRecord
# attribute: creator_id
    belongs_to :creator, class_name: 'user'
    
    has_many :attend_events
    has_many :attendees, through: :attend_events
    
end
