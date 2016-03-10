<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/23/16
 * Time: 10:36 AM
 */

namespace App\Api\V1\Controllers;


use App\Api\V1\Transformers\MaterialDetailTransformer;
use App\Api\V1\Transformers\MaterialDetialsTransformer;
use App\Api\V1\Transformers\MaterialTransformer;
use App\Category;
use Illuminate\Http\Request;
use App\Material;
use Tymon\JWTAuth\Facades\JWTAuth;

class MaterialsController extends BaseController
{
    public function index(){
        $material = Material::paginate(5);

        return $this->item($material,new MaterialTransformer());
    }

    public function show($id)
    {
        $material = Material::find($id);
        if(!$material){
            return $this->response->errorNotFound('Material not found');
        }
        return $this->item($material,new MaterialTransformer());
    }


    public function showDetail($id,Request $request)
    {
        $materials = Material::find($id);
        $materials->viewcount = ($materials->viewcount)+1;
        $materials->save();
        if($request->get('token')){
            if(!$materials){
                return $this->response->errorNotFound('Material not found');
            }
            return $this->item($materials,new MaterialDetailTransformer());
        }else{
            if(!$materials){
                return $this->response->errorNotFound('Material not found');
            }
            return $this->item($materials,new MaterialDetialsTransformer());
        }
    }

    public function relation($id)
    {
        $materials = Material::find($id);
        $category_id = $materials->category->id;
        $materials = Category::find($category_id)->materials->take(6);
        return $materials;
    }
}