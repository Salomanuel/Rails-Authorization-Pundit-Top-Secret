# frozen_string_literal: true

class DocumentPolicy < ApplicationPolicy
  def show?
    user.company == record.company
  end

  def edit?
    user.company == record.company
  end

  def update?
    user.company == record.company
  end
end
