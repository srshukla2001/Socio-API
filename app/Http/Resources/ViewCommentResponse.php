<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ViewCommentResponse extends JsonResource
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
        return [
            'id'            =>  $this->response->id,
            'comment'       =>  $this->response->comment,
            'created_at'    =>  $this->response->created_at->diffForHumans(),
            'created_date'  =>  $this->response->created_at->format('d-M-y, H:iA'),
            'created_by'    =>  $this->response->commentusers ? $this->response->commentusers->username : '',
        ];
    }
}
