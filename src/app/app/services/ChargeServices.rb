require "ChargeDTO"
require "WaterServices"
require "ElectricityServices"
require "GasServices"
require "MobilePhoneServices"

class ChargeServices
  def create_chargeDTO
    utility_charge = UtilityCharge.first
    charge_dto = ChargeDTO.new
    water_dto = WaterServices.new.create_dto(1000)
    electricity_dto = ElectricityServices.new.create_dto(1000)
    gas_dto = GasServices.new.create_dto(1000)
    mobile_phone_DTO = MobilePhoneServices.new.create_dto(1999)
    charge_dto.id = utility_charge.id

    charge_dto.water = water_dto
    charge_dto.electricity = electricity_dto
    charge_dto.mobile_phone = mobile_phone_DTO
    charge_dto.gas = gas_dto

    return charge_dto
  end
end