<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class IndividualPostResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'post' => $this->description,
            'likes' => $this->likes ? $this->likes->postlikes->count() : 0,
            'comments' => $this->comments->count(),
            // 'category' => $this->category,
            'created_at' => $this->created_at->diffForHumans(),
            'created_date' => $this->created_at->format('d-M-y, H:iA'),
            'created_by' => $this->users ? $this->users->username : '',
        ];
    }
}
