class RoutineExercise < ApplicationRecord
  belongs_to :routine, class_name: "Routine"
  belongs_to :exercise, class_name: "Exercise"
  validates :routine_id, presence: true
  validates :exercise_id, presence: true
end
