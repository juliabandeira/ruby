class Post < ApplicationRecord
  validates :username, presence: true
  belongs_to :user, required: false # this allows a record to be created even if the author attribute doesn't exist
end
