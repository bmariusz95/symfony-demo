Запуск dapp в виртуальной машине
================================

Быстрый старт
-------------

Для демонстрации возможностей dapp в проект добавлен Vagrantfile с установкой docker и dapp. Чтобы собрать и запустить приложение, нужно выполнить:

```
$ git clone https://github.com/flant/symfony-demo.git symfony-demo
$ cd symfony-demo
$ git checkout dapp_build
$ vagrant up
$ vagrant ssh
$ cd /app_repo
$ dapp dimg build
$ dapp dimg run -p 9000:9000 --rm -d -- /demo/start.sh
```

После этого можно открыть приложение в браузере на хост машине http://192.168.33.12:8000

Подробности
-----------

1) Из всех примеров в проекте собирается только booking.
2) Директория проекта монтируется в /app_repo в гостевой ОС

3) При частой сборке во время экспериментов иногда сборка может зависать, это можно починить, выполнив команду

```
echo 'y' | sudo dmsetup udevcomplete_all
```

Более подробно: https://github.com/kubevirt/kubevirt/issues/321
