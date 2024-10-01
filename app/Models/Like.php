<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    use HasFactory;

    protected $table = "likes";

    protected $fillable = [
        'post_id',
        'like_count'
    ];


    public function postlikes()
    {
        return $this->hasMany(PostLike::class,'like_id','id');
    }

}
