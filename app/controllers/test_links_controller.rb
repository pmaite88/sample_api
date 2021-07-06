class TestLinksController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_test_link, only: %i[ show update destroy ]

  # GET /test_links
  # GET /test_links.json
  def index
    @test_links = TestLink.all
  end

  # GET /test_links/1
  # GET /test_links/1.json
  def show
  end

  # POST /test_links
  # POST /test_links.json
  def create
    @test_link = TestLink.new(test_link_params)

    if @test_link.save
      render :show, status: :created, location: @test_link
    else
      render json: @test_link.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_links/1
  # PATCH/PUT /test_links/1.json
  def update
    if @test_link.update(test_link_params)
      render :show, status: :ok, location: @test_link
    else
      render json: @test_link.errors, status: :unprocessable_entity
    end
  end

  # DELETE /test_links/1
  # DELETE /test_links/1.json
  def destroy
    @test_link.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_link
      @test_link = TestLink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_link_params
      params.fetch(:test_link, {})
    end
end
