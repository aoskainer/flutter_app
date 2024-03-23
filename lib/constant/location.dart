enum Location {
  tokyoStation(35.681236, 139.767125),
  shinOsakaStation(34.738136, 135.500093),
  hakataStation(33.590355, 130.420973);

  final double latitude;
  final double longitude;

  const Location(
    this.latitude,
    this.longitude,
  );
}
