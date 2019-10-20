package com.example.workspace1

import android.content.Intent
import android.os.Bundle
import android.support.design.widget.BottomNavigationView
import android.support.v7.app.AppCompatActivity
import androidx.navigation.findNavController
import androidx.navigation.ui.AppBarConfiguration
import androidx.navigation.ui.setupActionBarWithNavController
import androidx.navigation.ui.setupWithNavController

class Main2Activity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main2)
        val navView: BottomNavigationView = findViewById(R.id.nav_view_bottom)

        val navController = findNavController(R.id.nav_host_fragment_bottom)
        val appBarConfiguration = AppBarConfiguration(
            setOf(
                 R.id.nav_about,R.id.nav_home_bottom, R.id.nav_setting,R.id.nav_customer
//                R.id.navigation_home, R.id.navigation_dashboard, R.id.navigation_notifications
            )
        )
        setupActionBarWithNavController(navController, appBarConfiguration)
        navView.setupWithNavController(navController)
//        navView.setOnNavigationItemSelectedListener {
//            when (it.itemId) {
//                R.id.nav_home -> {
//                    startActivity(Intent(this,MainActivity::class.java))
//                    true
//                }
//                else -> false
//            }
//        }
    }
}
