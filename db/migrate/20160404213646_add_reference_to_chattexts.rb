class AddReferenceToChattexts < ActiveRecord::Migration
  def change
    add_reference :chattexts, :session, index:true
  end
end
