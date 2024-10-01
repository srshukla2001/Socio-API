<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ViewPostResponse extends JsonResource
{

    protected $response = '';

    public function __construct($response){
        $this->response = $response;
    }

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        // dd($this->response->comments);
        return [
            'id' => $this->response->id,
            'post' => $this->response->description,
            'likes' => $this->response->likes ? $this->response->likes->postlikes->count() : 0,
            'comments' => $this->response->comments,
            'category' => $this->response->category,
            'created_at' => $this->response->created_at->diffForHumans(),
            'created_by' => $this->response->users ? $this->response->users->username : '',
        ];
    }
}
