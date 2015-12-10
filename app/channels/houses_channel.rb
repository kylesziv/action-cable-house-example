class HousesChannel < ApplicationCable::Channel
  def follow
    stream_from "houses"
  end

  def unfollow
    stop_all_streams
  end
end
