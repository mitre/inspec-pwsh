require "ruby-pwsh"

class PwshAzureExecutor < Inspec.resource(1)
  name 'pwsh_azure_executor'
  def initialize(script)
    @script = script
  end
  
  def run_script_in_azure()
    return_data = inspec.backend.run_command(@script, {azure_session: 3})
    return return_data
  end
end