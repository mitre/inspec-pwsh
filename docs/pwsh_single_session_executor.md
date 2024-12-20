## pwsh_singe_session_executor Resource
This resource manages two distinct sessions with Train. One session connects to Microsoft Graph and Exchange, while the other connects to Microsoft Teams and PnP. The reason for separating these modules into two different connections instead of placing them into one is that some of their dependencies conflict with each other. As a result, combining these modules would break functionality of Train.

- The Graph/Exchange connection can be accessed using the ```run_script_in_graph_exchange``` function
- The Teams/PnP connection can be accessed using the ```run_script_in_teams_pnp``` function