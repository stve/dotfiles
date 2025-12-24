function cg -d "Change to go project directory"
  set github_user (git config --get github.user)
  cd $GOPATH/src/github.com/$github_user
end
