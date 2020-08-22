require "ChargeDTO"
require "WaterServices"
require "ElectricityServices"
require "GasServices"
require "MobilePhoneServices"
require "CommonServices"

class ChargeServices
  def initialize(id = nil, src = nil, dest = nil)
    @charge_id = id
    @src = src.nil? ? (CommonServices.get_current_year() + "-01-01").in_time_zone : src.in_time_zone
    @dest = dest.nil? ? (CommonServices.get_current_year() + "-12-31").in_time_zone : dest.in_time_zone
  end

  def find_or_search()
    result = []

    if @charge_id.nil? # search
      uc_array = UtilityCharge.where(created_at: @src..@dest)
    else # find
      uc_array = UtilityCharge.where(id: @charge_id)
    end
    uc_array.each do |uc|
      charge_dto = ChargeDTO.new
      charge_dto.id = uc.id

      charge_dto.water = WaterServices.new.create_dto(charge_dto.id)
      charge_dto.electricity = ElectricityServices.new.create_dto(charge_dto.id)
      charge_dto.mobile_phone = MobilePhoneServices.new.create_dto(charge_dto.id)
      charge_dto.gas = GasServices.new.create_dto(charge_dto.id)
      result.append(charge_dto)
    end

    return result
  end
end