<?php
use App\User;
use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    public function run()
    {
        User::create([
           'name'=>'xiongzai',
            'email'=>'xiong@zai.com',
            'password'=>bcrypt('xiongxiong'),
        ]);
    }
}