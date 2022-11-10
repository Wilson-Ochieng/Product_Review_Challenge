class User < ActiveRecord::Base
     has_many :reviews
     has_many :products, through: :reviews

    def favorite_product
        self.reviews.order(:star_rating).last
    end

    def remove_reviews(product)
        self.review.where(product: product)
    end
end