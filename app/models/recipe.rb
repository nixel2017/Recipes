class Recipe < ApplicationRecord
    has_many :steps
    validates :author, presence: true
    validates :name, presence: true
end
