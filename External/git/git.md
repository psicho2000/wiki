# Links
https://blog.gitbutler.com/
https://www.youtube.com/watch?v=aolI_Rz0ZqY (So You Think You Know Git - Part 1)
https://www.youtube.com/watch?v=Md44rcw13k4 (So You Think You Know Git - Part 2)
https://ohshitgit.com/
https://blog.sebastian-daschner.com/entries/git-commit-fixup-autosquash

# Commit Hooks

## Pre-Commit
https://github.com/pre-commit/pre-commit-hooks
brew install pre-commit

## Husky
https://github.com/typicode/husky

# Evaluate Features
## Fixup

```bash
$ on branch feat
git commit -a --fixup=<hash>
[git commit -a --fixup=<hash>]
[...]
git rebase --autosquash main
```

## Force wikth lease

```bash
git push --force-with-lease
```

## Maintenance

```bash
git maintenance start
```
