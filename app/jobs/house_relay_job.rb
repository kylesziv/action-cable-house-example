class HouseRelayJob < ApplicationJob
  def perform(house)
    ActionCable.server.broadcast "houses",
      house: house
  end
end
