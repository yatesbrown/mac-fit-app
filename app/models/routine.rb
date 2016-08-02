class Routine < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :active_relationships_3, class_name:  "RoutineExercise",
                                  foreign_key: "routine_id",
                                  dependent:   :destroy
  has_many :exercises, through: :active_relationships_3, source: :exercise
  def add_exercises(*args)
    args.each do |f|
      f.each do |d|
        active_relationships_3.create(exercise_id: Exercise.find_by_name(d.name).id)
      end
    end
  end
end
