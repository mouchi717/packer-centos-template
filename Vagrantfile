Vagrant.configure(2) do |config|
  # Box指定
  config.vm.box = "CentOS-7.2.1511-x86_64"
  config.vm.box_url = "vagrant-centos-7.2.1511-x86_64.box"
  # Boxの自動アップデート設定
  config.vm.box_check_update = false
  config.vbguest.auto_update = false
  # プライベートネットワーク接続の設定
  config.vm.network "private_network", ip: "192.168.33.10"
  # virtualbox設定
  config.vm.provider "virtualbox" do |vb|
    # Box名設定
    vb.name = "CentOS-7.2.1511-x86_64"
    # GUI表示設定
    vb.gui = false
    # メモリ、CPU設定
    vb.memory = 1024
    vb.cpus = 2
  end
end
