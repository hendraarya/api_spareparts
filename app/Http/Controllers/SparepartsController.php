<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SparepartsController extends Controller
{
    //Start Fucntion Controller table "Parts"
    public function getdata_parts() {
        $data = \DB::table('parts')->get();
        return response()->json($data);
    }

    public function postdata_parts(Request $request){
        \DB::table('parts')-> insert([
            'part_id'=>$request->inputan_partid,
            'part_name'=>$request->inputan_partname,
            'type'=>$request->inputan_type,
            'brand'=>$request->inputan_brand,
            'maker'=>$request->inputan_maker,
            'location'=>$request->inputan_location,
            'min_stock'=>$request->inputan_minstock,
            'rop'=>$request->inputan_rop,
            'designation'=>$request->inputan_designation,
            'remark'=>$request->inputan_remark,
            'stock_onhand'=>$request->inputan_stockonhand,
        ]);

        return response()->json([
            'status'=>true,
            'message'=>'Save Data Berhasil!'
        ]);
    }

    public function editdata_parts(Request $request,$id){
        \DB::table('parts')->where('part_id',$id)->update([
            'part_name'=>$request->inputan_partname,
            'type'=>$request->inputan_type,
            'brand'=>$request->inputan_brand,
            'maker'=>$request->inputan_maker,
            'location'=>$request->inputan_location,
            'min_stock'=>$request->inputan_minstock,
            'rop'=>$request->inputan_rop,
            'designation'=>$request->inputan_designation,
            'remark'=>$request->inputan_remark,
            'stock_onhand'=>$request->inputan_stockonhand,
        ]);

        return response()->json([
            'status'=> true,
            'message'=>'Data Berhasil diupdate!'
        ]);
    }

    public function deletedata_parts($id){
        \DB::table('parts')->where('part_id',$id)->delete();

        return response()->json([
            'status'=>true,
            'message'=> 'Data Berhasil di Delete!'
        ]);
    }

    public function filterdata_parts(Request $request ){
        $keyword = $request->keyword;
        $data = \DB::table('parts')-> where('part_name','like','%')->get();

        return response()->json([
            'status'=>true,
            'message'=>'Success difilter',
            'data_filter'=>$data
        ]);
    }

    public function pagingdata_parts($jumlah_data){
        $data = \DB::table('parts')->paginate($jumlah_data);

        return response()->json([
            'status'=>true,
            'message'=>'Success Paging Data',
            'data_filter'=>$data
        ]);
    }
    //End Fucntion Controller table "Parts"

    //Start Fucntion Controller table "Stock_partin"
    public function getdata_stockin(){
        $data = \DB::table('stock_partin')->get();
        return response()->json($data);
    }

    public function postdata_stockin(Request $request){

        $data = \DB::table('stock_partin')->insert([
            'date_stock'=>$request->inputan_datestock,
            'part_id'=>$request->inputan_partid,
            'partin'=>$request->inputan_partin,
        ]);
        return response()->json([
            'status'=>'true',
            'message'=> 'data partin berhasil disimpan',
        ]);
    }

    public function editdata_stockin(Request $request,$id){
        $data = \DB::table('stock_partin')->where('id_stock',$id)->update([
            'date_stock'=>$request->inputan_datestock,
            'part_id'=>$request->inputan_partid,
            'partin'=>$request->inputan_partin,
        ]);

        return response()->json([
            'status'=> 'true',
            'message'=> 'Data Stock_partin berhasil di update!',
        ]);
    }

    public function deletedata_stockin($id){
        $data = \DB::table('stock_partin')->where('id_stock',$id)->delete();

        return response()->json([
            'status'=> 'true',
            'message'=> 'Data berhasil di delete!'
        ]);
    }

    public function filterdata_stockin(Request $request){
        $keyword = $request->keyword;
        $data = \DB::table('stock_partin')-> where('part_id','like','%')->get();

        return response()->json([
            'status'=>true,
            'message'=>'Success difilter',
            'data_filter'=>$data
        ]);
    }

    public function paggingdata_stockin($jumlah_data){
        $data = \DB::table('stock_partin')->paginate($jumlah_data);

        return response()->json([
            'status'=>true,
            'message'=>'Success Paging Data',
            'data_filter'=>$data
        ]);

    }
    //End Fucntion Controller table "Stock_partin"

    //Start Fucntion Controller table "transaction_part"
    public function getdata_transactionpart(){
        $data = \DB::table('transaction_part')->get();
        return response()->json($data);
    }

    public function postdata_transactionpart(Request $request){

        $data = \DB::table('transaction_part')->insert([
            'date_transaction'=>$request->inputan_datetransaction,
            'part_id'=>$request->inputan_partid,
            'part_out'=>$request->inputan_partout,
            'machine_no'=>$request->inputan_machineno,
            'pic'=>$request->inputan_pic,
            'group_shift'=>$request->inputan_groupshift,
            'no_jobmta'=>$request->inputan_nojobmta,
        ]);
        return response()->json([
            'status'=>'true',
            'message'=> 'data transaction part berhasil disimpan',
        ]);
    }

    public function editdata_transactionpart(Request $request,$id){
        $data = \DB::table('transaction_part')->where('id_transaction',$id)->update([
            'date_transaction'=>$request->inputan_datetransaction,
            'part_id'=>$request->inputan_partid,
            'part_out'=>$request->inputan_partout,
            'machine_no'=>$request->inputan_machineno,
            'pic'=>$request->inputan_pic,
            'group_shift'=>$request->inputan_groupshift,
            'no_jobmta'=>$request->inputan_nojobmta,
        ]);

        return response()->json([
            'status'=> 'true',
            'message'=> 'Data Transaction part berhasil di update!',
        ]);
    }

    public function deletedata_transactionpart($id){
        $data = \DB::table('transaction_part')->where('id_transaction',$id)->delete();

        return response()->json([
            'status'=> 'true',
            'message'=> 'Data berhasil di delete!'
        ]);
    }

    public function filterdata_transactionpart(Request $request){
        $keyword = $request->keyword;
        $data = \DB::table('transaction_part')-> where('part_id','like','%')->get();

        return response()->json([
            'status'=>true,
            'message'=>'Success difilter',
            'data_filter'=>$data
        ]);
    }

    public function paggingdata_transactionpart($jumlah_data){
        $data = \DB::table('transaction_part')->paginate($jumlah_data);

        return response()->json([
            'status'=>true,
            'message'=>'Success Paging Data',
            'data_filter'=>$data
        ]);

    }
    //End Fucntion Controller table "transaction_part"
    
}
