# encoding: utf-8
yum_repository 'devtools-1.1' do
  description 'testing 1.1 devtools for CentOS $releasever'
  baseurl 'http://people.centos.org/tru/devtools-1.1/$releasever/$basearch/RPMS'
  gpgcheck false
end
