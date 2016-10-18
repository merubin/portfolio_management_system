class Project < ApplicationRecord
  belongs_to :user
  has_many :project_portfolios,  dependent: :destroy
  has_many :portfolios, through: :project_portfolios

end
