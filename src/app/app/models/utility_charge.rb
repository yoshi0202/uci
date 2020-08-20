class UtilityCharge < ApplicationRecord
  has_one :water_supply
  has_one :gas_supply
  has_one :electricity_supply
  has_one :mobile_phone_supply
end
