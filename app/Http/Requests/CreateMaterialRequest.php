<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class CreateMaterialRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'min:2|required',
            'category_id' => 'required',
            'introduce' => 'required',
            'img_url1' => 'required',
            'admin_id' => 'required',
            'content' => 'required',
        ];
    }
}
