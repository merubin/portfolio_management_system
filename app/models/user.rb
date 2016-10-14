class User < ApplicationRecord
  has_many :portfolios
  has_many :projects, through: :portfolios
end
