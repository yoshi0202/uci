require "WaterDTO"

class WaterServices
  def create_dto(cost)
    dto = WaterDTO.new
    dto.cost = cost

    return dto
  end
end