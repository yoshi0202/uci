require "GasDTO"

class GasServices
  def create_dto(id)
    dto = GasDTO.new
    dto.cost = find(id).cost

    return dto
  end

  def find(id)
    return ElectricitySupply.find(id)
  end
end