class User < ApplicationRecord

  validates :first_name, :last_name, presence: true

  has_many :favorites

  def favorite_show(show_id)
    self.favorites.pluck(:tv_show_id).include?(show_id)
  end
end
