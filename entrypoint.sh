#!/usr/bin/env bash
set -euo pipefail

cd "${GITHUB_WORKSPACE}" || exit 1

BADGE_OPTIONS=()

if [ "${INPUT_BETA}" == "false" ]; then
  if [ "${INPUT_ALPHA}" == "true" ]; then
    BADGE_OPTIONS+=("--alpha")
  else
    BADGE_OPTIONS+=("--no_badge")
  fi
fi

if [ "${INPUT_DARK}" == "true" ]; then
  BADGE_OPTIONS+=("--dark")
fi
if [ "${INPUT_GRAYSCALE}" == "true" ]; then
  BADGE_OPTIONS+=("--grayscale")
fi
if [ "${INPUT_ALPHA_CHANNEL}" == "true" ]; then
  BADGE_OPTIONS+=("--alpha_channel")
fi

if [ -n "${INPUT_SHIELD}" ]; then
  BADGE_OPTIONS+=("--shield" "${INPUT_SHIELD}")
fi
if [ -n "${INPUT_SHIELD_GEOMETRY}" ]; then
  BADGE_OPTIONS+=("--shield_geometry" "${INPUT_SHIELD_GEOMETRY}")
fi
if [ -n "${INPUT_SHIELD_SCALE}" ]; then
  BADGE_OPTIONS+=("--shield_scale" "${INPUT_SHIELD_SCALE}")
fi
if [ "${INPUT_SHIELD_NO_RESIZE}" == "true" ]; then
  BADGE_OPTIONS+=("--shield_no_resize")
fi

if [ -n "${INPUT_GLOB}" ]; then
  BADGE_OPTIONS+=("--glob" "/${INPUT_GLOB#/}")
fi

badge "${BADGE_OPTIONS[@]}"
