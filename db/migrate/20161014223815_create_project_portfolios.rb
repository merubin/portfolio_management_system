class CreateProjectPortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :project_portfolios do |t|
      t.references :project, foreign_key: true
      t.references :portfolio, foreign_key: true

      t.timestamps
    end
  end
end
