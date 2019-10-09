echo "Bootstrapping dotfiles!"

# From https://gist.github.com/TheMengzor/968e5ea87e99d9c41782
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"


for DOTFILE in $DIR/../system/.{env,alias,function,tool};
do
  echo "Sourcing $DOTFILE";
  [ -f "$DOTFILE" ] && source "$DOTFILE" && echo "Commands in $DOTFILE were executed successfully!";
done;

unset DIR;
unset SOURCE;