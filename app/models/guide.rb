class Guide < ApplicationRecord
    has_many :tasks
    validates :author, presence: true
    validates :name, presence: true
end
