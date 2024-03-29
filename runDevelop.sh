#!/bin/bash
# Watch for modifications and rebuild the dev docs automatically.
# Depends on inotify-tools

antora antora-playbook-develop.yml

if [ $# -eq 0 ];then
    inotifywait -qmr -e modify --exclude '\.?#.*|build|.git|.ideaconfig|.idea|.*~|runDevelop.sh' . \
        | while read -r event; do
            echo ""
            echo "$(date +'%F %T') $event"
            rm -rf build
            antora --stacktrace antora-playbook-develop.yml
        done
else
    while true;do
        echo "Press any key to rebuild..."
        until read -s -n 1 -t 0.01; do
            sleep .5
        done

        echo ""
        echo "$(date +'%F %T') $event"
        rm -rf build
        antora --stacktrace antora-playbook-develop.yml
    done
fi
