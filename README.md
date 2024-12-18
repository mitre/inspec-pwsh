# Pwsh Resource Pack
This resource pack is meant for use with the train-pwsh transport for Inspec. Currently, there are 5 resources, each with different purposes. Below is a description for each of them.

# pwsh_exchange_executor Resource
This resource maintains a connection to a Train session enables the user to run commands that pertain to Microsoft Exchange. This session has the Microsoft ExchangeOnlineManagement module both imported and installed. 

- The Exchange connection can be accessed using the ```run_script_in_exchange``` function

# pwsh_graph_executor Resource
This resource maintains a connection to a Train session enables the user to run commands that pertain to Microsoft Graph. This session has the Microsoft Graph module both imported and installed. 

- The Graph connection can be accessed using the ```run_script_in_graph``` function

# pwsh_teams_executor Resource
This resource maintains a connection to a Train session enables the user to run commands that pertain to Microsoft Teams. This session has the Microsoft Teams module both imported and installed. 

- The Teams connection can be accessed using the ```run_script_in_teams``` function

# pwsh_pnp_executor Resource
This resource maintains a connection to a Train session enables the user to run commands that pertain to Microsoft SharePoint (PnP). This session has the Microsoft PnP module both imported and installed. 

- The PnP connection can be accessed using the ```run_script_in_pnp``` function

# pwsh_singe_session_executor Resource
This resource manages two distinct sessions with Train. One session connects to Microsoft Graph and Exchange, while the other connects to Microsoft Teams and PnP. The reason for separating these modules into two different connections instead of placing them into one is that some of their dependencies conflict with each other. As a result, combining these modules would break functionality of Train.

- The Graph/Exchange connection can be accessed using the ```run_script_in_graph_exchange``` function
- The Teams/PnP connection can be accessed using the ```run_script_in_teams_pnp``` function