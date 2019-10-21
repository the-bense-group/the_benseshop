
package com.example.workspace1
import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import com.example.workspace1.demo1.Demo1MainActivity
import kotlinx.android.synthetic.main.activity_login.*


class LoginActivity : AppCompatActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)
        btnLogin.setOnClickListener {
            startActivity(Intent(this, Demo1MainActivity::class.java))
        }

    }





}
