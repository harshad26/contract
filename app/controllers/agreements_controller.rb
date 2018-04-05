class AgreementsController < ApplicationController
	before_action :set_agreement, only: [:show, :edit, :update, :destroy]

	def index
		@agreements = Agreement.all
	end

	# GET /agreements/new
	def new
		@agreement = Agreement.new
	end

	def edit
	end

	# POST /agreements
	def create
		@agreement = Agreement.new(agreement_params)
		respond_to do |format|
      if @agreement.save
        format.html { redirect_to @agreement, notice: 'Contract was successfully created.' }
      else
        format.html { render :new }
      end
    end
	end

	# GET /agreements/1
	def show
	end

	# PATCH/PUT /agreements/1
	def update
		if @agreement.update(agreement_params)
      redirect_to @agreement, notice: 'Contract was successfully updated.'
    else
      render :edit
    end
	end

	# DELETE /agreements/1
  def destroy
    @agreement.destroy
    redirect_to agreements_url, notice: 'Contract was successfully destroyed.'
  end

	private

		def set_agreement
			@agreement = Agreement.find(params[:id])
		end 

		def agreement_params
	    params.require(:agreement).permit(:provider, :event_id, :object, :start_date, :end_date, :description, :amount, :status, :agreement_doc)
	  end
end
