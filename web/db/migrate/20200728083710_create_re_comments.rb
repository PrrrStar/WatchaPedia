class CreateReComments < ActiveRecord::Migration[5.0]
  def change
    create_table :re_comments do |t|

      t.timestamps
    end
  end
end
