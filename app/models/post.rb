class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :clickbait

    def clickbait
        # click_titles = ["Won't Believe", "Secret", "Top", "Guess"]
        # unless title.include?(})
        errors.add(:title, "Title not clickbait-y enough") unless 
    title.present? && title.include?("Won't Believe" || "Secret" || "Top" || "Guess")        
    end
end
