## 0.0.1

* Initial release

## 0.0.2

* Fix chart height not consistent with small amount of tasks
* Add optional `scrollWhileDrag` to enable/disable scrolling while dragging tasks on edge of screen

## 0.0.3

* Add optional custom builder for task labels

## 0.0.4

* Add date end start resizable
* Add optional scroll to current date on init

## 0.0.5

* Add pitch to scale the chart parameter
* Fix onDragEnd not called
* Temporary disable scroll when dragging entire task

## 0.0.6

* Remove pitch to scale the chart parameter
* Add GanttMode for showing the gantt chart in daily, weekly or monthly mode

## 0.0.7

* Add option to custom each width per day on each GanttMode
* Show tooltip on date label when on Weekly or Monthly mode
* Add support for subtasks

## 0.0.8

* Fix draw wrong table height when height is smaller than reserved height

## 0.0.9

* Fix GanttSubData not updated
* Separating generic type for GanttData and GanttSubData

## 0.1.0

* All the data now displayed inside Stack with Positioned for smoother drag animation
* GanttData now act as a parent for GanttSubData
* Dragging GanttData will drag all of its GanttSubData
* Dragging GanttSubData outside GanttData time range now will expand GanttData time range
* Optimize code & fix various bugs

## 0.1.1

* Change some Positioned widget to AnimatedPositioned for smoother drag animation
* Add optional AnimationDuration for drag animation duration

## 0.1.2

* Add optional snap drag to date (default to true)
* Add feature to resize label width
* Task dependencies can be added by user input by dragging the indicator to another task. (Currently only support same parent task)
* Fix some bugs on displayed arrow dependencies
* Change drag indicator default style

## 0.1.3

* Add feature to reorder GanttData by dragging the label task on the left side
* Add some custom color parameter for label section

## 0.1.4

* Fix selected task index not updated after reordered
* Fix accuracy of arrow connection to active/selected GanttSubData
* Now only show arrow connector on selected GanttData

## 0.1.5

* Downgrading intl version to 0.19.0 due most other package still using this version

## 0.1.6

* Add ability to export GanttMode
* Option to disable horizontal drag, reordering rows and reassigning