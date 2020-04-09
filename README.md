<h1 id="vactory-decoupled-project">
  Vactory Decoupled Project
  <img align="right" src="./logo.png" alt="Vactory logo" title="Vactory logo" width="100">
</h1>

This repository is used in order to create a Vactory Decoupled project using Composer.


# Mysql 5.7

https://gist.github.com/operatino/392614486ce4421063b9dece4dfe6c21

```
/usr/local/opt/mysql@5.7/bin/mysql.server start
```

# Download

```
export PATH="/Applications/DevDesktop/php7_3_x64/bin:/Applications/DevDesktop/mysql/bin:$PATH"

wget --no-check-certificate --no-cache --no-cookies https://raw.githubusercontent.com/voidagency/vactory_decoupled_project/master/scripts/download.sh

chmod a+x download.sh

./download.sh backend
```
