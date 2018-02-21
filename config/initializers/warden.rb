Rails.application.config.middleware.use Warden::Manager do |manager|
  manager.default_strategies :admin
  manager.failure_app = lambda { |env|
    failure_action = env["warden.options"][:action].to_sym
    SessionsController.action(failure_action ? failure_action : :sign_in).call(env)
  }
end

Warden::Manager.serialize_into_session do |account|
  account.id
end

Warden::Manager.serialize_from_session do |id|
  Account.find(id)
end



Warden::Strategies.add(:admin) do
  def valid?
    params['login'].present? && params['password'].present?
  end

  def authenticate!
    account = Account.find_by(login: params['login'])
    if account && account.authenticate(params['password'])
      success! account
    else
      fail I18n.t('invalid_login_or_password')
    end
  end
end
