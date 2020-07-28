class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string  :name
      t.date    :published
      t.string  :country
      t.float   :rate
      t.integer :booking_rate
      t.integer :num_of_people
      t.integer :rank
      t.string  :genre
      t.integer :running_time
      
      t.string  :summary
      t.string  :people
      
      t.timestamps
    end
  end
end
