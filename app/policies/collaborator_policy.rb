class CollaboratorPolicy < ApplicationPolicy
    def new?
        @current_user.admin? || @current_user.premium?
    end
end