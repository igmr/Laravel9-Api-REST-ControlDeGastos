# Laravel - Notas

## MySql

```bash
mysql -u root -p1234567890
CREATE DATABASE Laravel9_Api_REST_Control_Gastos;
```

## Iniciar proyecto

```bash
composer create-project laravel/laravel Laravel-Api-REST-ControlDeGastos
cd Laravel-Api-REST-ControlDeGastos
code .
```

## Migraciones

```bash
php artisan make:migration create_classifications_table
php artisan make:migration create_classifications_items_table
php artisan make:migration create_operations_table
php artisan migrate
php artisan migrate:rollback
php artisan migrate:refresh
```

## Crear registros

```bash
php artisan make:seeder ClassificationSeeder
php artisan make:seeder ClassificationItemSeeder
php artisan make:seeder InitSeeder
composer dump-autoload
php artisan db:seed --class=InitSeeder
```

## Modelos

```bash
php artisan make:model Classification
php artisan make:model ClassificationItem
php artisan make:model Operation
```

## Controladores

```bash
php artisan make:controller ClassificationController --api
php artisan make:controller ClassificationItemController --api
php artisan make:controller  OperationController --api
php artisan make:controller  HomeController --api
```

## Exportar base de datos

```bash
mysqldump -u root -p Laravel9_Api_REST_Control_Gastos > script.txt
```
