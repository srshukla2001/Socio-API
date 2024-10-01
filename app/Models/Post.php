<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use SoftDeletes,HasFactory;

    protected $fillable = [
        'name',
        'description',
        'category',
        'user_id',
    ];

    protected $table="posts";

    public function users(){
       return $this->hasOne(User::class,'id','user_id');
    }

    public function comments(){
        return $this->hasMany(Comment::class,'post_id','id')->orderBy('id','desc');
    }

    public function likes(){
        return $this->hasOne(Like::class,'post_id','id');
    }
}
