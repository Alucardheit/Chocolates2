class User < ApplicationRecord
    validates :user, :password, presence: true;
    
    
end
