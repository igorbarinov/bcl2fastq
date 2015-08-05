sudo dpkg -i bcl2fastq_1.8.4-2_amd64_cut.deb

curl -kL http://install.perlbrew.pl | bash
echo >> ~/.bash_profile "source ~/perl5/perlbrew/etc/bashrc"
source ~/perl5/perlbrew/etc/bashrc
perlbrew install perl-5.14.4
perlbrew switch perl-5.14.4
perlbrew install-cpanm
cpanm XML/Simple.pm

