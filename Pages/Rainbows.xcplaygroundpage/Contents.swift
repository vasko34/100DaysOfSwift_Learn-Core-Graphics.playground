//: [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
//: # Taste the rainbow
//: Your boss has dug out some old code that was supposed to draw a rainbow by stroking the outlines of concentric circles. Sadly, it looks like the data got corrupted somehow, because three of its values don't seem right.
//:
//: - Experiment: Your designer has produced a sketch showing how it *should* look. Can you adjust the code to help make it work correctly?
import UIKit

let rect = CGRect(x: 0, y: 0, width: 1000, height: 1000)
let renderer = UIGraphicsImageRenderer(bounds: rect)

let rendered = renderer.image { ctx in
    ctx.cgContext.setLineWidth(50)

    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var xPos = 50
    var yPos = 550
    var size = 900

    for color in colors {
        let rect = CGRect(x: xPos, y: yPos, width: size, height: size)
        color.setStroke()
        ctx.cgContext.strokeEllipse(in: rect)
        
        xPos += 50
        yPos += 50
        size -= 100
    }
}

showOutput(rendered)
//: [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
