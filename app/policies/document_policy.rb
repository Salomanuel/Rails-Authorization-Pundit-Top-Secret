# frozen_string_literal: true

class DocumentPolicy < ApplicationPolicy
  def show?
    user.company == record.company
  end
end
