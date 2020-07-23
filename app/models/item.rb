class Item < ApplicationRecord
  validates :name, length: { minimum: 2 }

  belongs_to :wash_setting

  belongs_to :dry_setting

  belongs_to :user

  belongs_to :category
end
