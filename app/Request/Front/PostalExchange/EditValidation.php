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

namespace App\Http\Requests\Front\PostalExchange;

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
             'type'         => 'required',
             'date'         => 'required',
             'ref_no'       => 'required | max:25 | unique:postal_exchanges,id,'.decrypt($this->request->get('id')),
             'subject'      => 'required',
             'to'           => 'required',
             'from'         => 'required',
             'file'         => 'mimes:pdf,doc,docx,ppt,xls,xlsx,jpeg,bmp,png',
         ];
    }

   /* public function messages()
    {
        return [
            'title.unique' => 'This Label Already Register',
        ];
    }*/
}
