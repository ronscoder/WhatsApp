class CreateChattexts < ActiveRecord::Migration
  def change
    create_table :chattexts do |t|
      t.string :sender
      t.string :text
      t.datetime :datatime_static

      t.timestamps null: false
    end
  end
end
