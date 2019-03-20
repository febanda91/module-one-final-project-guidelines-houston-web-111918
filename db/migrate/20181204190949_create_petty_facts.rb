class CreatePettyFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :petty_facts do |t|
      t.string :petty_fact
      t.belongs_to :number
      
    end
  end
end
