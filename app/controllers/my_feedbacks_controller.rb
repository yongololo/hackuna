class MyFeedbacksController < ApplicationController
  before_action :set_my_feedback, only: [:show, :edit, :update, :destroy]

  # GET /my_feedbacks
  # GET /my_feedbacks.json
  def index
    @my_feedbacks = MyFeedback.all
  end

  # GET /my_feedbacks/1
  # GET /my_feedbacks/1.json
  def show
  end

  # GET /my_feedbacks/new
  def new
    @my_feedback = MyFeedback.new
  end

  # GET /my_feedbacks/1/edit
  def edit
  end

  # POST /my_feedbacks
  # POST /my_feedbacks.json
  def create
    @my_feedback = current_user.my_feedbacks.build(my_feedback_params)

    respond_to do |format|
      if @my_feedback.save
        format.html { redirect_to :back, notice: 'My feedback was successfully created.' }
        format.json { render action: 'show', status: :created, location: @my_feedback }
      else
        format.html { render action: 'new' }
        format.json { render json: @my_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_feedbacks/1
  # PATCH/PUT /my_feedbacks/1.json
  def update
    respond_to do |format|
      if @my_feedback.update(my_feedback_params)
        format.html { redirect_to @my_feedback, notice: 'My feedback was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @my_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_feedbacks/1
  # DELETE /my_feedbacks/1.json
  def destroy
    @my_feedback.destroy
    respond_to do |format|
      format.html { redirect_to my_feedbacks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_feedback
      @my_feedback = MyFeedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_feedback_params
      params.require(:my_feedback).permit(:user_id, :course_id, :content)
    end
end
