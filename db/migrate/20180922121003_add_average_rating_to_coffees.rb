class AddAverageRatingToCoffees < ActiveRecord::Migration[5.2]
  def change
    add_column :coffees, :average_rating, :integer
  end
end
