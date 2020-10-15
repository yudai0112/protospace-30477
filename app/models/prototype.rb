class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  has_one :comment, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end
