class DealsController < ApplicationController
  def create
    @deal = Deal.new(params[:deal])
	@deal.save
	redirect_to [@deal.work.team, @deal.work]
  end

  def update
    @deal = Deal.find params[:id]
	@deal.update_attributes params[:deal]
	redirect_to [@deal.work.team, @deal.work]
  end

  def destroy
    @deal = Deal.find params[:id]
	@work = @deal.work
	@deal.destroy
	redirect_to [@work.team, @work]
  end
end
