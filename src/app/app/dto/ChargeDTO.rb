require "./WaterDTO"
require "./ElectricityDto"
require "./MobilePhoneDTO"
require "./GasDTO"

class ChargeDTO
  attr_accessor :Water, :Electricity, :MobilePhone, :Gas
  attr_accessor :id

  def get_all_cost
    return 1
  end

end