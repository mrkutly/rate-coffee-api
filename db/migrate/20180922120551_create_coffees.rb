class CreateCoffees < ActiveRecord::Migration[5.2]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :roaster
      t.string :roast_date
      t.string :origin
    end
  end
end
