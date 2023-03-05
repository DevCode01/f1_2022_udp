# f1_2022_udp

Package for listening Telemetry data from F1 2022 game.

## Example

```
import 'package:f1_2022_udp/src/F1_2022_telemery_listener.dart';

void main() async {
  F12022TelemetryListener listener = F12022TelemetryListener(20777);
  listener.start();
  listener.packetCarTelemetryDataStream.listen((packet) {
    print(packet.m_carTelemetryData[0].toString());
  });
}
```
