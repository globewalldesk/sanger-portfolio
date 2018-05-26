class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name

  def first_name
    self.name.split.length > 1 ?
        self.name.split[0..-2].join(' ') :
        self.name
  end

  def last_name
    self.name.split.last
  end
end
