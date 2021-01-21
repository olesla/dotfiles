function git-hook-install --description 'Installs git hooks'
  set directory ~/templates/git-hooks

  if not test -e $directory
    echo "The directory ($directory) does not exist"
    return 1
  end

  if not test -e ./.git
    echo "This folder is not a git repository"
    return 1
  end

  if test -e $PWD/.git/hooks/pre-commit
    rm $PWD/.git/hooks/pre-commit
    echo 'Removed existing pre-commit file'
  end

  ln -s $directory/pre-commit $PWD/.git/hooks/pre-commit
  echo "Symlinked pre-commit file"
end
