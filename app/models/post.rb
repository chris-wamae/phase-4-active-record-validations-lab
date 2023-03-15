class Post < ApplicationRecord
    validates :title ,presence: true
    validates :content, length:{minimum:250}
    validates :summary, length:{maximum:250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :validate_title

    def validate_title
        if title == "True Facts"
            errors.add(:title, "Invalid title")
        else
        end
    end 


end
