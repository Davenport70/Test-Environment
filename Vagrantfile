Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder "It_Jobs_Watch_Data_Package-master", "/home/ubuntu/starter-code"
  #config.vm.provision 'shell', path:'./provision.sh'
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe "IT-data-job"
    chef.arguments = "--chef-license accept"
  end
end
