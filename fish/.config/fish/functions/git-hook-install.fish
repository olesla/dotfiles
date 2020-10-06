function git-hook-install --wraps man --description 'Installs git hooks'
  # Check if .git folder exists
  # Check if .git/hooks/pre-commit exists. If it is, exit with a message
  # ln -s ~/templates/git-hooks/pre-commit ./.git/hooks/pre-commit
  # output a message saying that hook is installed

  set directory ~/templates/git-hooks/

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
