# FIDataFlowArchitecture

[![CI Status](http://img.shields.io/travis/NGUYEN CHI CONG/FIDataFlowArchitecture.svg?style=flat)](https://travis-ci.org/NGUYEN CHI CONG/FIDataFlowArchitecture)
[![Version](https://img.shields.io/cocoapods/v/FIDataFlowArchitecture.svg?style=flat)](http://cocoapods.org/pods/FIDataFlowArchitecture)
[![License](https://img.shields.io/cocoapods/l/FIDataFlowArchitecture.svg?style=flat)](http://cocoapods.org/pods/FIDataFlowArchitecture)
[![Platform](https://img.shields.io/cocoapods/p/FIDataFlowArchitecture.svg?style=flat)](http://cocoapods.org/pods/FIDataFlowArchitecture)

![FIDataFlow sequence](http://i.imgur.com/g2IXFdZ.png?raw=true "diagram")

## Getting started

A Flow is a task, it start from fetching data, transforming data & finally refreshing UI if needed.
In FIDataFlow, a IntegrateController will hold processing & start a serial flows.
IntegrateController include LogicController for fetching data, pre-processing data and DataController for transforming data, that is sent from LogicController.
<br/>When a flow is started, these blocks of IntegrateController are performed:
- start: 
- next:
- end:
- error:
- completion:
>(See more in code comments)>

To implement your flow, custom Logic&Data Controller.
- to fetch data, override method:<br/>
`prepareSignalWithParameters:completion:compeltion`
- to transform data, override method:<br/>
`tranformDataIfNeed:error:`
<br/>By default, base logic controller will pre-process data &  data controller will transform data to FIBaseModel (based from JSONModel)
If your returned data is kind of JSON, you only define return model as FIBaseModel & override this method of DataController like:
<br/>
`- (NSString*)classNameForReturnData{
    return @"YourJSONModelClassName";
}`<br/>
<br/>Magically, you will receive return data as an object of your model class.

##For advanced:
setup runningType for IntegrateController
- FIFlowRunningTypeDefault: start asynchronous 
- FIFlowRunningTypeOnly: start only flow, wait finish to start new flow
- FIFlowRunningTypeLastest: start serial flows, lastest flow will be started
- FIFlowRunningTypeQueue: start serial flows, before started all flows are added to queue & start flow by flow, finish previous flow -> start next flow

<br/><i>More features: multiple logics in FIIntegrateController, transform data, .... -></i> [Contact me!](mailto:congnc.if@gmail.com)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

FIDataFlowArchitecture is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FIDataFlowArchitectureNew"
```

## Author

NGUYEN CHI CONG, congnc.if@gmail.com

## License

FIDataFlowArchitecture is available under the MIT license. See the LICENSE file for more info.
