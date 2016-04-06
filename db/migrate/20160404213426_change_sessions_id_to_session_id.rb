class ChangeSessionsIdToSessionId < ActiveRecord::Migration
  def change
    remove_column :chattexts, :sessions_id
  end
end
