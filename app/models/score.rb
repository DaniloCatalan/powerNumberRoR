class Score < ApplicationRecord
    belongs_to :user
    validates :user_value, presence: true
    
end
