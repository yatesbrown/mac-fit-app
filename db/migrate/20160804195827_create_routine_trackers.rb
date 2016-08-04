class CreateRoutineTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :routine_trackers do |t|
      t.string :routine_type

      t.timestamps
    end
  end
end
