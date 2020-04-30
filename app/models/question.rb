class Question < ApplicationRecord
    has_many :answers
    
    def gravatar
        "http://www.gravatar.com/avator/#{Digest::MD5.hexdigest(email)}"
    end
end
