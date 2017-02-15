command_exists () {
    type "$1" &> /dev/null ;
}

if command_exists puppet ; then
  echo "Puppetagent already installed"
else
  wget https://apt.puppetlabs.com/puppetlabs-release-pc1-precise.deb && dpkg -i puppetlabs-release-pc1-precise.deb && apt update && apt-get install -y puppet-agent
fi
