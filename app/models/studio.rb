class Studio < ApplicationRecord
 has_many :recording_sessions #adds methods to my model
          has_many :engineers, through: :recording_sessions
          has_many :artists, through: :recording_sessions

validates :name, presence: true, length: { minimum: 1 }
validates :name, uniqueness: true

validates :location, presence: true, length: { minimum: 1 }


end
