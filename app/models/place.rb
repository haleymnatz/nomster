class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 4}, uniqueness: true
  validates :address, presence: true
  validates :description, presence: true
end
