class CreateMuscleGroupExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :muscle_group_exercises do |t|
      t.integer :exercise_id
      t.integer :muscle_group_id

      t.timestamps
    end
    add_index :muscle_group_exercises, :exercise_id
    add_index :muscle_group_exercises, :muscle_group_id
    add_index :muscle_group_exercises, [:exercise_id, :muscle_group_id], unique: true
  end
end
