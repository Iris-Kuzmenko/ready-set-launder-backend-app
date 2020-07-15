class Item < ApplicationRecord
  validates :name, length: { minimum: 5 }

  validates :wash_setting_id, presence: true

  validates :dry_setting_id, presence: true

  validates :category_id, presence: true

  belongs_to :wash_setting

  belongs_to :dry_setting

  belongs_to :user

  belongs_to :category
end
