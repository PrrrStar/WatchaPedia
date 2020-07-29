class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer   :model_id
      t.text      :c_content
      t.integer   :c_like
      
      t.timestamps
    end
  end
end
