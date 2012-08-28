config :dynamo,
  # Compile modules as they are accessed.
  # This makes development easy as we don't
  # need to explicitly compile files.
  compile_on_demand: true,

  # Every time a module in app changes, we
  # will clean up defined modules and pick
  # up the latest versions.
  reload_modules: true
