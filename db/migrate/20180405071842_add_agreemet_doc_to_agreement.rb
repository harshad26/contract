class AddAgreemetDocToAgreement < ActiveRecord::Migration
  def change
  	add_attachment :agreements, :agreement_doc
  end
end
