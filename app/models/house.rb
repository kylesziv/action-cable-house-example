class House < ActiveRecord::Base
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  after_commit { HouseRelayJob.perform_later(self) }

  validates :address, :zipcode, presence: true

  def full_street_address
    "#{address} #{zipcode}"
  end
end
