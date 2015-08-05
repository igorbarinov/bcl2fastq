sudo apt-get update

# kudos to http://seqanswers.com/forums/showpost.php?p=141026&postcount=29
sudo apt-get install -y build-essential
curl -kL http://install.perlbrew.pl | bash
echo >> ~/.bash_profile "source ~/perl5/perlbrew/etc/bashrc"
perlbrew install perl-5.14.4
perlbrew switch perl-5.14.4
perlbrew install-cpanm
sudo dpkg -i bcl2fastq_1.8.4-2_amd64.deb
source ~/perl5/perlbrew/etc/bashrc

# install libraries
sudo apt-get -y install wget
wget http://pkgs.fedoraproject.org/repo/pkgs/expat/expat-2.1.0.tar.gz/dd7dab7a5fea97d2a6a43f511449b7cd/expat-2.1.0.tar.gz
tar xzf expat-2.1.0.tar.gz
cd expat-2.1.0
./configure
make
sudo make install

cpanm XML/Simple.pm
