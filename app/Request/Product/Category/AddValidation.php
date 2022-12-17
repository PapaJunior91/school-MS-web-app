<?php

/*
| -----------------------------------------------------
| PRODUCT NAME: 	gieLab_ERP4EDU_(eRPEdAPPS_V_0.01)
| -----------------------------------------------------
| AUTHOR:			gieLab TEAM
| -----------------------------------------------------
| EMAIL:			info@gielab.co.tz
| -----------------------------------------------------
| COPYRIGHT:		RESERVED @ gieLab Innovations
| -----------------------------------------------------
| WEBSITE:			http://gielab.co.tz
| -----------------------------------------------------
*/

namespace App\Http\Requests\Product\Category;

use Illuminate\Foundation\Http\FormRequest;

class AddValidation extends FormRequest
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
            'title'             => 'required | max:50 | unique:categories,title',
            'name.*'              => 'required',
        ];
    }

    /*public function messages()
    {
        return [
            'title.required' => 'Please, Add Title.',
            'name' => 'Please, Add Category Name',
            'percentage_from' => 'Please, Add Percentage From.',
            'percentage_to' => 'Please, Add Percentage To.',
        ];
    }*/
}
