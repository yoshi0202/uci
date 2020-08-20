require "MobilePhoneDTO"

class MobilePhoneServices
  def create_dto(cost)
    dto = MobilePhoneDTO.new
    dto.cost = cost

    return dto
  end
end