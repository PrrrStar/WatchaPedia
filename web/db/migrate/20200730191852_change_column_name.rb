class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :people, :p_name, :name
    rename_column :people, :p_intro, :intro
    
  end
end
