function git-clone --argument-names repository folder
  if test -z $repository
    echo "This command requires a repository to clone"
    return 1
  end

  if test -z $folder
    echo "This command requires a folder name"
    return 1
  end

  git clone $repository $folder
  cd $folder
  git-hook-install
  npm install
  npm run lint
  code .
end
