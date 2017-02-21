command_exists () {
    type "$1" &> /dev/null ;
}

if command_exists puppet ; then
  echo "Puppetagent already installed"
else
    wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb && dpkg -i puppetlabs-release-trusty.deb && apt update && apt-get install -y puppet
fi
