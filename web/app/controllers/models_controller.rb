class ModelsController < ApplicationController
  before_action :set_model, only: [:show, :edit, :update, :destroy]

  # GET /models
  # GET /models.json
  def index
    #랭크순으로 정렬
    
    @models = Model.all.order(:rank)
  end

  # GET /models/1
  # GET /models/1.json
  def show
    @comments = Comment.all.order('created_at desc')
    
    #댓글 카운트
    #@comments_count = current_user.comments.count
  end

  # GET /models/new
  def new
    @model = Model.new
  end

  # GET /models/1/edit
  def edit
  end

  # POST /models
  # POST /models.json
  def creates
    @comment  = Comment.new(user_id: current_user.id, c_content: params[:c_content])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Model was successfully created.' }
        format.json { render :show, status: :created, location: @model }
      else
        format.html { render :new }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /models/1
  # PATCH/PUT /models/1.json
  def update
    respond_to do |format|
      if @model.update(model_params)
        format.html { redirect_to @model, notice: 'Model was successfully updated.' }
        format.json { render :show, status: :ok, location: @model }
      else
        format.html { render :edit }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /models/1
  # DELETE /models/1.json
  def destroy
    @model.destroy
    respond_to do |format|
      format.html { redirect_to models_url, notice: 'Model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def comment
    Comment.create(model_id: params[:model_id], mgs: params[:comment])
    redirect_to :root
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model
      @model = Model.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def model_params
      params.require(:model).permit(:name, :published, :country, :rate, :booking_rate, :num_of_people, :rank, :genre, :running_time, :summary, :people)
    end
end
