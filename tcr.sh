fswatch -0 $(git ls-files) --latency=1 | while read -d "" event
do
    npx elm-test && git commit -am 'TCR.' || git reset --hard
done
