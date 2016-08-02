class CreateExerciseEquipments < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_equipments do |t|
      t.integer :exercise_id
      t.integer :equipment_id

      t.timestamps
    end
    add_index :exercise_equipments, :exercise_id
    add_index :exercise_equipments, :equipment_id
    add_index :exercise_equipments, [:exercise_id, :equipment_id], unique: true
  end
end
