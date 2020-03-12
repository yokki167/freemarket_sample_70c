class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional: true
  has_many :images, dependent: :destroy
  # has_one :trade

  # accepts_nested_attributes_for :image
  # accepts_nested_attributes_for :trade
  # accepts_nested_attributes_for :category
  accepts_nested_attributes_for :images, allow_destroy: true

end
