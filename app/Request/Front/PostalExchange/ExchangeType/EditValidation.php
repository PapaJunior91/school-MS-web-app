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

namespace App\Http\Requests\Front\PostalExchange\ExchangeType;

use Illuminate\Foundation\Http\FormRequest;

class EditValidation extends FormRequest
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
            'title'                => 'required | unique:postal_exchange_types,title,'.decrypt($this->request->get('id')),
        ];

    }

    public function messages()
    {
        return [
            'title.required'            => 'Designation Required',
            'title.unique'              => 'Please Enter Unique Designation.',
        ];
    }
}
