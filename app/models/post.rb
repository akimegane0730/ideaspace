class Post < ApplicationRecord

  belongs_to :user
  has_many :images, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :player
  belongs_to_active_hash :place
  belongs_to_active_hash :opponent
end
