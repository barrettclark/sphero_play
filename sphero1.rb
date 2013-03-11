require 'sphero'

# Sphero.start "/dev/tty.Sphero-RRO-RN-SPP" do
#   roll 60, FORWARD
#   keep_going 3

#   roll 60, RIGHT
#   keep_going 3

#   roll 60, BACKWARD
#   keep_going 3

#   roll 60, LEFT
#   keep_going 3

#   stop
# end

Sphero.start "/dev/tty.Sphero-RRO-RN-SPP" do
  ping

  # Roll 0 degrees, speed 125
  roll(125, 0)

  # Turn 360 degrees, 30 degrees at a time
  0.step(360, 30) { |h|
    h = 0 if h == 360
    # Set the heading to h degrees
    heading = h
    keep_going 1
  }

  keep_going 1
  stop
end
