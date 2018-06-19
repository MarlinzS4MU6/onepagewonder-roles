class Post < ApplicationRecord
  # Uploader
  require 'mini_magick'
  mount_uploader :image, ImageUploader
  # app/models/[model.rb]


     has_ancestry



  validates :title, :content, :image, :permalink, presence: true
  before_validation :generate_permalink

  def to_param
  "#{id}-#{permalink}"
  end

  def generate_permalink
    self.permalink ||= name.parameterize
  end
end
