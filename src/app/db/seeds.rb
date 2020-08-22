# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


for i in 1..12 do
  month = i.to_s.rjust(2, "0")
  util = UtilityCharge.create({
    created_at: "2020-" + month + "-01 00:00:00",
    updated_at: "2020-" + month + "-01 00:00:00",
  })
  ElectricitySupply.create({
    utility_charge_id: util.id,
    cost: 1000 * i,
    created_at: "2020-" + month + "-01 00:00:00",
    updated_at: "2020-" + month + "-01 00:00:00",
  })

  GasSupply.create({
    utility_charge_id: util.id,
    cost: 1000 * i,
    created_at: "2020-" + month + "-01 00:00:00",
    updated_at: "2020-" + month + "-01 00:00:00",
  })

  MobilePhoneSupply.create({
    utility_charge_id: util.id,
    cost: 1000 * i,
    created_at: "2020-" + month + "-01 00:00:00",
    updated_at: "2020-" + month + "-01 00:00:00",
  })

  WaterSupply.create({
    utility_charge_id: util.id,
    cost: 1000 * i,
    created_at: "2020-" + month + "-01 00:00:00",
    updated_at: "2020-" + month + "-01 00:00:00",
  })
end
