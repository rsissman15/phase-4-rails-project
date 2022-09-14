class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :location
      t.string :experience_type
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
