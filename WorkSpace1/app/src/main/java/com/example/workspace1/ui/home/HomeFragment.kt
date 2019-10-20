package com.example.workspace1.ui.home

import android.os.Bundle
import android.support.design.widget.BottomNavigationView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.support.v4.app.Fragment
import com.example.workspace1.R


class HomeFragment : Fragment() {
    companion object {
        fun newInstance(): HomeFragment {
            var fragmentHome = HomeFragment()
            var args = Bundle()
            fragmentHome.arguments = args
            return fragmentHome
        }

    }
    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return  inflater.inflate(R.layout.fragment_home, container, false)

    }



}