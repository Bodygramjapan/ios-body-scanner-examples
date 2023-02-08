const widget = new BodygramScanningWidget('scan', {
    ssid: 'my_SSID',
    systemOfMeasurement: 'metric', // imperial or metric. Default: metric
    onError: error => {},          // do something with the error object
    onResult: result => {},        // do something with the result object
    onLoad: () => {},              // do something after the iframe is loaded
})

widget.insert() // insert the widget
widget.toggle() // toggle the widget
widget.remove() // remove the widget from DOM
