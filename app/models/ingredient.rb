class Ingredient < ApplicationRecord
    validates :name, presence: true,
        uniqueness: true, length: { maximum: 40 },
        format: { with: /^[A-Z\s]+$/, :multiline => true }
    validates :quantity, presence: true
    validates :expires_on, presence: true

    def name=(s)
        write_attribute(:name, s.upcase)
    end
end
