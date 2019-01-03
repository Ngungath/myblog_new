<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Post extends Model
{

// accessor function to accses featured image directory
	 public function getFeaturedAttribute($featured)
	{
		return asset($featured);
	}
   use SoftDeletes;

   protected $dates =['deleted_at'];
   protected $fillable = [
    'title','content','category_id','featured','slug'
   ];
   public function category()
   {
   	return $this->belongsTo('App\Category');
   } 

   public function tags(){

   	return $this->belongsToMany('App\Tag');
   }
   public function user(){
      return $this->belongsTo('App\User');
   }
}
