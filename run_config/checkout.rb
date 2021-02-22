class CheckoutCrons
  include RunConfig

  run_config RunConfig.new(
    job_name: 'checkout-job-1',
    env_vars: self.config_env,
    cron: RunConfig::Cron.new(
      schedule: { hour: 10, minute: 0 }
    ),
    owning_team: Company::Team::Checkout
  )

  run_config RunConfig.new(
    job_name: 'checkout-job-2',
    env_vars: self.config_env,
    cron: RunConfig::Cron.new(
      schedule: { hour: 4, minute: 30 }
    ),
    owning_team: Company::Team::Checkout
  )

end
