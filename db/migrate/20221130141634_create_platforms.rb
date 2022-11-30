class CreatePlatforms < ActiveRecord::Migration[6.1]
  def change
    create_table :platforms do |t|
      t.string :name
      t.integer :monthly_cost
      t.string :website

      t.timestamps
    end
  end
end
