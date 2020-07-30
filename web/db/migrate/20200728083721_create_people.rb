class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.belongs_to  :model  #Content id
      t.string      :name   #이름
      t.string      :role   #역할
      t.string      :intro  #소개글  
      
      t.timestamps
    end
  end
end
