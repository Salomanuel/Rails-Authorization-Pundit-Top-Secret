# frozen_string_literal: true

class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update]
  def index
    if signed_in?
      company = current_user.company
      @documents = Document.where(company: company)
    end
  end

  def show; end

  def edit; end

  def update
    if @document.update(document_params)
      redirect_to @document
    else
      render :edit
    end
  end

  private

  def document_params
    params.require(:document).permit(:name, :content)
  end

  def set_document
    @document = Document.find(params[:id])
    authorize @document
  end
end
