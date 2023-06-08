class User < ActiveRecord::Base
  has_many :water_supply
  has_many :water_complaints
  has_many :electricity_complaints
end