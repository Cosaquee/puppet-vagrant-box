command_exists () {
    type "$1" &> /dev/null ;
}

if command_exists puppet ; then
  echo "Puppetmaster already installed"
else
    apt install wget
    wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb && dpkg -i puppetlabs-release-trusty.deb && apt update && apt-get install -y puppetmaster
fi
