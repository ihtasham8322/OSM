class ApplicationController < ActionController::API
    before_action :set_tenant

     private

    def set_tenant
      tenant = Tenant.find_by(subdomain: request.subdomain)

      Apartment::Tenant.switch!(tenant.subdomain) if tenant
    end
    
end
