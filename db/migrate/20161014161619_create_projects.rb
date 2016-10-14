class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :header1
      t.string :header2
      t.string :description
      t.string :screen_img_url
      t.string :host_url

      t.timestamps
    end
  end
end
