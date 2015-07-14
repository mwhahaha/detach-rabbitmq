notice('MODULAR: detach-rabbitmq/deploy-hiera-deep-merge.pp')

# This must be configured before we try and do our overrides, or sadness will
# ensue.
package { 'ruby-deep-merge':
  ensure  => 'installed',
} ->

file_line { 'hiera.yaml':
  path => '/etc/hiera.yaml',
  line => ':merge_behavior: deeper',
}