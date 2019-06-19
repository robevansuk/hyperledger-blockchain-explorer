#!/usr/bin/env bash

# Note: this script assumes you've checked out the relevant binaries (under ~/fabric-samples/bin/)
# and that the branch you're running on is compatible with the version of the cryptogen you're using.
# The versions should match. If you're using v1.4.1 of cryptogen then you should checkout release-1.4

if [ ! -d ~/fabric-samples ]; then
    echo "Could not find ~/fabric-samples directory - downloading everything. Exiting."
    echo "try:" 
    echo "cd ~; curl -sSL https://raw.githubusercontent.com/hyperledger/fabric/master/scripts/bootstrap.sh | bash -s"
    exit 1
fi

if [ ! -d ~/blockchain-explorer ]; then
    echo "Could not find ~/blockchain-explorer directory. Exiting."
    echo "try:"
    echo "cd ~; curl -sSL https://raw.githubusercontent.com/hyperledger/fabric/master/scripts/bootstrap.sh | bash -s"
    exit 1
fi

echo "You should spin up the fabric-samples/first-netowrk example with:
echo "bash ~/fabric-samples/first-network/byfn.sh generate"
echo "~/fabric-samples/first-network/byfn.sh up" 

echo "Creating the database... you will need postgres server started for this:
echo "try:"
echo "pg_ctl -D /usr/local/var/postgres start""

set -x
cd ~/blockchain-explorer/app/persistence/fabric/postgreSQL/db/
bash createdb.sh
set +x

if [ $? -ne 0 ]; then
    exit 1
fi

cd ~/blockchain-explorer:

# restart the server
./stop.sh
./start.sh

