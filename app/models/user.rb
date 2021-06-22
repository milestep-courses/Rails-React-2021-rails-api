class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  before_create :on_create
  validates :age, presence: true

  def on_create
    self.nickname = self.nickname || 'DEFAULT' 
  end
end
