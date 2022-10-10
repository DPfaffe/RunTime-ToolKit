# Autonomous Dashboard Diagnostics

The samples in these folder go along with the following blog posts and webinar on Nov 15, 2022.

1. Blog [Part 1 of 3 ](https://www.tmssoftware.com/site/blog.asp?post=1005) - Object Inspection and modification using Marshal
2. Blog Part 2 of 3 - Dataset Insepection and SQL Queries using Marshal
3. Blog Part 3 of 3 - Custom inspectors and Marshal SDK

[Webinar Nov 15, 2022](https://www.tmssoftware.com/site/tmswebacademy.asp?id=145)  will cover the 3 topics plus more live.

## About the samples

The demo dashboard is written with FNC Chart and FNC UI Pack components. This is the base form for the demo, VCL and FMX respectively.  Marshal is added seperately using form inheritance in the units below.

* FMX [frmFncChartGridFMXU.pas](https://github.com/SwiftExpat/RunTime-ToolKit/blob/main/Samples/FNCChart/WebinarFMX/frmFncChartGridFMXU.pas)
* VCL [frmFncChartGridVCLU.pas](https://github.com/SwiftExpat/RunTime-ToolKit/blob/main/Samples/FNCChart/WebinarVCL/frmFncChartGridVCLU.pas)

Marshal has possible [implementation options](https://swiftexpat.com/marshal/marshal-implementation-options.html), the samples are written to demonstrate the 3 options by inheriting the base form and only adding the marshal components.

1. Marshal pure code
2. Marshal button control
3. Marsahl App Inspector (auto open)

**Compiled versions are available in the releases for you to try out the different options.**

Pure Code
The following project files apply to the pure code option

* FMX - [frmFncChartGridFMXUCoded.pas](https://github.com/SwiftExpat/RunTime-ToolKit/blob/main/Samples/FNCChart/WebinarFMX/frmFncChartGridFMXUCoded.pas) Compiled [DemoFMXCoded](https://github.com/SwiftExpat/RunTime-ToolKit/releases/download/SeptBlog/FncChartFMXMarshalCoded.exe)
* VCL - [frmFncChartGridVCLUCoded.pas](https://github.com/SwiftExpat/RunTime-ToolKit/blob/main/Samples/FNCChart/WebinarVCL/frmFncChartGridVCLUCoded.pas) Compiled [DemoVCLCoded](https://github.com/SwiftExpat/RunTime-ToolKit/releases/download/SeptBlog/FNChartVCLMarshalCoded.exe)

Marshal Button Control
The following project files apply to Marshal Button Control Option

* FMX - [frmFncChartGridFMXUMB.pas](https://github.com/SwiftExpat/RunTime-ToolKit/blob/main/Samples/FNCChart/WebinarFMX/frmFncChartGridFMXUMB.pas)
* VCL - [frmFncChartGridVCLUMarshalButton.pas](https://github.com/SwiftExpat/RunTime-ToolKit/blob/main/Samples/FNCChart/WebinarVCL/frmFncChartGridVCLUMarshalButton.pas)

Marshal App Inspector
The following project files apply to the App Inspector Option

* FMX - [frmFncChartGridFMXUAI.pas](https://github.com/SwiftExpat/RunTime-ToolKit/blob/main/Samples/FNCChart/WebinarFMX/frmFncChartGridFMXUAI.pas)
* VCL - [frmFncChartGridVCLUAppInspector.pas](https://github.com/SwiftExpat/RunTime-ToolKit/blob/main/Samples/FNCChart/WebinarVCL/frmFncChartGridVCLUAppInspector.pas)
