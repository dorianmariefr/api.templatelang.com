class CodeController < ApplicationController
  def create
    render json: { result: Code.evaluate(params[:input].to_s, params[:context].to_s).to_s }
  rescue StandardError => e
    render json: { error: "#{e.class}: #{e.message}" }, status: :bad_request
  end
end
