class Post < ApplicationRecord
validates :title, :content, :image, :permalink, presence: true
end
