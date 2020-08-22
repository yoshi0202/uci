require "ElectricityDTO"

class ElectricityServices
  def create_dto(id)
    dto = ElectricityDTO.new
    dto.cost = find(id).cost

    return dto
  end

  def find(id)
    return ElectricitySupply.find(id)
  end

  def create_supply(charge_id, cost)
    return 0 if charge_id.nil? or UtilityCharge.find_by_id(charge_id).electricity_supply.exists?(id: charge_id)
    ElectricitySupply.new(utility_charge_id: charge_id, cost: cost).save
  end
end