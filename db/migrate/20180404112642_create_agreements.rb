class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.string   :provider
      t.integer  :event_id 
      t.string   :object
      t.datetime :start_date
      t.datetime :end_date
      t.text     :description
      t.decimal  :amount
      t.string   :status
      t.timestamps null: false
    end
  end
end
