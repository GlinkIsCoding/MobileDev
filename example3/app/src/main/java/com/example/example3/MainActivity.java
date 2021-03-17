package com.example.example3;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    Context myContext;
    Toast myToast;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        myContext = getApplicationContext();

        myToast = new Toast(myContext);

        myToast.makeText(myContext, "It's a me! A toast!", Toast.LENGTH_LONG).show();


        AlertDialog.Builder dialogConf = new AlertDialog.Builder(this);
        dialogConf.setTitle("This is a neutral dialog");
        dialogConf.setMessage("This is the Text of the Neutral Dialog");
        dialogConf.setIcon(R.mipmap.ic_launcher);

        dialogConf.setNeutralButton("Dismiss",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        myToast.makeText(myContext, "You clicked Dismiss", Toast.LENGTH_LONG).show();
                    }
                });
        dialogConf.setPositiveButton("Yes",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        myToast.makeText(myContext, "You clicked Yes", Toast.LENGTH_LONG).show();
                    }
                });

        dialogConf.setNegativeButton("No",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        myToast.makeText(myContext, "You clicked No", Toast.LENGTH_LONG).show();
                    }
                });
        AlertDialog myDialog = dialogConf.create();
        myDialog.show();

    }
}