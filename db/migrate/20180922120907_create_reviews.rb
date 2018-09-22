class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :coffee_id
      t.boolean :rating
    end
  end
end
