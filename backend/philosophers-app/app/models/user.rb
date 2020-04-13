class User < ApplicationRecord 
    has_many :philosopher_lists 
    has_many :philosophers, through: :philosopher_lists
end
