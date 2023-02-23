class Post < ApplicationRecord
  scope :published, -> { where(published: true) }
  scope :featured, -> { where(featured: true) }

  validates :content, presence: true
  validates :published, inclusion: [true, false]
  validates :featured, inclusion: [true, false]
end
