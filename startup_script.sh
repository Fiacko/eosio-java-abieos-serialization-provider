#!/bin/sh

version=$(git describe --tags --abbrev=0)

# This script's purpose is for use with jitpack.io - a repository to publish snapshot automatically
# This script downloads the eosio native library in the jitpack environment
mkdir -p src/main/eosiojavaabieos/build/lib/main/debug/
mkdir -p src/main/build/lib/main/debug/
curl -L -o src/main/eosiojavaabieos/build/lib/main/debug/libeosiojavaabieos.so \
  https://github.com/Fiacko/eosio-java-abieos-serialization-provider/releases/download/$version/libeosiojavaabieos.so
cp src/main/eosiojavaabieos/build/lib/main/debug/libeosiojavaabieos.so \
  src/main/build/lib/main/debug/