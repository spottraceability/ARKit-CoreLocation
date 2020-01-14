//
//  SceneLocationViewSpotExtensions.swift
//  ARCL
//
//  Created by Chris McGehee on 1/14/20.
//

import Foundation
import MapKit

@available(iOS 11.0, *)
public extension SceneLocationView {
    func addLineBetween(startNode: LocationNode, endNode: LocationNode, boxBuilder: BoxBuilder? = nil) {
        let lineCoordinates: [CLLocationCoordinate2D] = [startNode.location.coordinate, endNode.location.coordinate]
        let polyline = MKPolyline(coordinates: lineCoordinates, count: lineCoordinates.count)
        self.addPolylines(polylines: [polyline], boxBuilder: boxBuilder)
        /*
        self.polylineNodes.forEach {
            $0.locationNodes.forEach {

                let locationNodeLocation = self.locationOfLocationNode($0)
                $0.updatePositionAndScale(setup: true,
                                          scenePosition: currentScenePosition,
                                          locationNodeLocation: locationNodeLocation,
                                          locationManager: sceneLocationManager,
                                          onCompletion: {})

                sceneNode?.addChildNode($0)
            }
        }
        */
    }

}
