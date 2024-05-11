import 'package:flutter/material.dart';
import 'package:wifi_iot/wifi_iot.dart';

void main() => runApp(FlutterWifiIoT());

class FlutterWifiIoT extends StatefulWidget {
  @override
  _FlutterWifiIoTState createState() => _FlutterWifiIoTState();
}

class _FlutterWifiIoTState extends State<FlutterWifiIoT> {
  List<WifiNetwork> _networks = [];

  @override
  void initState() {
    super.initState();
    _loadWifiNetworks();
  }

  Future<void> _loadWifiNetworks() async {
    List<WifiNetwork> networks;
    try {
      networks = await WiFiForIoTPlugin.loadWifiList();
    } catch (e) {
      print("Failed to load WiFi networks: $e");
      networks = [];
    }
    setState(() {
      _networks = networks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WiFi Networks',
      home: Scaffold(
        appBar: AppBar(
          title: Text('WiFi Networks'),
        ),
        body: ListView.builder(
          itemCount: _networks.length,
          itemBuilder: (context, index) {
            final network = _networks[index];
            return Column(
              children: [

                Card(
                  child: Column(
                    children: [
                      Text(network.ssid.toString()),
                      SizedBox(height: 5,),
                      Text('BSSID: ${network.bssid}'),
                      SizedBox(height: 5,),
                      Text(network.level.toString()),
                      SizedBox(height: 5,),
                      Text(network.frequency.toString()),
                      SizedBox(height: 5,),
                      Text(network.timestamp.toString()),
                      SizedBox(height: 5,),
                      Text(network.capabilities.toString()),],
                  )
                )


              ],
            );
          }
        ),
      ),
    );
  }
}
