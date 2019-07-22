class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :state_name
      t.date :date_visited
      t.string :highlight
      t.boolean :revisit

      t.timestamps
    end
  end
end
