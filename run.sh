#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"
source .venv/bin/activate
export GZ_SIM_RESOURCE_PATH=$PWD/models:$PWD/fuel_models:$PWD/worlds
gz sim --render-engine ogre worlds/hospital.world
