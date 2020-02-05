require 'spec_helper'

describe 'yum-remi-chef::remi-php74' do
  cached(:centos_6_remi_php74) do
    ChefSpec::SoloRunner.new(
      platform: 'centos',
      version: '6.9'
    ) do |node|
      node.override['yum']['remi-php74']['enabled'] = true
      node.override['yum']['remi-php74']['managed'] = true
      node.override['yum']['remi-php74-debuginfo']['enabled'] = true
      node.override['yum']['remi-php74-debuginfo']['managed'] = true
    end.converge(described_recipe)
  end

  it 'creates yum_repository[remi-safe]' do
    expect(centos_6_remi_php74).to create_yum_repository('remi-safe')
  end

  %w(
    remi-php74
    remi-php74-debuginfo
  ).each do |repo|
    it "creates yum_repository[#{repo}]" do
      expect(centos_6_remi_php74).to create_yum_repository(repo)
    end
  end
end
