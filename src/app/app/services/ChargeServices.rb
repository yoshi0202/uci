require "ChargeDTO"
require "WaterServices"
require "ElectricityServices"
require "GasServices"
require "MobilePhoneServices"

class ChargeServices
  def create_chargeDTO
    utility_charge = UtilityCharge.first
    charge_dto = ChargeDTO.new
    charge_dto.id = utility_charge.id

    charge_dto.water = WaterServices.new.create_dto(1000)
    charge_dto.electricity = ElectricityServices.new.create_dto(1000)
    charge_dto.mobile_phone = MobilePhoneServices.new.create_dto(1999)
    charge_dto.gas = GasServices.new.create_dto(1000)

    return charge_dto
  end
end