read -t 3000 -s -p "下面为您安装 homebrew （y/n）:" input
echo -e "\n"
if ! [[ "$input" == $'y' ]]; then
  exit 1
fi

# install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add to env
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ～/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"