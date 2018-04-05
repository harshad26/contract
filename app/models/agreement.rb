class Agreement < ActiveRecord::Base
	validates :object, :provider, :event_id, :start_date, :end_date, :amount, :status, presence: true
	has_attached_file :agreement_doc
  validates_attachment_content_type :agreement_doc, content_type: %w(application/pdf application/zip application/msword image/png image/jpeg image/jpg image/gif application/doc application/docx)
	EVENT = { "Wedding Roberto and Judite" => 1, "Seminars and Conferences" => 2 }	
end
