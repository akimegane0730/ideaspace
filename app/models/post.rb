class Post < ApplicationRecord

  belongs_to :user
  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :player
  belongs_to_active_hash :place
  belongs_to_active_hash :opponent


end
