import SwiftPlot
import AGGRenderer
import SVGRenderer

var filePath = "examples/Reference/"
let fileName = "_17_bar_chart_vertical_stacked"

let x:[String] = ["2008","2009","2010","2011"]
let y:[Float] = [320,-100,420,500]
let y1:[Float] = [100,100,220,245]

var agg_renderer: AGGRenderer = AGGRenderer()
var svg_renderer: SVGRenderer = SVGRenderer()

var plotTitle: PlotTitle = PlotTitle()

var barGraph: BarGraph = BarGraph()
barGraph.addSeries(x, y, label: "Plot 1", color: .orange)
barGraph.addStackSeries(y1, label: "Plot 2", color: .blue)
plotTitle.title = "BAR CHART"
barGraph.plotTitle = plotTitle

barGraph.drawGraphAndOutput(fileName: filePath+"agg/"+fileName, renderer: agg_renderer)
barGraph.drawGraphAndOutput(fileName: filePath+"svg/"+fileName, renderer: svg_renderer)
