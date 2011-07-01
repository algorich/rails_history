# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'rails_history/version'

Gem::Specification.new do |s|

  s.name        = 'rails_history'
  s.version     = RailsHistory::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Eduardo Hertz', 'Herond Robaina Salles',
                   'Hugo Maia Vieira', 'Rafael Carvalho',
                   'Rodrigo Manhães']
  s.email       = ['eduardo@algorich.com.br', 'hr.salles@algorich.com.br',
                   'hugo@algorich.com.br', 'rafael@algorich.com.br',
                   'rmanhaes@gmail.com']
  s.homepage    = ''
  s.summary     = %q{Keep the modification history for rails applications}
  s.description = %q{TODO}

  s.rubyforge_project = 'rails_history'

  s.files         = `git ls-files`.split('\n')
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')
  s.executables   = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency('rails','3.0.9')
  s.add_development_dependency("rspec-rails", '~> 2.5')
end

