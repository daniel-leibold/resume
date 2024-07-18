# this is the basic setup script for jsonresume and its cli
# print a start statement and install all related themes and cli
echo "start setup to reduce manual work"

# print current node version on console
# ensure node version is v20.x in case node is not installed exit with a warning
if [ -x "$(command -v node)" ]; then
  echo "node is installed $(node -v)"
else
  echo "node is not installed"
fi

# if resume-cli is not installed, install it
if [ -x "$(command -v resume)" ]; then
  echo "resume-cli is already installed"
else
  echo "installing resume-cli..."
  echo "resume-cli is not installed"
  sudo npm install -g resume-cli
fi

# install theme kendall, elegant, professional
THEMES=(kendall elegant professional)
for i in "${THEMES[@]}"
do
    # check if theme is already installed in node_modules folder
    if [ -d "node_modules/jsonresume-theme-$i" ]; then
        echo "theme $i is already installed"
        continue
    fi
    npm install -g jsonresume-theme-$i
    echo "installed theme $i"
done
echo "installed themes kendall, elegant, professional. try serving with 'resume serve --theme elegant'"