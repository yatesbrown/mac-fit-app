class Exercise < ApplicationRecord
  validates :difficulty, presence: true
  validates :video, presence: true
  has_many :active_relationships, class_name:  "MuscleGroupExercise",
                                  foreign_key: "exercise_id",
                                  dependent:   :destroy
  has_many :muscle_groups, through: :active_relationships, source: :muscle_group
  def add_muscle_groups(*args)
    args.each do |t|
      active_relationships.create(muscle_group_id: MuscleGroup.find_by_name(t).id)
    end
  end
  has_many :active_relationships_2, class_name:  "ExerciseEquipment",
                                  foreign_key: "exercise_id",
                                  dependent:   :destroy
  has_many :equipments, through: :active_relationships_2, source: :equipment
  def add_equipments(*args2)
    args2.each do |z|
      active_relationships_2.create(equipment_id: Equipment.find_by_name(z).id)
    end
  end
  has_many :passive_relationships_3, class_name:  "RoutineExercise",
                                  foreign_key: "muscle_group_id",
                                  dependent:   :destroy
  has_many :exercises, through: :passive_relationships, source: :exercise

end
