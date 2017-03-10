Feature: Live channels

Scenario: Expand live channel
  Given the app has launched
  When I tap on a channel cell
  Then hero is playing same channel

Scenario: Select thumbnail channel
  Given the app has launched
  When I tap on a channel cell
  Then selected indicator is displayed
