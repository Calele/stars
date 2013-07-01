class Users < ActiveRecord::Base
  attr_accessible :admin, :login, :password
end
