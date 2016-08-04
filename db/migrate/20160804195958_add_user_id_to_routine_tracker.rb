class AddUserIdToRoutineTracker < ActiveRecord::Migration[5.0]
  def change
    add_reference :routine_trackers, :user, forgeign_key: true
  end
end
