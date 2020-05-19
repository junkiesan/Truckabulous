class TruckPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index
    @tucks = policy_scope(Truck).order(created_at: :desc)
  end

  def create?
    return true
  end

  def update?
    record.user == current_user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == current_user
  end
end
