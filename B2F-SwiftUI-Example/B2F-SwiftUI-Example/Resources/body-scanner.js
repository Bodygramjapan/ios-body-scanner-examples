const widget = new BodygramScanningWidget('scan', {
    ssid: 'my_SSID',
    systemOfMeasurement: 'metric',
    onError: error => {},
    onResult: result => {},
    onLoad: () => {},
})

widget.insert()
widget.toggle()
widget.remove()
