class MessageGroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_message_group, only: %i[ show edit update destroy ]

  # GET /message_groups or /message_groups.json
  def index
    @message_groups = MessageGroup.includes([:owner]).where(owner_id: current_user)
  end

  # GET /message_groups/1 or /message_groups/1.json
  def show
    
  end

  def conversation
    @message_group = MessageGroup.new(name: "Conversation", owner_id: current_user.id)
    UserConversation.create(message_group_id: @message_group, user_id: current_user.id)

    respond_to do |format|
      
      if @message_group.save
        format.html { redirect_to @message_group, notice: "Conversation created"}
        format.json { render :show, status: :created, location: @message_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @message_group.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_user_to_conversation
    UserConversation.create(user_id: params[:user], message_group_id: params[:message_group])
    
    respond_to do |format|
      format.html { redirect_to message_group_path(params[:message_group])}
    end
  end

  def remove_user_from_conversation
    relationship = UserConversation.where(user_id: params[:user], message_group_id: params[:message_group]).first
    relationship.destroy

    respond_to do |format|
      format.html { redirect_to message_group_path(params[:message_group])}
    end
  end

  # GET /message_groups/1/edit
  def edit
  end

  # PATCH/PUT /message_groups/1 or /message_groups/1.json
  def update
    respond_to do |format|
      if @message_group.update(message_group_params)
        format.html { redirect_to @message_group, notice: "Message group was successfully updated." }
        format.json { render :show, status: :ok, location: @message_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @message_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_groups/1 or /message_groups/1.json
  def destroy
    @message_group.destroy
    respond_to do |format|
      format.html { redirect_to message_groups_url, notice: "Message group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    @search = User.where('email LIKE ?', "%#{params[:search]}%")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_group
      @message_group = MessageGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_group_params
      params.require(:message_group).permit(:name, :owner_id, :participant_id)
    end

    # Only allow search on search param
    def search_params
      params.require(:search_form).permit(:search)
    end
end
