require 'serverspec'

set :backend, :exec

def kitchen_path
  kitchen = '/tmp/kitchen' if Dir.exist? '/tmp/kitchen'
  kitchen = '/opt/kitchen' if Dir.exist? '/opt/kitchen'
  kitchen
end
