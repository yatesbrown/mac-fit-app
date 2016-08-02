class ExerciseEquipment < ApplicationRecord
  belongs_to :exercise, class_name: "Exercise"
  belongs_to :equipment, class_name: "Equipment"
  validates :exercise_id, presence: true
  validates :equipment_id, presence: true
end
