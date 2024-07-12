#!/bin/bash

# Fichier pour stocker l'ID du processus
PIDFILE="/tmp/wf-recorder.pid"

if [ -f "$PIDFILE" ]; then
    # Si le fichier PID existe, arrêter wf-recorder
    kill -INT $(cat "$PIDFILE")
    rm "$PIDFILE"
else
    # Si le fichier PID n'existe pas, démarrer wf-recorder
    GEOMETRY=$(slurp -d)
    if [ $? -eq 0 ]; then
        # Si slurp a réussi (code de sortie 0), démarrer wf-recorder
        wf-recorder -g "$GEOMETRY" -f ~/Videos/$(date +'%Y-%m-%d_%H-%M-%S').mp4 &
        echo $! > "$PIDFILE"
    else
        # Si slurp a échoué (code de sortie non nul), ne rien faire
        echo "Sélection annulée, wf-recorder ne sera pas démarré."
    fi
fi
