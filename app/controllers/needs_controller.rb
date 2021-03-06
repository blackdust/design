class NeedsController < ApplicationController
  before_action :set_need, only: [:show, :edit, :update, :destroy]

  def create_answer
    @words=params[:answer][:words]
    @user_id=params[:answer][:user_id]
    @need_id=params[:answer][:need_id]
    # @answer= Answer.new
    @need=Need.find(@need_id)
    p 111111111111111111111111111111111
    p @need
    @answer=Answer.create(:user_id=>@user_id,:words=>@words,:need_id=>@need_id)
    p @answer
    redirect_to @need
     # if @answer.save     
     #    format.html { redirect_to @need, notice:'留言成功' }
     # end  
  end
  # GET /needs
  # GET /needs.json
  def index
    @needs = Need.all
    @i=session[:user_id]
  end

  # GET /needs/1
  # GET /needs/1.json
  def show
  end

  # GET /needs/new
  def new
    @need = Need.new
    @user=User.find(session[:user_id])
    @a=params[:url] 
    # @b= addurl @a 
    # @b ||= []
    # @b.push(@a)


  end
  def save_image_urls
    @a=params[:url] 
  end

  # GET /needs/1/edit
  def edit
  end

  # POST /needs
  # POST /needs.json
  def create
    @title=params[:need][:title]
    @description=params[:need][:description]
    @number=params[:need][:number]
    @solve=params[:need][:solve]
    @user_id=params[:need][:user_id]
    @image_urls=JSON.generate(params[:need][:image_urls])
    @tags=JSON.generate(params[:need][:tags])

    @need = Need.new(:title=>@title,:description=>@description,:number=>@number,:solve=>@solve,:user_id=>@user_id,:image_urls=>@image_urls,:tags=>@tags)

    respond_to do |format|

      if @need.save
        format.html { redirect_to @need, notice: '成功创建了需求' }
        format.json { render :show, status: :created, location: @need }
      else
        @tags=JSON.generate(params[:need][:tags])
        format.html { render :new }
        format.json { render json: @need.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /needs/1
  # PATCH/PUT /needs/1.json
  def update
    respond_to do |format|
      if @need.update(need_params)
        format.html { redirect_to @need, notice: 'Need was successfully updated.' }
        format.json { render :show, status: :ok, location: @need }
      else
        format.html { render :edit }
        format.json { render json: @need.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needs/1
  # DELETE /needs/1.json
  def destroy
    @need.destroy
    respond_to do |format|
      format.html { redirect_to needs_url, notice: 'Need was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_need
      @need = Need.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def need_params
    end
end
