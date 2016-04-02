# Vagrant Elixir/Phoenix/PostgreSQL Box

Based off project: https://github.com/jackdb/pg-app-dev-vm

* Ubuntu 15.10
* Elixir 1.2.4 (latest version)
* Phoenix 1.1.4 (latest version)
* PosgreSQL 9.5 (latest version 9.5.x)
* NodeJS 5.x (latest version 5.x)
* Git 2.8.0 (latest version)

This box is published in Atlas as 'lazygray/phoenix-postgres' and can be used simply by
adding `config.vm.box = 'lazygray/phoenix-postgres'` to your `Vagrantfile`.

## For Vagrant users on Windows
On Windows platforms with Vagrant version 1.8.0 and 1.8.1 there are issues
getting rsync to work.

Perhaps a newer version of Vagrant might resolve this issue on Windows.
- https://github.com/mitchellh/vagrant/issues/6702
- https://github.com/mitchellh/vagrant/issues/3230

If on Windows, and you are not able to get rsync to work, the following code
in the `Vagrantfile` can be commented out
```
config.vm.synced_folder(
 '.',
 '/vagrant',
 type: 'rsync',
 rsync__exclude: [
   '.git/',
   '.vagrant/',
   'log/*',
   'tmp/'
 ]
)
```

and replaced with the code below.

Use the following on Windows to 'resolve' the rsync issue above.
```
config.vm.synced_folder "..", "/vagrant_data"
```

Your file structure on windows will then be as follows:

```
project
|
└─── vagrant-phoenix-postgres-master
     │    .gitignore
     │    README.mde
     │    Vagrantfile
     |
     ├─── .vagrant
     |    |    ...
     ├─── config
          |
          ├─── vagrant
               |    build_dependency_setup.sh
               |    elixir_setup.sh
               |    git_setup.sh
               |    phoenix_setup.sh
               |    postgresql_setup.sh
```

The fixes in the issues above seem to relate the use of rsync in relation to
CygWin. I tried using cwRsync (https://www.itefix.net/cwrsync) on Windows, but was not able to get that rsync to work.
