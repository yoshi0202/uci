require "ElectricityDTO"

class ElectricityServices
  def create_dto(cost)
    dto = ElectricityDTO.new
    dto.cost = cost

    return dto
  end

  def create_supply(charge_id, cost)
    return 0 if charge_id.nil? or UtilityCharge.find_by_id(charge_id).electricity_supply.exists?(id: charge_id)
    ElectricitySupply.new(utility_charge_id: charge_id, cost: cost).save
  end
end