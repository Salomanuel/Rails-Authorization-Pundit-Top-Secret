# frozen_string_literal: true

class DocumentsController < ApplicationController
  def index
    if signed_in?
      @documents = Document.all
    end
  end

  def show
    @document = Document.find(params[:id])
  end
end
