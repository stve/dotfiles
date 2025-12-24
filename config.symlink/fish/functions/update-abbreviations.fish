function update-abbreviations
  if type -q ruby
    echo "✓ Ruby (be, bi, rc, rd, rs)"
    abbr be 'bundle exec'
    abbr bi 'bundle install'

    abbr rc 'rails console'
    abbr rd 'rails destroy'
    abbr rg 'rails generate'
    abbr rs 'rails server'
  end

  abbr cl 'clear'
end

# alias cov='/usr/bin/open -a "/Applications/Google Chrome.app" coverage/index.html'
# alias dev='foreman start -f Procfile.development'
