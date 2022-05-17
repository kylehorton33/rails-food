class Ingredient < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { maximum: 40 }
    validates :quantity, presence: true
    validates :expires_on, presence: true
end
