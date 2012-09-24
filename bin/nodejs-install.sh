#!/usr/bin/env bash

################################################################################
# name: nodejs-install
# what: installs a NodeJS binary into $HOME/local/nodejs
# why : because life is short and installing NodeJS should be trivial
################################################################################

################################################################################
# "Be conservative in what you do; be liberal in which you accept from others."
################################################################################

set -e
set -o errexit
set -o errtrace
set -o nounset

################################################################################
# NOT RECOMMENDED TO MODIFY UNLESS YOU KNOW EXACTLY WHAT YOU ARE DOING!
################################################################################

# current version
declare _VERSION=0.0.1

# program name
declare PROGNAME=nodejs-install

# executable path
declare EXE_PATH=$(dirname $0)

# target directory
declare TARGETDIR=nodejs

################################################################################
# overridable
################################################################################

# dry run?
declare ISDRYRUN=${DRYRUN-}

# directory prefix
declare PREFIX=${DRYRUN-${HOME}/local/${TARGETDIR}}

################################################################################
# build target directories
################################################################################

echo "creating directory: ${PREFIX}"
echo ""
mkdir -p ${PREFIX}

# quit if directory doesn't exist
if [[ ! -d ${PREFIX} ]]; then
  echo "Sorry, but there was a problem creating directory '${PREFIX}'." >&2
  exit 1
fi

################################################################################
# TARGET_OS
################################################################################

if [ `uname` = 'Darwin' ]; then
  declare TARGET_OS=darwin
else
  declare TARGET_OS=linux
fi

echo "TARGET OS: ${TARGET_OS}"

################################################################################
# TARGET_ARCH
################################################################################

if [ `uname -m` = 'x86_64' ]; then
  declare TARGET_ARCH=x64
else
  declare TARGET_ARCH=x86
fi

echo "TARGET ARCH: ${TARGET_ARCH}"

################################################################################
# PLATFORM
################################################################################

declare PLATFORM="${TARGET_OS}-${TARGET_ARCH}"
echo "TARGET PLATFORM: ${PLATFORM}"

################################################################################
# SOURCE_FILE
################################################################################

declare SOURCE_FILE=$(curl -Ls http://nodejs.org/dist/latest/SHASUMS.txt | grep ${PLATFORM} | awk '{ print $NF }')
echo "SOURCE FILE: ${SOURCE_FILE}"

################################################################################
# LATEST_VERSION
################################################################################

declare LATEST_VERSION=$(echo ${SOURCE_FILE} | awk -Fv '{ print $2 }' | awk -F- '{ print $1 }')
echo "LATEST VERSION: ${LATEST_VERSION}"

################################################################################
# BIN_URL
################################################################################

declare BIN_URL="http://nodejs.org/dist/latest/${SOURCE_FILE}"
echo "BINARY URL: ${BIN_URL}"

################################################################################
# TARGET_PATH
################################################################################

declare TARGET_PATH=${PREFIX}/${LATEST_VERSION}
echo "TARGET PATH: ${TARGET_PATH}"

################################################################################
# download and install
################################################################################

if [[ -d ${TARGET_PATH} ]]; then
  echo ""
  echo "Sorry, but version '${LATEST_VERSION}' has already been installed to '${PREFIX}'." >&2
  exit 1
fi

mkdir -p ${TARGET_PATH}
curl -L -# ${BIN_URL} | tar xz --strip 1 -C ${TARGET_PATH}

