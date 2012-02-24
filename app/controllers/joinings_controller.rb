class JoiningsController < ApplicationController
  # GET /joinings
  # GET /joinings.json
  def index
    if (!params[:user_id].nil?)
	  @user = User.find params[:user_id]
	  @joinings = @user.joinings
	elsif (!params[:team_id].nil?)
	  @team = Team.find params[:team_id]
	  @joinings = @team.joinings
	else
      @joinings = Joining.all
	end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @joinings }
    end
  end

  # GET /joinings/1
  # GET /joinings/1.json
  def show
    @joining = Joining.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @joining }
    end
  end

  # GET /joinings/new
  # GET /joinings/new.json
  def new
    @joining = Joining.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @joining }
    end
  end

  # GET /joinings/1/edit
  def edit
    @joining = Joining.find(params[:id])
  end

  # POST /joinings
  # POST /joinings.json
  def create
    @joining = Joining.new(params[:joining])
	@joining.user = current_user
	@joining.nickname = current_user.name
	@team = @joining.team

    respond_to do |format|
      if @joining.save
        format.html { redirect_to @joining, notice: 'Joining was successfully created.' }
        format.json { render json: @joining, status: :created, location: @joining }
		format.js
      else
        format.html { render action: "new" }
        format.json { render json: @joining.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /joinings/1
  # PUT /joinings/1.json
  def update
    @joining = Joining.find(params[:id])

    respond_to do |format|
      if @joining.update_attributes(params[:joining])
        format.html { redirect_to @joining, notice: 'Joining was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @joining.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joinings/1
  # DELETE /joinings/1.json
  def destroy
    @joining = Joining.find(params[:id])
	@team = @joining.team
    @joining.destroy

    respond_to do |format|
      format.html { redirect_to joinings_url }
      format.json { head :no_content }
	  format.js
    end
  end
end
