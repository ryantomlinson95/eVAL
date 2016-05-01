class MembershipsController < ApplicationController
  before_action :set_membership, only: [:show, :edit, :update, :destroy]

  # GET /memberships
  # GET /memberships.json
  def index
    # URL redirection to home page if user is not signed in
    if !user_signed_in?
      redirect_to page_home_path
    end
    # URL redirection to home page if user signed in is not admin
    if user_signed_in? and !current_user.try(:admin?)
      redirect_to page_home_path
    end

    @memberships = Membership.all
  end

  # GET /memberships/1
  # GET /memberships/1.json
  def show
  end

  # GET /memberships/new
  def new
     # URL redirection to home page if user is not signed in
    if !user_signed_in?
      redirect_to page_home_path
    end

    @membership = Membership.new
  end

  # GET /memberships/1/edit
  def edit
  end

  # POST /memberships
  # POST /memberships.json
  def create
    # Create a new member
    @membership = Membership.new(membership_params)

    respond_to do |format|
      if @membership.save
        format.html { redirect_to @membership, notice: 'Membership was successfully created.' }
        format.json { render :show, status: :created, location: @membership }
      else
        format.html { render :new }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memberships/1
  # PATCH/PUT /memberships/1.json
  def update
    # Update a member
    respond_to do |format|
      if @membership.update(membership_params)
        format.html { redirect_to @membership, notice: 'Membership was successfully updated.' }
        format.json { render :show, status: :ok, location: @membership }
      else
        format.html { render :edit }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memberships/1
  # DELETE /memberships/1.json
  def destroy
    Eval.all.collect.each do |eval|
      if eval.user_id == @membership.user_id
        eval.destroy
      end
    end

    # Remove all Results for a selected group
    Result.all.collect.each do |result|
      if result.user_id == @membership.user_id
        result.destroy
      end
    end

    # Removed a member
    @membership.destroy
    respond_to do |format|
      format.html { redirect_to groups_path, notice: 'Membership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membership
      @membership = Membership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def membership_params
      params.require(:membership).permit(:user_id, :group_id)
    end
end
