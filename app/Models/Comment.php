<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Comment extends Model
{
    use SoftDeletes,HasFactory;

    protected $fillable = [
        'post_id',
        'comment',
        'user_id',
    ];

    protected $table="comments";

    public function posts()
    {
        return $this->hasOne(Post::class,'id','post_id');
    }

    public function commentusers()
    {
        return $this->hasOne(User::class,'id','user_id');
    }

}
