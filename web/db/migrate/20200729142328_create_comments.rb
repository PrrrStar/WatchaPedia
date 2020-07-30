class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      
      t.belongs_to  :user
      t.belongs_to  :model
      t.text        :c_content
      t.integer     :c_like
      
      t.timestamps
    end
  end
end
