class FunFactsController < ApplicationController
  before_action :set_fun_fact, only: [:show, :edit, :update, :destroy]

  # GET /fun_facts
  # GET /fun_facts.json
  def index
    @fun_facts = FunFact.all
  end

  # GET /fun_facts/1
  # GET /fun_facts/1.json
  def show
  end

  # GET /fun_facts/new
  def new
    @fun_fact = FunFact.new
  end

  # GET /fun_facts/1/edit
  def edit
  end

  # POST /fun_facts
  # POST /fun_facts.json
  def create
    @fun_fact = FunFact.new(fun_fact_params)

    respond_to do |format|
      if @fun_fact.save
        format.html { redirect_to @fun_fact, notice: 'Fun fact was successfully created.' }
        format.json { render :show, status: :created, location: @fun_fact }
      else
        format.html { render :new }
        format.json { render json: @fun_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fun_facts/1
  # PATCH/PUT /fun_facts/1.json
  def update
    respond_to do |format|
      if @fun_fact.update(fun_fact_params)
        format.html { redirect_to @fun_fact, notice: 'Fun fact was successfully updated.' }
        format.json { render :show, status: :ok, location: @fun_fact }
      else
        format.html { render :edit }
        format.json { render json: @fun_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fun_facts/1
  # DELETE /fun_facts/1.json
  def destroy
    @fun_fact.destroy
    respond_to do |format|
      format.html { redirect_to fun_facts_url, notice: 'Fun fact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fun_fact
      @fun_fact = FunFact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fun_fact_params
      params.require(:fun_fact).permit(:content)
    end
end
