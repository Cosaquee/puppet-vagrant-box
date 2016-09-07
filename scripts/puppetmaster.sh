command_exists () {
    type "$1" &> /dev/null ;
}

if command_exists puppet ; then
  echo "Puppetmaster already installed"
else
  wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb && dpkg -i puppetlabs-release-pc1-xenial.deb && apt update && apt-get install -y puppetserver
fi
