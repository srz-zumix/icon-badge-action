#!/usr/bin/env bash
set -euo pipefail

BADGE_OPTIONS=()

if [ "${INPUTS_BETA}" == "false" ]; then
  if [ "${INPUTS_ALPHA}" == "true" ]; then
    BADGE_OPTIONS+=("--alpha")
  else
    BADGE_OPTIONS+=("--no_badge")
  fi
fi

if [ "${INPUTS_DARK}" == "true" ]; then
  BADGE_OPTIONS+=("--dark")
fi
if [ "${INPUTS_GRAYSCALE}" == "true" ]; then
  BADGE_OPTIONS+=("--grayscale")
fi
if [ "${INPUTS_ALPHA_CHANNEL}" == "true" ]; then
  BADGE_OPTIONS+=("--alpha_channel")
fi

if [ -n "${INPUTS_SHIELD}" ]; then
  BADGE_OPTIONS+=("--shield" "${INPUTS_SHIELD}")
fi
if [ -n "${INPUTS_SHIELD_GEOMETRY}" ]; then
  BADGE_OPTIONS+=("--shield_geometry" "${INPUTS_SHIELD_GEOMETRY}")
fi
if [ -n "${INPUTS_SHIELD_SCALE}" ]; then
  BADGE_OPTIONS+=("--shield_scale" "${INPUTS_SHIELD_SCALE}")
fi
if [ "${INPUTS_SHIELD_NO_RESIZE}" == "true" ]; then
  BADGE_OPTIONS+=("--shield_no_resize")
fi

if [ -n "${INPUTS_GLOB}" ]; then
  BADGE_OPTIONS+=("--glob" "${INPUTS_GLOB}")
fi

badge "${BADGE_OPTIONS[@]}"
