class Flat < ApplicationRecord
  # actually use the geocoder gem
  geocoded_by :address
  # computer, run the geocode after the validation if we change the address
  after_validation :geocode, if: :will_save_change_to_address?
end
