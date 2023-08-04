<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB; 
class ApplesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $apples = [ ['apple_name' => 'JohnDoe1'], ['apple_email' => 'minh'], ['apple_diachi' => 'hani']]; 
           DB::table('apples')->insert($apples); 

    }
}
