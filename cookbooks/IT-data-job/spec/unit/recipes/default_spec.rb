#
# Cookbook:: IT-Job-Task
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'IT-data-job::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'should apt get update' do
      expect(chef_run).to update_apt_update 'update_sources'
    end

    it 'should install python3-pip' do
      expect(chef_run).to install_package 'python3-pip'
    end

    it 'should create a Downloads folder' do
      expect(chef_run).to create_directory '/home/ubuntu/Downloads'
    end
    
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
