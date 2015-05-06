sudo mkdir -p /usr/lib/jvm
cd /usr/local/cass_files
sudo tar zxvf jre-7u79-linux-x64.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jre1.7.0_79/bin/java" 1 
sudo update-alternatives --set java /usr/lib/jvm/jre1.7.0_79/bin/java
mkdir /home/vagrant/extract
tar xvzf /usr/local/cass_files/dsc-cassandra-2.0.14-bin.tar.gz -C /home/vagrant/extract
mv /home/vagrant/extract/dsc-cassandra-2.0.14 /home/vagrant/cassandra
tar xvzf /usr/local/cass_files/student-files.tar.gz -C /home/vagrant/extract
mv /home/vagrant/extract/student-files /home/vagrant/student-files
sudo mkdir -p /var/lib/cassandra
sudo chown -R vagrant:vagrant /var/lib/cassandra
sudo mkdir -p /var/log/cassandra
sudo chown -R vagrant:vagrant /var/log/cassandra
sudo chown -R vagrant:vagrant /home/vagrant
cp /usr/local/cass_files/cassandra.yaml /home/vagrant/cassandra/conf/
