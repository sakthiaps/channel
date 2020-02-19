class TvShow < ApplicationRecord

  validates :name, :timing, presence: true
  belongs_to :tv_channel
end
