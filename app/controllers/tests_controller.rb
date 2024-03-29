class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  # GET /tests
  def index
    @tests = Test.all
  end

  # GET /tests/1
  def show
  end

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to @test, notice: 'Test was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tests/1
  def update
    if @test.update(test_params)
      redirect_to @test, notice: 'Test was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tests/1
  def destroy
    @test.destroy
    redirect_to tests_url, notice: 'Test was successfully destroyed.'
  end

  def check
    @test = Test.find(params[:id])
    if @test.nil?
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_params
      params.fetch(:test, {})
    end
end
