
"use strict";

let SaveRecordedObject = require('./SaveRecordedObject.js')
let DetectObjects = require('./DetectObjects.js')
let BaTestEnvironment = require('./BaTestEnvironment.js')
let StopObjectRecording = require('./StopObjectRecording.js')
let AcquireObjectImage = require('./AcquireObjectImage.js')
let TrainObject = require('./TrainObject.js')
let BagTrainObject = require('./BagTrainObject.js')
let StartObjectRecording = require('./StartObjectRecording.js')

module.exports = {
  SaveRecordedObject: SaveRecordedObject,
  DetectObjects: DetectObjects,
  BaTestEnvironment: BaTestEnvironment,
  StopObjectRecording: StopObjectRecording,
  AcquireObjectImage: AcquireObjectImage,
  TrainObject: TrainObject,
  BagTrainObject: BagTrainObject,
  StartObjectRecording: StartObjectRecording,
};
