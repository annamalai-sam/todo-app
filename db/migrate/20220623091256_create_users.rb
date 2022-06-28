class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :todo_text
      t.date :due_date

      t.timestamps
    end
  end
end
