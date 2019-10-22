package com.example.workspace1.demo1

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import com.example.workspace1.R
import kotlinx.android.synthetic.main.activity_demo1_sd.*

class Demo1SdActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_demo1_sd)
        demo1_btnAdd.setOnClickListener{
            intent.putExtra("ResultState",demo1_txtValue.text.toString().toInt())
            finish()
        }


    }
}
