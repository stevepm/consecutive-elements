class Camp
  def initialize
  end

  def schedule(schedule)
    output = []
    schedule.each_with_index do |activity, index|
      if index == 0
        output << [activity, 1]
      else
        if output.last[0] == activity
          output.last[1] = output.last[1] + 1
        else
          output << [activity, 1]
        end
      end
    end
    output
  end

  def validate_schedule(schedule)
    schedule = schedule(schedule)
    schedule.each_with_index do |activity, index|
      unless index == schedule.length
        if activity[1] == 1 || activity[1] >= 3
          return false
        end
      end
    end
    return true
  end
end
