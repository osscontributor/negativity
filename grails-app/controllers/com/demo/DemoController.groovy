package com.demo

class DemoController {

    def index(Widget w) {
        [widget: w]
    }
}

class Widget {
    Integer someNumber
}
