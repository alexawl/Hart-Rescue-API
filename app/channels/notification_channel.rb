class NotificationChannel < ApplicationCable::Channel
  def subscribed
    puts "SUBSCRIBED" * 100
    
    stream_from "notification_channel"
    # stream_for
  end

  def unsubscribed
    puts "UNSUBSCRIBED :(" * 10 
    # Any cleanup needed when channel is unsubscribed
  end
end
