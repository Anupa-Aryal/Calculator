package com.example.khalti;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Button Signin;
    EditText mobile_email, password;
TextView error;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Signin = findViewById(R.id.Sign_in);
        mobile_email = findViewById(R.id.mobile_email);
        password = findViewById(R.id.password);
        error=findViewById(R.id.error);
        Signin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String mobile, pd;
                String email_pattern = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$";
                mobile = mobile_email.getText().toString();
                pd = password.getText().toString();
                if(mobile.length()==0){
                    error.setText("Please enter your email or mobile");
                    return;
                }
                else if(mobile.trim().matches(email_pattern)){
                    error.setText();
                }
                Toast.makeText(getApplicationContext(), mobile + " " + pd, Toast.LENGTH_LONG).show();
            }
        });
    }
}

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          