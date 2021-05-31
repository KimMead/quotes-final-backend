class Kind < ApplicationRecord
    has_many :quotes 
    validates :name
end
