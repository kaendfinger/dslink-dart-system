import "package:dslink_system/utils.dart";

main() async {
  print("Operating System: ${await getOperatingSystemVersion()}");
  await getCpuUsage(); // Linux needs to have getCpuUsage() called twice
  print("CPU Usage: ${await getCpuUsage()}%");
  print("Total Memory: ${await getMemSizeBytes()} bytes");
  print("Free Memory: ${await getFreeMemory()} bytes");

  if (await doesSupportCPUTemperature()) {
    print("CPU Temperature: ${await getCpuTemp()}°C");
  }

  if (await doesSupportHardwareIdentifier()) {
    print("Hardware Identifier: ${await getHardwareIdentifier()}");
  }

  if (await doesSupportModel()) {
    print("Model: ${await getHardwareModel()}");
  }

  if (await doesSupportProcessorName()) {
    print("Processor: ${await getProcessorName()}");
  }

  print("Fan Stats: ${await getFanStats()}");
}
