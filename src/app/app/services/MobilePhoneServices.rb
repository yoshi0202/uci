require "MobilePhoneDTO"

class MobilePhoneServices
  def create_dto(id)
    dto = MobilePhoneDTO.new
    dto.cost = find(id).cost

    return dto
  end

  def find(id)
    return ElectricitySupply.find(id)
  end
end