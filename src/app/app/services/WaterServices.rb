require "WaterDTO"

class WaterServices
  def create_dto(id)
    dto = WaterDTO.new
    dto.cost = find(id).cost

    return dto
  end

  def find(id)
    return ElectricitySupply.find(id)
  end
end