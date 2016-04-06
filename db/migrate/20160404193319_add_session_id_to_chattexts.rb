class AddSessionIdToChattexts < ActiveRecord::Migration
  def change
    add_reference :chattexts, :sessions, index:true
  end
end
