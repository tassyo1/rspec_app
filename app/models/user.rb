class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  def titulo_completo
    "Sr. #{self.name} - Email: #{self.email}"
  end
end
