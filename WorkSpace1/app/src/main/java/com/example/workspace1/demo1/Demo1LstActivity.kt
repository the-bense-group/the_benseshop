package com.example.workspace1.demo1

import android.content.Context
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.example.workspace1.R
import kotlinx.android.synthetic.main.activity_demo1_lst.*
import kotlinx.android.synthetic.main.activity_demo1_sd.*
import kotlinx.android.synthetic.main.demo1_lstview.view.*

class Demo1LstActivity : AppCompatActivity() {

    private  val valList: ArrayList<Int> = ArrayList()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_demo1_lst)
      var value: Int = intent.getIntExtra("ResultState",0)
        outer@ for (n in 2..value) {
            for (d in 2 until n) {
                if (n % d == 0) continue@outer
            }
            valList.add(n)

        }
       valList.reverse()
        demo1_lstCycView.layoutManager = LinearLayoutManager(this)

        demo1_lstCycView.adapter = ValueAdapter(valList, this)
        demo1_btnClose.setOnClickListener{
            finish()
        }

    }
    private   fun addValue() {
        valList.add(1)
        valList.add(2)
        valList.add(3)
        valList.add(4)

    }

}


private  class ValueAdapter(val items : ArrayList<Int>, val context: Context) : RecyclerView.Adapter<ViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        return ViewHolder(LayoutInflater.from(context).inflate(R.layout.demo1_lstview, parent, false))

    }
    override fun getItemCount(): Int {
        return items.size

    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder?.resultValue?.text = items[position].toString()

    }


}

class ViewHolder (view: View) : RecyclerView.ViewHolder(view) {
    val resultValue = view.demo1_txtValueResult
}
