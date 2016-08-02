class PageController < ApplicationController
  def homepage
    @warmups = MuscleGroup.find(6).exercises
    @two_warmups = @warmups.sample(2)
    
  end
end
