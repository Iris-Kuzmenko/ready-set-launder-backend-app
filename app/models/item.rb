class Item < ApplicationRecord
  validates :name, uniqueness: true
  validates :wash_setting_id, presence: true

  validates :dry_setting_id, presence: true

  belongs_to :wash_setting

  belongs_to :dry_setting

  belongs_to :user

  belongs_to :category
end
