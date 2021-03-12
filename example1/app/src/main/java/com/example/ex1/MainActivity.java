package com.example.ex1;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    Button buttonManager;
    TextView txtViewManager;
    ImageView imgViewManager;
    Intent myIntent;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Managers
        buttonManager = findViewById(R.id.button);
        txtViewManager = findViewById(R.id.textView);
        imgViewManager = findViewById(R.id.imageView);

        // Button Manager
        buttonManager.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                txtViewManager.setText("Clicked!");
                // Toggle Condition
                if (imgViewManager.getVisibility() == View.VISIBLE){
                    imgViewManager.setVisibility(View.INVISIBLE);
                }
                else {
                    imgViewManager.setVisibility(View.VISIBLE);
                }
                // Intent
                myIntent = new Intent( MainActivity.this, ChildActivity.class);
                myIntent.putExtra("myExtra", txtViewManager.getText().toString());
                startActivity(myIntent);
            }
        });
    }
}