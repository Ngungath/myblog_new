<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\Settings::create([
         'site_name'=>'MyBlog',
         'contact_number'=>'+255754068563',
         'contact_email'=>'daniel2ngungath@gmail.com',
         'address'=>'8021 Arusha',
         'site_logo'=>'/uploads/site_images/site_logo.png'

        ]);
    }
}
