class Post < ApplicationRecord

  belongs_to :user
  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  accepts_nested_attributes_for :comments, allow_destroy: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :player
  belongs_to_active_hash :place
  belongs_to_active_hash :opponent


end
