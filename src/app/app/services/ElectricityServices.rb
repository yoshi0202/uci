require "ElectricityDTO"

class ElectricityServices
  def create_dto(cost)
    dto = ElectricityDTO.new
    dto.cost = cost

    return dto
  end
end