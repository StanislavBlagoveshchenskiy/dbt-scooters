# dbt_scooters

## Описание проекта

Проект на базе dbt, предназначенный для управления и трансформации данных,
связанных с использованием скутеров кикшеринга.
Позволяет выстроить аналитику данных о передвижениях и использовании скутеров.

## Быстрый старт

1. Убедитесь, что у вас установлен Python и pip:

```bash
python --version
pip --version
```

2. Установите dbt и адаптер postgres:
   
```bash
pip install dbt dbt-postgres
```

3. Клонируйте репозиторий, а затем перейдите в директорию проекта:

```bash
cd dbt_scooters
```

## Конфигурация

Обновите конфигурационный файл `~/profiles.yml` с вашими данными доступа к базе данных.

## Основные команды dbt

- `dbt debug` - проверка подключения к хранилищу данных (проверка профиля)
- `dbt parse` - парсинг файлов проекта (проверка корректности)
- `dbt compile` - компилирует dbt-модели и создает SQL-файлы
- `dbt run` - материализация моделей в таблицы и представления
- `dbt test` - запускает тесты для проверки качества данных
- `dbt seed` - загружает данные в таблицы из CSV-файлов
- `dbt build` - основная команда, комбинирует run, test и seed
- `dbt source freshness` - проверка актуальности данных в источниках
- `dbt docs generate` - генерирует документацию проекта
- `dbt docs serve` - запускает локальный сервер для просмотра документации

## Полезные макросы

- `dbt run-operation create_role --args "name: finance"` - создание роли в базе (на примере роли "finance")

## Каталог данных

Каталог dbt, который автоматически обновляется из ветки `main`:

https://inzhenerka.github.io/dbt-scooters

...

2. Установите dbt и другие зависимости:
   
```bash
pip install -r requirements.txt
```
