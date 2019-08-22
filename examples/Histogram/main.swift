import SwiftPlot
import AGGRenderer
import SVGRenderer
import QuartzRenderer

var filePath = "examples/Reference/"
let fileName = "_21_histogram"

var agg_renderer = AGGRenderer()
var svg_renderer = SVGRenderer()
var quartz_renderer = QuartzRenderer()

var histogram = Histogram<Float>(isNormalized: false, enableGrid: true)
histogram.addSeries(data: x, bins: 50, label: "Plot 1", color: .blue)
histogram.plotTitle = PlotTitle("HISTOGRAM")
histogram.plotLabel = PlotLabel(xLabel: "X", yLabel: "Frequency")

histogram.drawGraphAndOutput(fileName: filePath+"agg/"+fileName,
                             renderer: agg_renderer)
histogram.drawGraphAndOutput(fileName: filePath+"svg/"+fileName,
                             renderer: svg_renderer)
histogram.drawGraphAndOutput(fileName: filePath+"quartz/"+fileName,
                             renderer: quartz_renderer)