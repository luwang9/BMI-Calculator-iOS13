//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Lu Wang on 5/27/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
struct CalculateBrain {
    var bmi : BMI?
    mutating func calculateBMI(height:Float, weight:Float) {
        let BMIvalue = weight/(height*height)
        if BMIvalue < 18.5 {
            bmi = BMI(value: BMIvalue, advive: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if BMIvalue < 24.9 {
            bmi = BMI(value: BMIvalue, advive: "Fit as a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: BMIvalue, advive: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advive ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }

}
