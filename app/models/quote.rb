class Quote < ApplicationRecord
    belongs_to :kind
    validates :content, :author, presence: true
end
