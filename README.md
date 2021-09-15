# Usage Instructions

## Prerequisites
- Composer
- NPM
- Text editor of your choice
- Database file (Included in root folder as `collective_challenge.sql`)
## Installation
1. Change your directory into project folder
```bash
$ cd /path/to/collective-challenge
```
2. Install vendor files and node dependencies
```bash
$ composer install && npm install
```
3. Configure project with your database setup
```js
// specifically, check your .env file in the following lines:

APP_URL=http://127.0.0.1:8000

DB_HOST=localhost
```
*Also remember to copy the `.env.example` file to `.env`*

4. Run serve.
```bash
$ php artisan serve
```

## Project structure
This is a basic Laravel 8 setup with VueJs and Tailwind CSS

I have added 2 models (Product and Category) as well as corresponding controllers.

For VueJs, I have a single page under `resources\js\views\App.vue`. It is the **main entry point** of the application.

Feel free to inspect all the functions as implemented based on the guidelines in the challenge document.

### Thank you for the chance once again!
