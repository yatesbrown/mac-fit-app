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
end
