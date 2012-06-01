module Spree
  class Gateway::SagePay < Gateway
    preference :login, :string
    preference :password, :string
    preference :account, :string
    preference :simulate, :boolean
    
    attr_accessible :preferred_login, :preferred_password, :preferred_account, :preferred_simulate

    def provider_class
      ActiveMerchant::Billing::SagePayGateway
    end
    
    def options
      provider_class.simuluate = self.preferred_simulate
      super
    end
  end
end
