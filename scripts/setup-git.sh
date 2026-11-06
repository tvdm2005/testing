#!/bin/sh
root=$(git rev-parse --show-toplevel)
git config core.hooksPath .githooks
git config commit.template "$root/.gitmessage"
git config commit.cleanup strip      # #-regels ook weg bij commit uit IDE
git config fetch.prune true          # verwijderde branches lokaal opruimen
git config pull.rebase true          # geen "Merge branch ..." bij pull
git config push.autoSetupRemote true
echo "Git is ingesteld voor dit project."
