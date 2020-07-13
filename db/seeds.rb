# DrySetting.create!([
#   { setting: "normal tumble dry low" },
#   { setting: "normal tumble dry medium" },
#   { setting: "normal tumble dry high" },
#   { setting: "delicate tumble dry low" },
#   { setting: "delicate tumble dry medium" },
#   { setting: "delicate tumble dry high" },
#   { setting: "permanent press tumble dry low" },
#   { setting: "permanent press tumble dry medium" },
#   { setting: "permanent press tumble dry high" },
#   { setting: "no heat tumble dry" },
#   { setting: "drip dry" },
#   { setting: "line dry" },
#   { setting: "hang dry" },
#   { setting: "dry in shade" },
# ])
# WashSetting.create!([
#   { setting: "tumble dry low, normal" },
#   { setting: "normal cold wash" },
#   { setting: "normal warm wash" },
#   { setting: "normal hot wash" },
#   { setting: "delicate cold wash" },
#   { setting: "delicate warm wash" },
#   { setting: "delicate hot wash" },
#   { setting: "permanent press cold wash" },
#   { setting: "permanent press warm wash" },
#   { setting: "permanent press hot wash" },
#   { setting: "hand wash only" },
# ])

# Category.create!([
#   { name: "tops" },
#   { name: "bottoms" },
#   { name: "dresses" },
#   { name: "sleepwear" },
#   { name: "undergarments" },
#   { name: "outerwear" },
#   { name: "other" },
# ])

# User.create!([
#   { username: "Chana", email: "chana@gmail.com", password: "password", password_confirmation: "password", admin: "false" },
# ])

Item.create!([
  { name: "red T-shirt", wash_setting_id: 1, dry_setting_id: 1, category_id: 1, user_id: 2 },
  { name: "blue long-sleeved tee", wash_setting_id: 2, dry_setting_id: 1, category_id: 1, user_id: 2 },
  { name: "underwear", wash_setting_id: 4, dry_setting_id: 10, category_id: 5, user_id: 2 },
])
