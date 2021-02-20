package com.huyghe.myapplication;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;

public class DrawView extends View {
    private Point position;
    private Paint paint;

    @SuppressLint("ClickableViewAccessibility")
    public DrawView(Context context) {
        super(context);
        this.position = new Point(0, 0);
        this.paint = new Paint();
        paint.setColor(Color.BLACK);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        super.onTouchEvent(event);
        position.x = (int) event.getX(event.getActionIndex());
        position.y = (int) event.getY(event.getActionIndex());
        invalidate();
        return true;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(position.x, position.y, 50f, paint);
    }
}
