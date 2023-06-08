class User < ActiveRecord::Base
  has_many :water_supplies
  has_many :water_complaints
  has_many :electricity_complaints
end