#!/usr/bin/env bash

# Jalankan migrasi & cache konfigurasi sebelum serve
php artisan migrate --force
php artisan config:cache
php artisan route:cache

# Jalankan server Laravel
php artisan serve --host=0.0.0.0 --port=10000
