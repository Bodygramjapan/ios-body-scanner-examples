const widget = new BodygramScanningWidget('scan', {
    ssid: 'my_SSID',
    systemOfMeasurement: 'metric',
    onError: error => {},
    onResult: result => {},
    onLoad: () => {
      widget.toggle()
    },
})

widget.insert()
