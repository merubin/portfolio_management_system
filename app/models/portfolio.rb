class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :project_portfolios
  has_many :projects, through: :project_portfolios
end
