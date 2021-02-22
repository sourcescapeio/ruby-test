class ConnectCrons
  include RunConfig

  run_config RunConfig.new(
    job_name: 'connect-job-1',
    env_vars: self.config_env,
    cron: RunConfig::Cron.new(
      schedule: { hour: 11, minute: 0 }
    ),
    owning_team: Company::Team::Connect
  )

  run_config RunConfig.new(
    job_name: 'connect-job-2',
    env_vars: self.config_env,
    cron: RunConfig::Cron.new(
      schedule: { hour: 1, minute: 30 }
    ),
    owning_team: Company::Team::Connect
  )

end
