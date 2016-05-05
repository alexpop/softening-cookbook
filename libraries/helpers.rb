# encoding: utf-8

# Do we skip this change?
# returns true or false based on node attributes
def skip?(name)
  raise "ERROR: node['softening']['all'] must be a true or false" unless [true, false].include? node['softening']['all']
  node['softening']['include'][name].nil? ? !node['softening']['all'] : !node['softening']['include'][name]
end
