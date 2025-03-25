#!/bin/bash

# Log all output to the output.log file
exec > >(tee output.log) 2>&1

export URL="https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/latest/oc-mirror.rhel9.tar.gz"
export TAR="oc-mirror.rhel9.tar.gz"
export RETVAL=1
export TRIES=1
export MAXTRIES=5
export VERSION="v1"

# Check to see if v1 or v2 are specified on the command line
# v1 is the default
[[ $# -eq 1 ]] && [[ $1 = v1 || $1 = v2 ]] && VERSION=$1 

function get_latest_oc_mirror {

# Check for previous tar file and move it if it exists
[[ -f $TAR ]] && mv $TAR ${TAR}.bak

# Check for wget and use it if found
which wget &>/dev/null
if [[ $? -eq 0 ]]; then
    wget $URL
    return 0
fi

# Check for curl and use it if found
which curl &>/dev/null
if [[ $? -eq 0 ]]; then
    curl --remote-name $URL
    return 0
fi
}

get_latest_oc_mirror

# untar oc-mirror and make it executable
tar --extract --file=$TAR
chmod +x oc-mirror
[[ ! -x oc-mirror ]] && echo "oc-mirror not found or not executable, can't continue" && exit 1

# remove the directory if it exists
[[ -d day2-mirror ]] && rm --recursive --force day2-mirror

# run oc-mirror v1 or v2
if [[ $VERSION = v1 ]]; then
    until [[ $RETVAL -eq 0 || $TRIES -gt $MAXTRIES ]]
    do
        ./oc-mirror --config=imageset-configs/day2-operators-v1.yaml file://day2-mirror --verbose 5
        RETVAL=$?
        ((TRIES++))
    done
elif [[ $VERSION = v2 ]]; then
    ./oc-mirror --config=imageset-configs/day2-operators-v2.yaml --loglevel debug --v2 file://day2-mirror
fi