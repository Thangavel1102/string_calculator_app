class CalculatorController < ApplicationController
  def index
  end

  def calculate
    input = params[:numbers]
    result = StringCalculatorService.add(input)
    flash[:success] = "Result: #{result}"
    redirect_to root_path(input: params[:numbers])
  rescue => e
    flash[:error] = "Error: #{e.message}"
    redirect_to root_path
  end
end
