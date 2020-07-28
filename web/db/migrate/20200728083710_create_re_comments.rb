class CreateReComments < ActiveRecord::Migration[5.0]
  def change
    create_table :re_comments do |t|
      t.integer   :c_id
      t.string    :re_author
      t.string    :re_content
      t.integer   :re_like
      
      t.timestamps
    end
  end
end
