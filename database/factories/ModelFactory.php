<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

use Forone\Admin;

$factory->define(App\User::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->email,
        'password' => str_random(10),
        'remember_token' => str_random(10),
    ];
});
$factory->define(App\Comment::class, function (Faker\Generator $faker) {
    $admin_ids = Admin::lists('id')->toArray();
    $material_ids = \App\Material::lists('id')->toArray();
    return [
        'body' => $faker->paragraph,
        'admin_id' => $faker->randomElement($admin_ids),
        'material_id' => $faker->randomElement($material_ids),
    ];
});

$factory->define(App\Support::class, function (Faker\Generator $faker) {
    $admin_ids = Admin::lists('id')->toArray();
    $material_ids = \App\Material::lists('id')->toArray();
    return [
//        'body' => $faker->paragraph,
        'admin_id' => $faker->randomElement($admin_ids),
        'material_id' => $faker->randomElement($material_ids),
    ];
});
$factory->define(App\Favorite::class, function (Faker\Generator $faker) {
    $admin_ids = Admin::lists('id')->toArray();
    $material_ids = \App\Material::lists('id')->toArray();
    return [
//        'body' => $faker->paragraph,
        'admin_id' => $faker->randomElement($admin_ids),
        'material_id' => $faker->randomElement($material_ids),
    ];
});
$factory->define(App\Subscribe::class, function (Faker\Generator $faker) {
    $admin_ids = Admin::lists('id')->toArray();
    $tag_ids = \App\Tag::lists('id')->toArray();
    return [
//        'body' => $faker->paragraph,
        'admin_id' => $faker->randomElement($admin_ids),
        'tag_id' => $faker->randomElement($tag_ids),
    ];
});
