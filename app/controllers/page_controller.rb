class PageController < ApplicationController

  def workoutpage
    @ex_routine = Routine.find(1).exercises
    @videos = []
    @ex_routine.each do |v|
      @videos << v.video
    end
  end



end
