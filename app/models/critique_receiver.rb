class CritiqueReceiver < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :full_name, :department
  # attr_accessible :title, :body

  has_many :criticisms

  def self.interested
    self.where(verified: true).order('full_name')
  end

  def name_with_email_and_department
    return email if full_name.blank?
    if self.department.blank?
      "#{self.full_name}(#{self.email})"
    else
      "#{self.full_name}-#{self.department}(#{self.email})"
    end
  end

  def get_full_name
    full_name || email
  end

end
