
class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 60 }
    validates :summary, length: { maximum: 50 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end

#   is invalid with too short content (FAILED - 2)
#   is invalid with a long summary (FAILED - 3)
#   is invalid with a category outside the choices (FAILED - 4)
#   is invalid if not clickbait (FAILED - 5)