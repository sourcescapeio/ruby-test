class LiquidityCrons
  include RunConfig

  run_config RunConfig.new(
    job_name: 'partner-daily-funding',
    env_vars: self.config_env,
    cron: RunConfig::Cron.new(
      schedule: { hour: 12, minute: 0 }
    ),
    owning_team: Company::Team::Liquidity
  )

  run_config RunConfig.new(
    job_name: 'partner-daily-funding',
    env_vars: self.config_env,
    cron: RunConfig::Cron.new(
      schedule: { hour: 12, minute: 0 }
    ),
    owning_team: Company::Team::Liquidity
  )

end
