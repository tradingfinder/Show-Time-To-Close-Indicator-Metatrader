# Show Time To Close Indicator for MetaTrader 4 & 5

A real-time countdown indicator that displays the exact time remaining until the current candle closes on any timeframe. Essential tool for precise timing in trading decisions.

## Description

Real-time countdown indicator showing time until current candle closes. Features customizable position and color settings. Perfect for scalping, day trading, and precise entry/exit timing. Works on all timeframes with special handling for weekly/monthly periods. Educational tool with risk warnings included.

The Show Time To Close indicator displays a live countdown timer directly on your chart showing:
- **Real-time countdown**: Exact time remaining until current candle closes
- **All timeframes**: From M1 to MN1 with optimized display for each
- **Customizable display**: Choose position and color to match your setup
- **Precise timing**: Essential for time-sensitive trading strategies

This versatile indicator works on both MetaTrader 4 and MetaTrader 5 platforms, helping traders make perfectly timed decisions.

## Features

- ✅ Compatible with both **MetaTrader 4** and **MetaTrader 5**
- ✅ **Real-time countdown** to candle close
- ✅ **All timeframes supported** (M1, M5, M15, M30, H1, H4, D1, W1, MN1)
- ✅ **Customizable position** (Upper Left or Upper Right)
- ✅ **Customizable colors** to match your chart theme
- ✅ **Special handling** for weekly and monthly timeframes
- ✅ **Non-intrusive display** that doesn't interfere with analysis
- ✅ **Automatic updates** every tick

## Installation

### For MetaTrader 5:
1. Download the `.mq5` file
2. Copy to: `MT5 Data Folder/MQL5/Indicators/`
3. Restart MT5 or refresh Navigator
4. Find "Show Time To Close" in Custom Indicators
5. Drag and drop onto your chart

### For MetaTrader 4:
1. Download the `.mq4` file
2. Copy to: `MT4 Data Folder/MQL4/Indicators/`
3. Restart MT4 or refresh Navigator
4. Find "Show Time To Close" in Custom Indicators
5. Drag and drop onto your chart

## Parameters

| Parameter | Default | Options | Description |
|-----------|---------|---------|-------------|
| `TextPosition` | UpperLeft | UpperLeft, UpperRight | Position of countdown display |
| `Clr` | DodgerBlue | Any color | Text color of the countdown |

## Visual Display

- **Format**: "Time to close: XX:XX:XX" (Hours:Minutes:Seconds)
- **Weekly/Monthly**: Shows days and time format "XD & XX:XX:XX"
- **Position**: Top-left or top-right corner of chart
- **Font**: Arial, size 14 for optimal readability
- **Updates**: Real-time with every price tick

## Trading Applications

### Scalping Strategies
- **Perfect entries**: Enter trades at optimal candle timing
- **Exit precision**: Close positions before candle closes
- **Breakout timing**: Catch breakouts at candle formation

### Day Trading
- **Session planning**: Plan trades around candle closes
- **Pattern completion**: Wait for candle close confirmations
- **Risk management**: Avoid holding through closes

### Swing Trading
- **Daily closes**: Monitor important daily candle closes
- **Weekly planning**: Track weekly candle formations
- **Monthly analysis**: Long-term trend confirmations

## Timeframe Compatibility

| Timeframe | Display Format | Use Case |
|-----------|----------------|----------|
| M1 - M30 | XX:XX:XX | Scalping, quick trades |
| H1 - H4 | XX:XX:XX | Intraday trading |
| D1 | XX:XX:XX | Daily analysis |
| W1 | XD & XX:XX:XX | Weekly planning |
| MN1 | XD & XX:XX:XX | Monthly analysis |

## Usage Tips

### Best Practices
1. **Position the display** where it doesn't block important price levels
2. **Choose contrasting colors** for better visibility
3. **Use with other indicators** for comprehensive analysis
4. **Monitor closely** during high-impact news events

### Trading Strategies
- **Breakout trades**: Enter when countdown shows 1-2 minutes remaining
- **Reversal plays**: Watch for rejection at countdown completion
- **Confirmation entries**: Wait for candle close before entering
- **Risk management**: Exit before unfavorable candle closes

## Compatibility

| Platform | Version | Status |
|----------|---------|---------|
| MetaTrader 4 | Build 1380+ | ✅ Supported |
| MetaTrader 5 | Build 3440+ | ✅ Supported |
| All Timeframes | M1 to MN1 | ✅ Compatible |
| All Instruments | Forex, Stocks, Crypto, Commodities | ✅ Compatible |
| All Chart Types | Candlestick, Bar, Line | ✅ Compatible |

## Version History

- **v1.05** - Enhanced stability and MT4/MT5 compatibility
- **v1.04** - Improved weekly/monthly display format
- **v1.03** - Added customizable positioning
- **v1.02** - Optimized performance and reduced CPU usage
- **v1.01** - Initial release

## Technical Requirements

### Minimum System Requirements
- MetaTrader 4 (Build 1380+) or MetaTrader 5 (Build 3440+)
- Windows 7/8/10/11 or compatible system
- 10MB available storage space
- Stable internet connection for real-time updates


## Risk Warning

⚠️ **Important Disclaimer**: 
- Trading involves substantial risk of loss
- Past performance doesn't guarantee future results
- This indicator is for educational purposes only
- Always use proper risk management
- Never risk more than you can afford to lose
- Time-based strategies carry additional risks
- Consider seeking professional financial advice


## Support & Resources

- 🌐 **Website**: [TradingFinder.com](https://tradingfinder.com)
- 📊 **More Indicators**: [MT4/MT5 Products](https://tradingfinder.com/products/indicators/)
- 📚 **Trading Education**: Available on our website
- 💬 **TFlab TradingView**: [TFlab TradingView](https://www.tradingview.com/u/TFlab/#published-scripts)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

**Developed by TFLab | TradingFinder.com**  
*Empowering traders with professional-grade technical analysis tools*
