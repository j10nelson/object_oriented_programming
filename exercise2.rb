 class Cat
 attr_accessor :name, :preferred_food, :meal_time
  def initialize(name, preferred_food, meal_time)
  @name = name
  @preferred_food = preferred_food
  @meal_time = meal_time
  end

 def eats_at

  if @meal_time > 12
  period = "pm"
  hour = @meal_time - 12
    else
    period = "am"
    hour = @meal_time
  end
  return "#{hour} #{period}"
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end
end
