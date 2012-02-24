class MembersController < ApplicationController
  # GET /members
  # GET /members.json
  def index
    @team = Team.find params[:team_id]
    @members = @team.members

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @members }
    end
  end

  # GET /members/1
  # GET /members/1.json
  def show
    @member = Member.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @member }
    end
  end

  # GET /members/new
  # GET /members/new.json
  def new
    @member = Member.new
    @team = User.find params[:team_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @member }
    end
  end

  # GET /members/1/edit
  def edit
    @member = Member.find(params[:id])
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(params[:member])
	@member.user = current_user
	@member.nickname = current_user.name
	@team = @member.team

    respond_to do |format|
      if @member.save
        format.html { redirect_to team_member_path(@team, @member), notice: 'Member was successfully created.' }
        format.json { render json: @member, status: :created, location: @member }
		format.js
      else
        format.html { render action: "new" }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /members/1
  # PUT /members/1.json
  def update
    @member = Member.find(params[:id])
	@team = @member.team

    respond_to do |format|
      if @member.update_attributes(params[:member])
        format.html { redirect_to team_member_path(@team, @member), notice: 'Member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member = Member.find(params[:id])
	@team = @member.team
    @member.destroy

    respond_to do |format|
      format.html { redirect_to team_members_path(@team) }
      format.json { head :no_content }
	  format.js
    end
  end
end
