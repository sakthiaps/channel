class TvChannel < ApplicationRecord

  validates :name, presence: true
  has_many :tv_shows, dependent: :delete_all
end
