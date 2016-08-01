class MuscleGroupExercise < ApplicationRecord
  belongs_to :exercise, class_name: "Exercise"
  belongs_to :muscle_group, class_name: "MuscleGroup"
  validates :exercise_id, presence: true
  validates :muscle_group_id, presence: true
end
