class User < ActiveRecord::Base
  has_many :wikis, dependent: :destroy
  
  before_save {self.email = email.downcase if email.present? }
  before_save {self.role ||= :member}
  
  enum role: [:member, :admin, :premium]
  
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
