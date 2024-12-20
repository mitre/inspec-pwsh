require "ruby-pwsh"

class PwshPnPExecutor < Inspec.resource(1)
  name 'pwsh_pnp_executor'
  def initialize(script)
    @script = script
  end
  
  def run_script_in_pnp()
    return_data = inspec.backend.run_command(@script, {teams_pnp_session: 2})
    return return_data
  end
end
