class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer   :content_id
      t.string    :c_author
      t.string    :c_content
      t.float     :c_rate
      t.integer   :c_like
      
      t.timestamps
    end
  end
end
