// ignore_for_file: non_constant_identifier_names

/*
struct FinalClassificationData
{
    uint8     m_position;              // Finishing position
    uint8     m_numLaps;               // Number of laps completed
    uint8     m_gridPosition;          // Grid position of the car
    uint8     m_points;                // Number of points scored
    uint8     m_numPitStops;           // Number of pit stops made
    uint8     m_resultStatus;          // Result status - 0 = invalid, 1 = inactive, 2 = active
                                       // 3 = finished, 4 = didnotfinish, 5 = disqualified
                                       // 6 = not classified, 7 = retired
    uint32    m_bestLapTimeInMS;       // Best lap time of the session in milliseconds
    double    m_totalRaceTime;         // Total race time in seconds without penalties
    uint8     m_penaltiesTime;         // Total penalties accumulated in seconds
    uint8     m_numPenalties;          // Number of penalties applied to this driver
    uint8     m_numTyreStints;         // Number of tyres stints up to maximum
    uint8     m_tyreStintsActual[8];   // Actual tyres used by this driver
    uint8     m_tyreStintsVisual[8];   // Visual tyres used by this driver
    uint8     m_tyreStintsEndLaps[8];  // The lap number stints end on
};
*/

import 'package:f1_2022_udp/src/types/packet_header.dart';

class FinalClassificationData {
  /// Finishing position
  final int m_position;

  /// Number of laps completed
  final int m_numLaps;

  /// Grid position of the car
  final int m_gridPosition;

  /// Number of points scored
  final int m_points;

  /// Number of pit stops made
  final int m_numPitStops;

  /// Result status - 0 = invalid, 1 = inactive, 2 = active
  /// 3 = finished, 4 = didnotfinish, 5 = disqualified
  /// 6 = not classified, 7 = retired
  final int m_resultStatus;

  /// Best lap time of the session in milliseconds
  final int m_bestLapTimeInMS;
  //// Total race time in seconds without penalties
  final double m_totalRaceTime;

  ///Total penalties accumulated in seconds
  final int m_penaltiesTime;

  /// Number of penalties applied to this driver
  final int m_numPenalties;

  /// Number of tyres stints up to maximum
  final int m_numTyreStints;

  /// Actual tyres used by this driver
  final List<int> m_tyreStintsActual;

  /// Visual tyres used by this driver
  final List<int> m_tyreStintsVisual;

  // The lap number stints end on
  final List<int> m_tyreStintsEndLaps;

  FinalClassificationData(
      {required this.m_position,
      required this.m_numLaps,
      required this.m_gridPosition,
      required this.m_points,
      required this.m_numPitStops,
      required this.m_resultStatus,
      required this.m_bestLapTimeInMS,
      required this.m_totalRaceTime,
      required this.m_penaltiesTime,
      required this.m_numPenalties,
      required this.m_numTyreStints,
      required this.m_tyreStintsActual,
      required this.m_tyreStintsVisual,
      required this.m_tyreStintsEndLaps,
      });

  @override
  String toString() {
    return 'FinalClassificationData{m_position: $m_position, m_numLaps: $m_numLaps, m_gridPosition: $m_gridPosition, m_points: $m_points, m_numPitStops: $m_numPitStops, m_resultStatus: $m_resultStatus, m_bestLapTimeInMS: $m_bestLapTimeInMS, m_totalRaceTime: $m_totalRaceTime, m_penaltiesTime: $m_penaltiesTime, m_numPenalties: $m_numPenalties, m_numTyreStints: $m_numTyreStints, m_tyreStintsActual: $m_tyreStintsActual, m_tyreStintsVisual: $m_tyreStintsVisual, m_tyreStintsEndLaps: $m_tyreStintsEndLaps}';
  }
}

/*
struct PacketFinalClassificationData
{
    PacketHeader    m_header;                      // Header
    uint8                      m_numCars;          // Number of cars in the final classification
    FinalClassificationData    m_classificationData[22];
};
*/

class PacketFinalClassificationData {
  final PacketHeader m_header;

  /// Number of cars in the final classification
  final int m_numCars;
  final List<FinalClassificationData> m_classificationData;

  PacketFinalClassificationData(
      {required this.m_header,
      required this.m_numCars,
      required this.m_classificationData});
}
