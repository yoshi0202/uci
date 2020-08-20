require "GasDTO"

class GasServices
  def create_dto(cost)
    dto = GasDTO.new
    dto.cost = cost

    return dto
  end
end