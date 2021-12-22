<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data=array(
            array(
                'country_code'=>'+91',
                'email'=>'admin@gmail.com',
                'email_verified'=>'y',
                'first_name'=>'Admin',
                'last_name'=>'Admin',
                'password'=>Hash::make('1111'),
                'phone'=>'7069826897',
                'phone_verified'=>'y',
                'photo'=>"NULL",                
                'remember_token'=>"NULL",
                'role'=>'admin',
                'status'=>'active',
                'verification_code'=>'1234',
                'verify_token'=>"NULL",
            ),
            // array(
            //     'name'=>'User',
            //     'email'=>'user@gmail.com',
            //     'email_verified'=>'y',
            //     'country_code'=>'+91',
            //     'phone'=>'7069826897',
            //     'verification_code'=>'1234',
            //     'phone_verified'=>'y',
            //     'password'=>Hash::make('1111'),
            //     'photo'=>"NULL",                
            //     'role'=>'user',
            //     'provider'=>"NULL",
            //     'provider_id'=>"NULL",
            //     'remember_token'=>"NULL",
            //     'verify_token'=>"NULL",
            //     'status'=>'active'
            // ),
        );

        DB::table('users')->insert($data);
    }
}
