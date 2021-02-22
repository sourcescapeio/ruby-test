class IssuingCrons
  include RunConfig

  run_config RunConfig.new(
    job_name: 'issuing-job-1',
    env_vars: self.config_env,
    cron: RunConfig::Cron.new(
      schedule: { hour: 11, minute: 0 }
    ),
    owning_team: Company::Team::Issuing
  )

  run_config RunConfig.new(
    job_name: 'issuing-job-2',
    env_vars: self.config_env,
    cron: RunConfig::Cron.new(
      schedule: { hour: 6, minute: 30 }
    ),
    owning_team: Company::Team::Issuing
  )

end
