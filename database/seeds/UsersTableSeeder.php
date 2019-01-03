<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user= App\User::create([
         'name'=>'Administrator',
         'email'=>'admin@blog.com',
         'password'=>bcrypt('admin123'),
         'admin'=>1

        ]);

        App\Profile::create([
            'user_id'=>$user->id,
            'avatar'=>'/uploads/avatar/1.jpg',
            'about'=>'Singer and social star who first became well known for her lorengray musical.ly account where she gained more than 28 million followers. She is also an actress, model and dancer. In March 2018, she signed with Virgin Records and she released her first single "My Story" later that year.  ',
            'facebook'=>'facebook.com',
            'youtube'=>'youtube.com'

        ]);
    }
}
