//
//  ContentView.swift
//  RatingViewExample
//
//  Created by Gaurav Thakkar on 16/02/21.
//

import SwiftUI
import RatingView

struct ContentView: View {
    
    private var progressValues : [Float] = [0.1,0.1,0.1,0.1,0.1]
    private var userRating = 0
    private var netRate : Float = 4.0
    // Make an observable object like so
    var ratingViewModel : RatingViewModel
    
    init(){
        // Add all your initial parameters
        ratingViewModel = RatingViewModel(progressValues: progressValues, userRating: userRating, netRate: netRate)
    }
    
    var body: some View {
        // Make sure you have the viewmodel and the callback
        RatingView(ratingViewModel: ratingViewModel, onRatingTapped: updateValues)
    }
    
    func updateValues(rating: Int){
        ratingViewModel.netRate = getRandomFloat()
        ratingViewModel.progressValues = [getRandomFloat(), getRandomFloat(),getRandomFloat(), getRandomFloat(),getRandomFloat()]
    }
    func getRandomFloat() -> Float{
        return Float.random(in: 0..<1)
    }
    }
    
    
    
    
    



