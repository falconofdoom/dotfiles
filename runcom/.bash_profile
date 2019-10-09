echo "Bootstrapping dotfiles!"

for DOTFILE in ../system/.{env,alias,function};
do
  echo "Sourcing $DOTFILE";
  [ -f "$DOTFILE" ] && source "$DOTFILE" && echo "Commands in $DOTFILE were executed successfully!";
done;