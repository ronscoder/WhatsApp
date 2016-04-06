class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.boolean :archive
      t.timestamps null: false
    end
  end
end
