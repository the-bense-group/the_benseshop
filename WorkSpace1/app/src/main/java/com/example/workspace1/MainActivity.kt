package com.example.workspace1

import android.content.Intent
import android.os.Bundle
import android.support.design.widget.BottomNavigationView
import androidx.navigation.findNavController
import androidx.navigation.ui.AppBarConfiguration
import androidx.navigation.ui.navigateUp
import androidx.navigation.ui.setupActionBarWithNavController
import androidx.navigation.ui.setupWithNavController
import android.support.v4.widget.DrawerLayout
import android.support.design.widget.NavigationView
import android.support.v4.app.Fragment
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.Toolbar
import android.view.Menu
import android.widget.FrameLayout
import com.example.workspace1.ui.alert.AlertFragment
import com.example.workspace1.ui.home.HomeFragment
import kotlinx.android.synthetic.main.activity_main.view.*

class MainActivity : AppCompatActivity() {
    private lateinit var content: FrameLayout
    private  lateinit var bottomNavigate:BottomNavigationView
    private lateinit var appBarConfiguration: AppBarConfiguration
    private  val mOnNavigationItemSelectedListener = BottomNavigationView.OnNavigationItemSelectedListener { menuItem ->
        when (menuItem.itemId) {
            R.id.nav_home -> {
                val fragment = HomeFragment()
                addFragment(fragment)
                return@OnNavigationItemSelectedListener true
//                val fragment = HomeFragment()
//                supportFragmentManager.beginTransaction().replace(R.id.container,fragment,javaClass.simpleName)
//                    .commit()
//                return@OnNavigationItemSelectedListener true
            }
            R.id.nav_alert -> {
                val fragment = AlertFragment()
                addFragment(fragment)
                return@OnNavigationItemSelectedListener true
            }
        }
        false
    }
    private fun addFragment(fragment: Fragment) {
        supportFragmentManager
            .beginTransaction()
            .setCustomAnimations(R.anim.design_bottom_sheet_slide_in, R.anim.design_bottom_sheet_slide_out)
            .replace(R.id.content, fragment,javaClass.simpleName)
            .commit()
    }
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val toolbar: Toolbar = findViewById(R.id.toolbar)
        setSupportActionBar(toolbar)


//        bottomNavigate = findViewById(R.id.nav_home_view)
        val drawerLayout: DrawerLayout = findViewById(R.id.drawer_layout)
        val navView: NavigationView = findViewById(R.id.nav_view)
        val navController = findNavController(R.id.nav_host_fragment)
//        bottomNavigate.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener)
//        val homeFragment = HomeFragment()
//        addFragment(homeFragment)
            navView.btnBottomNavigation.setOnClickListener{
                    startActivity(Intent(this,Main2Activity::class.java))
            }
        appBarConfiguration = AppBarConfiguration(
            setOf(
                R.id.nav_home, R.id.nav_about, R.id.nav_setting,R.id.nav_customer
            ), drawerLayout
        )
        setupActionBarWithNavController(navController, appBarConfiguration)
        navView.setupWithNavController(navController)


//        navView.setNavigationItemSelectedListener {
//            when (it.itemId) {
//                R.id.nav_home -> {
//                    startActivity(Intent(this,Main2Activity::class.java))
//                    true
//                }
//                else -> false
//            }
//        }
    }


    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.main, menu)
        return true
    }

    override fun onSupportNavigateUp(): Boolean {
        val navController = findNavController(R.id.nav_host_fragment)
        return navController.navigateUp(appBarConfiguration) || super.onSupportNavigateUp()
    }
}

