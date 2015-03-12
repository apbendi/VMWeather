# VMWeather #

This is a demo app demonstrating the Model-View-ViewModel (MVVM) pattern of iOS development.

This app was originally built as a counterpart to a talk given at the [Philly CocoaHeads](http://phillycocoa.org/) meetup on March 12, 2015.

## Building ##

Clone the repository and run:

`pod install`

You will need an API key for the [Dark Sky Forecast API](https://developer.forecast.io/), which are availble for free. Once you have your key, create a file `path/to/repo/VMWeather/Secrets.h` that looks like this:

```c
// Secrets.h

#define FORECAST_IO_API_KEY @"your-secret-key-here"

```