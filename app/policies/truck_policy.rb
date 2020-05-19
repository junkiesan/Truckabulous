class TruckPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index
    @tucks = policy_scope(Truck).order(created_at: :desc)
  end

  def show?
    true  # Anyone can view a truck
  end

  def create?
    true # Anyone can create a truck
  end

  def update?
    record.user == current_user
    # - record: the truck passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == current_user # Only truck creator can destroy a truck
  end
end
