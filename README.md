# hyperledger-blockchain-explorer

This project is purely a helper project for those like me who found the hyperledger/blockchain-explorer docs almost impossible to follow.

I've documented my own steps here: http://robevans.uk/?page_id=48

And the scripted steps are located in this repo if you're looking for a shortcut to getting started.

Essentially the steps are:

* Have a postgreSQL database server running and available
* have the network config available as a json config ready to plug in
* configure the network certificates/keys in the config files
* update the relevant configs in the blockchain-explorer project (explorerconfig.json and config.json under the `blockchain-explorer/app` dir)
* execute the `start.sh` script from the blockchain-explorer project to load the config into the database and start monitoring the blockchain you're running

Of course, there's possibly more to it than that as there are often problems that need resolving.


  
