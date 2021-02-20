package com.huyghe.myapplication;

import android.app.Fragment;
import android.app.ListFragment;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Toast;

public class HomeListFragment extends ListFragment implements AdapterView.OnItemClickListener {
    private static String[] items =  new String[] {"Texte", "Image", "Curseur"};

    @Override
    public View onCreateView(LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.home_list_view, container, false);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        ArrayAdapter<String> adapter =
                new ArrayAdapter<String>(getActivity(), R.layout.list_item, items);
        setListAdapter(adapter);
        getListView().setOnItemClickListener(this);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int pos, long id) {
        Log.i("HomeListFragment", "allo");
        Log.i("HomeListFragment", String.valueOf(pos));
        switch (pos) {
            case 0:
                getFragmentManager()
                        .beginTransaction()
                        .replace(R.id.fragment_container, new ArticleFragment())
                        .addToBackStack(null)
                        .commit();
                break;
            case 1:
                getFragmentManager()
                        .beginTransaction()
                        .replace(R.id.fragment_container, new ImageFragment())
                        .addToBackStack(null)
                        .commit();
                break;
            case 2:
                getFragmentManager()
                        .beginTransaction()
                        .replace(R.id.fragment_container, new DrawFragment())
                        .addToBackStack(null)
                        .commit();
                break;
            default:
                throw new IllegalArgumentException();
        }
    }
}
