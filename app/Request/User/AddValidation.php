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

namespace App\Http\Requests\User;

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
            'name'              => 'required',
            'email'             => 'required | unique:users,email',
            'password'          => 'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required'              => 'Please, Add User Name.',
            'email.required'             => 'Please, Add Email.',
            'email.unique'               => 'Please, Add Unique Email.',
            'password.required'          => 'Please, Add Password.'
        ];
    }
}
/*'name', 'email', 'password', 'profile_image', 'contact_number', 'address','user_type',*/