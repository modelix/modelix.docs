#!/bin/bash
# Watch for modifications and rebuild the dev docs automatically.
# Depends on inotify-tools

antora antora-playbook.yml

inotifywait -qmr -e modify --exclude '\.?#.*|build|.git' . \
  | while read -r event; do
      echo ""
      echo "$(date +'%F %T') $event"
      antora antora-playbook.yml
    done

