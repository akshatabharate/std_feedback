class CreateFaculties < ActiveRecord::Migration[6.1]
  def change
    create_table :faculties do |t|
      t.string :Name
      t.string :subject
      t.integer :contact

      t.timestamps 
    end
  end
end
