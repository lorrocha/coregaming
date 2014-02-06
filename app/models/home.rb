class Home < ActiveRecord::Base

  def self.hours
    {'Tuesday-Thursday'=> '1pm - 6pm',
      'Friday'=> '12pm - 7pm',
      'Saturday'=> '11am - 6pm',
      'Sunday'=> '12pm - 5pm'
    }
  end
end
