package com.example.workspace1.demo1

import android.app.Activity
import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.os.PersistableBundle
import android.util.Log

import com.example.workspace1.R
import kotlinx.android.synthetic.main.activity_demo1_main.*

class Demo1MainActivity : AppCompatActivity() {
    var newValue:Int=0
    private  val newValueState:String="ResultState"
    private  val newIntValueState:Int=9999
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_demo1_main)

     newValue=savedInstanceState?.getInt(newValueState)?:0
      btnShowValue.setOnClickListener{
          val intent = Intent(this@Demo1MainActivity,Demo1LstActivity::class.java)
          intent.putExtra(newValueState,newValue)
          startActivity(intent)
      }
      btnNewValue.setOnClickListener{

            startActivityForResult(Intent(this,Demo1SdActivity::class.java),newIntValueState)

      }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if(requestCode ===newIntValueState && resultCode == Activity.RESULT_OK){
            var value:Int=  data!!.getIntExtra(newValueState,0)
            newValue=value
        }
    }
    override fun onResume() {
        super.onResume()
    }
    override fun onPause() {
        super.onPause()
    }

    override fun onDestroy() {
        super.onDestroy()
    }

    override fun onSaveInstanceState(outState: Bundle?) {
        super.onSaveInstanceState(outState)
        outState?.putInt(newValueState,newValue)
    }
}


