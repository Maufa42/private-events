class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # name
  has_many :created_events, foreign_key: 'creator_id', class_name: "events"
  
  has_many :attend_events, foreign_key: 'attendee_id'
  has_many :attended_events, through: :attend_events
  # has_many :events














  has_one_attached :avatar
  after_commit :add_default_avatar, on: %i[create update]



    def avatar_thumbnail

      if avatar.attached?
        avatar.variant(resize: "150x150!").processed if avatar.attached?
      else
        "/default_profile.jpg"
      end
    end

    private
    def add_default_avatar
      unless avatar.attached? 
        avatar.attatch(
          io: File.open(
            Rails.root.join(
              'app','assets','images','default_profile.jpg' 
            )
          ),filename: 'default_profile.jpg',content_type: 'image/jpg'
        )
    end
  end
end
