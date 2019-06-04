class User < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :studios
  has_many :bookings, source: :booking
  has_many :reviews, as: :reviewable
  has_many :incoming_bookings, through: :studios, source: :bookings
  has_many :verifications
end
