# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MuscleGroup.create(name: "shoulders")
MuscleGroup.create(name: "legs")
MuscleGroup.create(name: "arms")
MuscleGroup.create(name: "chest")
MuscleGroup.create(name: "core")
MuscleGroup.create(name: "warmup")
MuscleGroup.create(name: "back")
e1 = Exercise.create(name: 'Jumping Jacks', difficulty: 3, video: 'https://s3.amazonaws.com/exercisevideos1/warmup_jumping_jacks.m4v', reps: 30)
e2 = Exercise.create(name: 'Sumo Squats', difficulty: 3, video: 'https://s3.amazonaws.com/exercisevideos1/sumo_squat.m4v', reps: 15)
e3 = Exercise.create(name: 'Squat Shoulders Front Raise', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/squat_shoulders_front_raise.m4v', reps: 15)
e4 = Exercise.create(name: 'Arms Skull Crushers', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/skull_crusher_arms.m4v', reps: 30)
e5 = Exercise.create(name: 'Shoulders Reverse Grip Military Press', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/shoulders_reverse_grip_military_press.m4v', reps: 15)
e6 = Exercise.create(name: 'Shoulders Medicine Ball Front Raise', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/shoulder_medicine_ball_front_raise.m4v', reps: 15)
e7 = Exercise.create(name: 'Shoulders Front Raise and Lateral Raise', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/shoulder_frontraise_lateralraise.m4v', reps: 30)
e8 = Exercise.create(name: 'Plank', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/plank.m4v', reps: 30)
e9 = Exercise.create(name: 'Lunges Shoulders Military Press', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/lunges_shoulders_military_press.m4v', reps: 15)
e10 = Exercise.create(name: 'Side to Side Squats', difficulty: 3, video: 'https://s3.amazonaws.com/exercisevideos1/legs_side_to_side_squats.m4v', reps: 30)
e11 = Exercise.create(name: 'Shoulders Dumberll Swing or Kettlebell', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/legs_shoulders_dumbell_swing.m4v', reps: 15)
e12 = Exercise.create(name: 'Alternating Legs Squats', difficulty:1, video: 'https://s3.amazonaws.com/exercisevideos1/legs_alternating_squat.m4v', reps: 30)
e13 = Exercise.create(name: 'Air Squats', difficulty: 3, video: 'https://s3.amazonaws.com/exercisevideos1/legs_air_squat.m4v', reps: 15)
e14 = Exercise.create(name: 'Dead Lift', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/dead_lift.m4v', reps: 15)
e15 = Exercise.create(name: 'Crunches', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/crunches.m4v', reps: 30)
e16 = Exercise.create(name: 'Bicyle Abs', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/bicycle_abs.m4v', reps: 30)
e17 = Exercise.create(name: 'Bent Over Two Arm row', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/back_two_arm_bendover_row.m4v', reps: 15)
e18 = Exercise.create(name: 'Back Lunge with Shoulders Lateral Raise', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/back_lunge_shoulders_lateral_raise.m4v', reps: 30)
e19 = Exercise.create(name: 'Back Dumbell Reverse Fly', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/back_dumbell_reverse_fly.m4v', reps: 15)
e20 = Exercise.create(name: 'Standing Skull Crusher', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/arm_standing_skull_crusher.m4v', reps: 30)
e21 = Exercise.create(name: 'Squating Arm Curl', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/arm_squat_curl.m4v', reps: 30)
e22 = Exercise.create(name: 'Hammer Curls', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/arm_hammer_curl.m4v', reps: 15)
e23 = Exercise.create(name: 'Dumbell Kickbacks', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/arm_dumbell_kickback.m4v', reps: 30)
e24 = Exercise.create(name: 'Standing Bicep Curls', difficulty:1, video: 'https://s3.amazonaws.com/exercisevideos1/arm_bicep_curl.m4v', reps: 15)
e25 = Exercise.create(name: 'Alternating V-Up Abs', difficulty:1, video: 'https://s3.amazonaws.com/exercisevideos1/alternating_arms_legs_abs.m4v', reps: 30)
e26 = Exercise.create(name: 'V-Up Abs', difficulty:1, video: 'https://s3.amazonaws.com/exercisevideos1/abs_v_up_dumbell.m4v', reps: 15)
e27 = Exercise.create(name: 'Abs With Military Press', difficulty:1, video: 'https://s3.amazonaws.com/exercisevideos1/abs_shoulders_military_press.m4v', reps: 15)
e28 = Exercise.create(name: 'Arm Row Lunge Position', difficulty:1, video: 'https://s3.amazonaws.com/exercisevideos1/One_arm_Row_lunge_position.m4v', reps: 30)
Equipment.create(name: "dumbells")
Equipment.create(name: "medicine-ball")
Equipment.create(name: "none")

e1.add_muscle_groups("warmup")
e1.add_equipments("none")

e2.add_muscle_groups("legs")
e2.add_equipments("dumbells")

e3.add_muscle_groups("legs", "shoulders")
e3.add_equipments("dumbells")

e4.add_muscle_groups("arms")
e4.add_equipments("dumbells")

e5.add_muscle_groups("back", "shoulders")
e5.add_equipments("dumbells")

e6.add_muscle_groups("shoulders")
e6.add_equipments("medicine-ball")

e7.add_muscle_groups("shoulders")
e7.add_equipments("dumbells")

e8.add_muscle_groups("core")
e8.add_equipments("none")

e9.add_muscle_groups("legs", "shoulders")
e9.add_equipments("dumbells")

e10.add_muscle_groups("legs")
e10.add_equipments("none")

e11.add_muscle_groups("legs", "shoulders")
e11.add_equipments("dumbells")

e12.add_muscle_groups("legs")
e12.add_equipments("none")

e13.add_muscle_groups("legs", "warmup")
e13.add_equipments("none")

e14.add_muscle_groups("legs", "back")
e14.add_equipments("dumbells")

e15.add_muscle_groups("core")
e15.add_equipments("none")

e16.add_muscle_groups("core")
e16.add_equipments("none")

e17.add_muscle_groups("back", "arms")
e17.add_equipments("dumbells")

e18.add_muscle_groups("legs", "shoulders")
e18.add_equipments("dumbells")

e19.add_muscle_groups("back")
e19.add_equipments("dumbells")

e20.add_muscle_groups("arms")
e20.add_equipments("dumbells")

e21.add_muscle_groups("legs", "arms")
e21.add_equipments("dumbells")

e22.add_muscle_groups("arms")
e22.add_equipments("dumbells")

e23.add_muscle_groups("arms")
e23.add_equipments("dumbells")

e24.add_muscle_groups("arms")
e24.add_equipments("dumbells")

e25.add_muscle_groups("core")
e25.add_equipments("none")

e26.add_muscle_groups("core")
e26.add_equipments("none")

e27.add_muscle_groups("core", "shoulders")
e27.add_equipments("dumbells")

e28.add_muscle_groups("arms", "back")
e28.add_equipments("dumbells")

r1 = Routine.create(name: "legs and shoulders")
r2 = Routine.create(name: "legs and arms")
r3 = Routine.create(name: "chest and shoulders")
r4 = Routine.create(name: "chest and arms")
r5 = Routine.create(name: "back and shoulders")
r6 = Routine.create(name: "back and arms")

all_exercises = Exercise.all

legs_and_shoulder = []
all_exercises.each do |j|

    legs_and_shoulder << j unless j.muscle_groups.include?(MuscleGroup.find_by_name("arms")) || j.muscle_groups.include?(MuscleGroup.find_by_name("chest")) || j.muscle_groups.include?(MuscleGroup.find_by_name("back"))

end
r1.add_exercises(legs_and_shoulder)

legs_and_arms = []
all_exercises.each do |j|

  legs_and_arms << j unless j.muscle_groups.include?(MuscleGroup.find_by_name("shoulders")) || j.muscle_groups.include?(MuscleGroup.find_by_name("chest")) || j.muscle_groups.include?(MuscleGroup.find_by_name("back"))

end
r2.add_exercises(legs_and_arms)


chest_and_shoulders = []
all_exercises.each do |j|

  chest_and_shoulders << unless j.muscle_groups.include?(MuscleGroup.find_by_name("legs")) || j.muscle_groups.include?(MuscleGroup.find_by_name("arms")) || j.muscle_groups.include?(MuscleGroup.find_by_name("back"))

end
r3.add_exercises(chest_and_shoulders)

chest_and_arms = []
all_exercises.each do |j|

  chest_and_arms << unless j.muscle_groups.include?(MuscleGroup.find_by_name("legs")) || j.muscle_groups.include?(MuscleGroup.find_by_name("shoulders")) || j.muscle_groups.include?(MuscleGroup.find_by_name("back"))

end
r4.add_exercises(chest_and_arms)

back_and_shoulders = []
all_exercises.each do |j|

  back_and_shoulders << unless j.muscle_groups.include?(MuscleGroup.find_by_name("legs")) || j.muscle_groups.include?(MuscleGroup.find_by_name("arms")) || j.muscle_groups.include?(MuscleGroup.find_by_name("chest"))

end
r5.add_exercises(back_and_shoulders)

back_and_arms = []
all_exercises.each do |j|

  back_and_arms << unless j.muscle_groups.include?(MuscleGroup.find_by_name("legs")) || j.muscle_groups.include?(MuscleGroup.find_by_name("shoulders")) || j.muscle_groups.include?(MuscleGroup.find_by_name("chest"))

end
