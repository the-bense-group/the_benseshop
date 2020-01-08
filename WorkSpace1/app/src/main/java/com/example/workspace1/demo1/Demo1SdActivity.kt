package com.example.workspace1.demo1

import android.app.Activity
import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import com.example.workspace1.R
import kotlinx.android.synthetic.main.activity_demo1_sd.*

class Demo1SdActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_demo1_sd)
        demo1_btnAdd.setOnClickListener{
            var newIntent:Intent= Intent()
            newIntent.putExtra("ResultState",demo1_txtValue.text.toString().toInt())
            setResult(Activity.RESULT_OK,newIntent)
            finish()
        }


    }
}
