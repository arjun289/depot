class Product < ApplicationRecord
    validates :title, uniqueness: true
    validates :title, :image_url, :description, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :image_url, allow_blank: true, format: {
        with:  %r{\.(gif|jpg|png)\Z}i,
        message: 'must be a gif, jpg or png file'
    }
end
