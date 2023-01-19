class TemplateController < ApplicationController
  def create
    render json: { result: Template.render(params[:input].to_s, params[:context].to_s) }
  rescue StandardError => e
    render json: { error: "#{e.class}: #{e.message}" }, status: :bad_request
  end
end
