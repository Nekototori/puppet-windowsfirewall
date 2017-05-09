Puppet::Type.newtype(:windowsfirewall) do
  desc "Puppet type that models Windows Firewall rules"
  ensurable

  newparam(:name, :namevar => true) do
    newvalues(:domain, :public, :private)
    desc "Windows firewall zones - either 'domain', 'public', or 'private'"
  end

  newproperty(:default_inbound_action) do
    desc "Default inbound rules for the zone"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newproperty(:default_outbound_action) do
    desc "Default outbound rules for the zone"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:allow_inbound_rules) do
    desc "Allow inbound rules"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:allow_local_firewall_rules) do
    desc "Allow local firewall rules"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:allow_local_ipsec_rules) do
    desc "Allow local IPsec rules"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:allow_user_apps) do
    desc "Allow user apps"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:allow_user_ports) do
    desc "Allow user ports"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:allow_unicast_response_to_multicast) do
    desc "Allow unicast response to multicast"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:notify_on_listen) do
    desc "Notify on listen"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:enable_stealth_mode_for_ipsec) do
    desc "Enable stealth mode for IPsec"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:log_file_name) do
    desc "Log file name"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:log_max_size_kilobytes) do
    desc "Log max size - in kilobytes"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:log_allowed) do
    desc "Log allowed"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:log_blocked) do
    desc "Log blocked"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:log_ignored) do
    desc "Log ignored"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end

  newparam(:disabled_interface_aliases) do
    desc "Disabled interface aliases"
    munge do |value|
      value.downcase
    end
    def insync?(is)
      is.downcase == should.downcase
    end
  end
end
