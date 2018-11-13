# frozen_string_literal: true

class DocumentsController < ApplicationController
  def index
    if signed_in?
      company = current_user.company
      @documents = Document.where(company: company)
    end
  end

  def show
    @document = Document.find(params[:id])
    authorize @document
  end
end
