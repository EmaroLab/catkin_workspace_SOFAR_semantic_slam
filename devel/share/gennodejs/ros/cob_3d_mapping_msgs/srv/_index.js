
"use strict";

let SetPointMap = require('./SetPointMap.js')
let UpdateMap = require('./UpdateMap.js')
let GetBoundingBoxes = require('./GetBoundingBoxes.js')
let SetBoundingBoxes = require('./SetBoundingBoxes.js')
let SetGeometryMap = require('./SetGeometryMap.js')
let GetGeometryMap = require('./GetGeometryMap.js')
let GetApproachPoseForPolygon = require('./GetApproachPoseForPolygon.js')
let MoveToTable = require('./MoveToTable.js')
let GetPointMap = require('./GetPointMap.js')
let ModifyMap = require('./ModifyMap.js')
let GetPlane = require('./GetPlane.js')
let GetTables = require('./GetTables.js')
let GetObjectsOfClass = require('./GetObjectsOfClass.js')

module.exports = {
  SetPointMap: SetPointMap,
  UpdateMap: UpdateMap,
  GetBoundingBoxes: GetBoundingBoxes,
  SetBoundingBoxes: SetBoundingBoxes,
  SetGeometryMap: SetGeometryMap,
  GetGeometryMap: GetGeometryMap,
  GetApproachPoseForPolygon: GetApproachPoseForPolygon,
  MoveToTable: MoveToTable,
  GetPointMap: GetPointMap,
  ModifyMap: ModifyMap,
  GetPlane: GetPlane,
  GetTables: GetTables,
  GetObjectsOfClass: GetObjectsOfClass,
};
