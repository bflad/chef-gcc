# encoding: utf-8
apt_repository 'ubuntu-toolchain-r' do
  uri 'http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu'
  distribution node['lsb']['codename']
  components ['main']
  keyserver 'keyserver.ubuntu.com'
  key 'BA9EF27F'
end
