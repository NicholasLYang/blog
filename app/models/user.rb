class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_secure_password

  def User.admin_new(user_params)
    user_params['is_admin'] = user_params['name'] == 'nicholas'
    new(user_params)
  end
end
