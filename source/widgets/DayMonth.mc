using Toybox.Graphics;
using Toybox.Math;
using Toybox.System;
using Toybox.Time;

// Renders the day / month view
module SimpleSensor {
	module DayMonth {
		const DAY_MONTH_X = 60;
		const DAY_MONTH_Y = 55;
		const DAY_MONTH_SPACE = 5;
	
	    function renderDayMonth(dc) {
	    	var now = Time.now();
	        var mediumTimeFormat = Time.Gregorian.info(now, Time.FORMAT_MEDIUM);
	    	
	    	var dayStr = mediumTimeFormat.day_of_week;
	    	var dayNumberStr = Time.Gregorian.info(now, 0).day.format("%d");
	    	var monthStr = mediumTimeFormat.month;
			
			var fontSize = Graphics.FONT_SYSTEM_TINY;
			var dayStrLen =	dc.getTextWidthInPixels(dayStr, fontSize);
			var dayNumberStrLen = dc.getTextWidthInPixels(dayNumberStr, fontSize);
			
			dc.setColor(0x888888, Graphics.COLOR_BLACK);
			dc.drawText(DAY_MONTH_X, DAY_MONTH_Y, fontSize, dayStr, Graphics.TEXT_JUSTIFY_LEFT);
			dc.drawText(DAY_MONTH_X + dayStrLen + DAY_MONTH_SPACE, DAY_MONTH_Y, fontSize, dayNumberStr, Graphics.TEXT_JUSTIFY_LEFT);
			dc.drawText(DAY_MONTH_X + dayStrLen + dayNumberStrLen + DAY_MONTH_SPACE * 2, DAY_MONTH_Y, fontSize, monthStr, Graphics.TEXT_JUSTIFY_LEFT);
	    }
    }
}