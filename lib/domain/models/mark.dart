enum Mark {
  cross,
  circle;

  Mark get opponent => this == cross ? circle : cross;
}
