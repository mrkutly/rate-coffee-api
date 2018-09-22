class Coffee < ApplicationRecord
  has_many :reviews

  def update_average_rating
    positive = self.reviews.select { |el| el.rating == true }.count
    total = self.reviews.count
    self.average_rating = Math.round(positive / total) * 100
  end
end
