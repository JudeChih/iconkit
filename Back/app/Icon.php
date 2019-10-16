<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Icon extends Model
{
    protected $fillable = [
        'name','tagsData','files','list','type'
    ];
}
