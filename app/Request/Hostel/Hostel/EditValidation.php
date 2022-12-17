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

namespace App\Http\Requests\Hostel\Hostel;

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
             'name'              => 'required | max:50 | unique:hostels,name,'.$this->request->get('id'),
             'address'           => 'required | max:50',
             'contact_detail'    => 'required',
             'warden'            => 'required | max:50',
             'type'              => 'required | max:50',
             'status'            => 'required | in:active,in-acctive',
         ];
    }

    public function messages()
    {
        return [
            'name.unique' => 'Hostels already exist',
        ];
    }
}
