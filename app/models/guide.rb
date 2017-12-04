class Guide < ApplicationRecord
    has_many :tasks, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :author, presence: true
    validates :name, presence: true
end
