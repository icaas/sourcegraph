# TODO(slimsag): I have no clue why these errors occur. They also only appear to happen
# when running './enterprise/dev/start.sh' but NOT when running 'yarn run serve'. Maybe
# something with relative paths in parcel?

yarn run serve 2>&1 | grep -v 'Could not load existing sourcemap of'
