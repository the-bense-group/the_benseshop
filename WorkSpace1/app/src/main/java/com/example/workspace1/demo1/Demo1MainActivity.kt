package com.example.workspace1.demo1

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
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_demo1_main)
      btnShowValue.setOnClickListener{
          val intent = Intent(this@Demo1MainActivity,Demo1LstActivity::class.java)
          intent.putExtra(newValueState,newValue)
          startActivity(intent)
      }
      btnNewValue.setOnClickListener{

          startActivity(Intent(this@Demo1MainActivity,Demo1SdActivity::class.java))
          var value: Int = intent.getIntExtra("ResultState",0)
          Log.d("endfwoifw",value.toString())
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

    override fun onSaveInstanceState(outState: Bundle?, outPersistentState: PersistableBundle?) {
        super.onSaveInstanceState(outState, outPersistentState)
        outState?.putInt(newValueState,newValue)
    }
}


