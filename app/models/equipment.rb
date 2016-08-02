class Equipment < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :passive_relationships_2, class_name:  "ExerciseEquipment",
                                  foreign_key: "equipment_id",
                                  dependent:   :destroy
  has_many :exercises, through: :passive_relationships, source: :exercise_id

end
