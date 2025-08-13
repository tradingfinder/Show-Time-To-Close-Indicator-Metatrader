//+------------------------------------------------------------------+
//|                                             ShowPips & Times.mq4 |
//|                                  Copyright 2024, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "TradingFinder.com - 2023-2024"
#property link      "https://tradingfinder.com/products/indicators/mt4/"
#property version   "1.04"
#property description "Risk Warning: Trading on financial markets involves risk, and you may lose part or all of your money. Using this indicator is at your own risk. TradingFinder [TFLab] creates software as educational material. We are not responsible for any losses or damages."
#property description "   "
#property description "Find out more on TradingFinder.com"
#property icon    "\\Images\\Logo.ico"

#property strict
#property indicator_chart_window
enum Loc {UpperLeft, UpperRight};

input Loc TextPosition = UpperLeft;
input color Clr = clrBlue;

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnInit()
  {
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   ObjectsDeleteAll(0,"Show Pips");
  }

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---

   string TimeShow;
   if(Period()!=PERIOD_MN1 && Period()!=PERIOD_W1)
      TimeShow = TimeToString(PeriodSeconds(PERIOD_CURRENT) - (TimeCurrent() - time[0]), TIME_SECONDS);
   else
     {
      int next = PeriodSeconds(PERIOD_CURRENT) - int(TimeCurrent() - time[0]);
      TimeShow = IntegerToString((next/86400)-1)+"D & " + TimeToString(PeriodSeconds(PERIOD_CURRENT) - (TimeCurrent() - time[0]), TIME_SECONDS);
     }
   int x;
   int y;
   if(TextPosition == UpperLeft)
     {x=10; y=30;}
   else
     {x=int(ChartGetInteger(0,CHART_WIDTH_IN_PIXELS,0))-260; y=10;}

   ObjectsDeleteAll(0,"Show Pips");
   LabelCreate("Show Pips "+Symbol(),x,y,CORNER_LEFT_UPPER,"Time to close: "+TimeShow,"Arial",14,Clr);


//--- return value of prev_calculated for next call
   return(rates_total);
  }

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Create a text label                                              |
//+------------------------------------------------------------------+
bool LabelCreate(const string            name="Label",             // label name
                 const int               x=0,                      // X coordinate
                 const int               y=0,                      // Y coordinate
                 const ENUM_BASE_CORNER  corner=CORNER_LEFT_UPPER, // chart corner for anchoring
                 const string            text="Label",             // text
                 const string            font="Arial",             // font
                 const int               font_size=10,             // font size
                 const color             clr=clrRed,               // color
                 const double            angle=0.0,                // text slope
                 const ENUM_ANCHOR_POINT anchor=ANCHOR_LEFT_UPPER, // anchor type
                 const bool              back=false,               // in the background
                 const bool              selection=false,          // highlight to move
                 const bool              hidden=true,              // hidden in the object list
                 const long              chart_ID=0,               // chart's ID
                 const int               sub_window=0,             // subwindow index
                 const long              z_order=0)                // priority for mouse click
  {
//--- reset the error value
   ResetLastError();
//--- create a text label
   if(!ObjectCreate(chart_ID,name,OBJ_LABEL,sub_window,0,0))
     {
      Print(__FUNCTION__,
            ": failed to create text label! Error code = ",GetLastError());
      return(false);
     }
//--- set label coordinates
   ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,x);
   ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,y);
//--- set the chart's corner, relative to which point coordinates are defined
   ObjectSetInteger(chart_ID,name,OBJPROP_CORNER,corner);
//--- set the text
   ObjectSetString(chart_ID,name,OBJPROP_TEXT,text);
//--- set text font
   ObjectSetString(chart_ID,name,OBJPROP_FONT,font);
//--- set font size
   ObjectSetInteger(chart_ID,name,OBJPROP_FONTSIZE,font_size);
//--- set the slope angle of the text
   ObjectSetDouble(chart_ID,name,OBJPROP_ANGLE,angle);
//--- set anchor type
   ObjectSetInteger(chart_ID,name,OBJPROP_ANCHOR,anchor);
//--- set color
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR, clr);
//--- display in the foreground (false) or background (true)
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
//--- enable (true) or disable (false) the mode of moving the label by mouse
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
//--- hide (true) or display (false) graphical object name in the object list
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
//--- set the priority for receiving the event of a mouse click in the chart
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
//--- successful execution
   return(true);
  }
//+------------------------------------------------------------------+
