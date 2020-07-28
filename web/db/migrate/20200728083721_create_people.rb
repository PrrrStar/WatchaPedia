class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string    :p_name
      t.string    :p_intro
      t.integer   :content_id
      t.timestamps
    end
  end
end
