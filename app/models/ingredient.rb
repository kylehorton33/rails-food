class Ingredient < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :quantity, presence: true
    validates :expires_on, presence: true
end
