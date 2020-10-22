<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
	
    <script type="text/javascript">
        $(document).ready(function () {
            'use strict';

            Highcharts.chart('chrt2', {
                chart: {
                    zoomType: 'xy'
                },
                title: {
                    style: {
                        display: 'none'
                    }
                },
                xAxis: [{
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
                    ],
                    crosshair: true
                }],
                yAxis: [{ // Primary yAxis
                    labels: {
                        format: '{value}°C',
                        style: {
                            color: Highcharts.getOptions().colors[1]
                        }
                    },
                    title: {
                        text: 'Temperature',
                        style: {
                            color: Highcharts.getOptions().colors[1]
                        }
                    }
                }, { // Secondary yAxis
                    title: {
                        text: 'Rainfall',
                        style: {
                            color: Highcharts.getOptions().colors[0]
                        }
                    },
                    labels: {
                        format: '{value} mm',
                        style: {
                            color: Highcharts.getOptions().colors[0]
                        }
                    },
                    opposite: true
                }],
                tooltip: {
                    shared: true
                },
                legend: {
                    layout: 'horizontal',
                    align: 'left',
                    x: 30,
                    verticalAlign: 'bottom',
                },
                series: [{
                    name: 'Rainfall',
                    type: 'column',
                    yAxis: 1,
                    data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1,
                        95.6, 54.4
                    ],
                    tooltip: {
                        valueSuffix: ' mm'
                    }

                }, {
                    name: 'Temperature',
                    type: 'spline',
                    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6],
                    tooltip: {
                        valueSuffix: '°C'
                    }
                }]
            });

            $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                $('#chrt3').highcharts({
                    chart: {
                        zoomType: 'xy'
                    },
                    title: {
                        style: {
                            display: 'none'
                        }
                    },
                    xAxis: [{
                        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
                        ],
                        crosshair: true
                    }],
                    yAxis: [{ // Primary yAxis
                        labels: {
                            format: '{value}°C',
                            style: {
                                color: Highcharts.getOptions().colors[1]
                            }
                        },
                        title: {
                            text: 'Temperature',
                            style: {
                                color: Highcharts.getOptions().colors[1]
                            }
                        }
                    }, { // Secondary yAxis
                        title: {
                            text: 'Rainfall',
                            style: {
                                color: Highcharts.getOptions().colors[0]
                            }
                        },
                        labels: {
                            format: '{value} mm',
                            style: {
                                color: Highcharts.getOptions().colors[0]
                            }
                        },
                        opposite: true
                    }],
                    tooltip: {
                        shared: true
                    },
                    legend: {
                        layout: 'horizontal',
                        align: 'left',
                        x: 30,
                        verticalAlign: 'bottom',
                    },
                    series: [{
                        name: 'Rainfall',
                        type: 'column',
                        yAxis: 1,
                        data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5,
                            216.4, 194.1, 95.6, 54.4
                        ],
                        tooltip: {
                            valueSuffix: ' mm'
                        }

                    }, {
                        name: 'Temperature',
                        type: 'spline',
                        data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3,
                            13.9, 9.6
                        ],
                        tooltip: {
                            valueSuffix: '°C'
                        }
                    }]
                });
            });

            Highcharts.chart('chrt4', {
                title: {
                    style: {
                        display: 'none'
                    }
                },
                xAxis: {
                    gridLineWidth: 1,
                    title: {
                        enabled: true,
                        text: 'Height (cm)'
                    },
                    startOnTick: true,
                    endOnTick: true,
                    showLastLabel: true
                },
                yAxis: {
                    title: {
                        text: 'Weight (kg)'
                    }
                },
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                },
                series: [{
                    name: 'Target',
                    type: 'polygon',
                    data: [
                        [153, 42],
                        [149, 46],
                        [149, 55],
                        [152, 60],
                        [159, 70],
                        [170, 77],
                        [180, 70],
                        [180, 60],
                        [173, 52],
                        [166, 45]
                    ],
                    color: Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0.5).get(),
                    enableMouseTracking: false

                }, {
                    name: 'Observations',
                    type: 'scatter',
                    color: Highcharts.getOptions().colors[1],
                    data: [
                        [161.2, 51.6],
                        [167.5, 59.0],
                        [159.5, 49.2],
                        [157.0, 63.0],
                        [155.8, 53.6],
                        [170.0, 59.0],
                        [159.1, 47.6],
                        [166.0, 69.8],
                        [176.2, 66.8],
                        [160.2, 75.2],
                        [172.5, 55.2],
                        [170.9, 54.2],
                        [172.9, 62.5],
                        [153.4, 42.0],
                        [160.0, 50.0],
                        [147.2, 49.8],
                        [168.2, 49.2],
                        [175.0, 73.2],
                        [157.0, 47.8],
                        [167.6, 68.8],
                        [159.5, 50.6],
                        [175.0, 82.5],
                        [166.8, 57.2],
                        [176.5, 87.8],
                        [170.2, 72.8],
                        [174.0, 54.5],
                        [173.0, 59.8],
                        [179.9, 67.3],
                        [170.5, 67.8],
                        [160.0, 47.0],
                        [154.4, 46.2],
                        [162.0, 55.0],
                        [176.5, 83.0],
                        [160.0, 54.4],
                        [152.0, 45.8],
                        [162.1, 53.6],
                        [170.0, 73.2],
                        [160.2, 52.1],
                        [161.3, 67.9],
                        [166.4, 56.6],
                        [168.9, 62.3],
                        [163.8, 58.5],
                        [167.6, 54.5],
                        [160.0, 50.2],
                        [161.3, 60.3],
                        [167.6, 58.3],
                        [165.1, 56.2],
                        [160.0, 50.2],
                        [170.0, 72.9],
                        [157.5, 59.8],
                        [167.6, 61.0],
                        [160.7, 69.1],
                        [163.2, 55.9],
                        [152.4, 46.5],
                        [157.5, 54.3],
                        [168.3, 54.8],
                        [180.3, 60.7],
                        [165.5, 60.0],
                        [165.0, 62.0],
                        [164.5, 60.3],
                        [156.0, 52.7],
                        [160.0, 74.3],
                        [163.0, 62.0],
                        [165.7, 73.1],
                        [161.0, 80.0],
                        [162.0, 54.7],
                        [166.0, 53.2],
                        [174.0, 75.7],
                        [172.7, 61.1],
                        [167.6, 55.7],
                        [151.1, 48.7],
                        [164.5, 52.3],
                        [163.5, 50.0],
                        [152.0, 59.3],
                        [169.0, 62.5],
                        [164.0, 55.7],
                        [161.2, 54.8],
                        [155.0, 45.9],
                        [170.0, 70.6],
                        [176.2, 67.2],
                        [170.0, 69.4],
                        [162.5, 58.2],
                        [170.3, 64.8],
                        [164.1, 71.6],
                        [169.5, 52.8],
                        [163.2, 59.8],
                        [154.5, 49.0],
                        [159.8, 50.0],
                        [173.2, 69.2],
                        [170.0, 55.9],
                        [161.4, 63.4],
                        [169.0, 58.2],
                        [166.2, 58.6],
                        [159.4, 45.7],
                        [162.5, 52.2],
                        [159.0, 48.6],
                        [162.8, 57.8],
                        [159.0, 55.6],
                        [179.8, 66.8],
                        [162.9, 59.4],
                        [161.0, 53.6],
                        [151.1, 73.2],
                        [168.2, 53.4],
                        [168.9, 69.0],
                        [173.2, 58.4],
                        [171.8, 56.2],
                        [178.0, 70.6],
                        [164.3, 59.8],
                        [163.0, 72.0],
                        [168.5, 65.2],
                        [166.8, 56.6],
                        [172.7, 105.2],
                        [163.5, 51.8],
                        [169.4, 63.4],
                        [167.8, 59.0],
                        [159.5, 47.6],
                        [167.6, 63.0],
                        [161.2, 55.2],
                        [160.0, 45.0],
                        [163.2, 54.0],
                        [162.2, 50.2],
                        [161.3, 60.2],
                        [149.5, 44.8],
                        [157.5, 58.8],
                        [163.2, 56.4],
                        [172.7, 62.0],
                        [155.0, 49.2],
                        [156.5, 67.2],
                        [164.0, 53.8],
                        [160.9, 54.4],
                        [162.8, 58.0],
                        [167.0, 59.8],
                        [160.0, 54.8],
                        [160.0, 43.2],
                        [168.9, 60.5],
                        [158.2, 46.4],
                        [156.0, 64.4],
                        [160.0, 48.8],
                        [167.1, 62.2],
                        [158.0, 55.5],
                        [167.6, 57.8],
                        [156.0, 54.6],
                        [162.1, 59.2],
                        [173.4, 52.7],
                        [159.8, 53.2],
                        [170.5, 64.5],
                        [159.2, 51.8],
                        [157.5, 56.0],
                        [161.3, 63.6],
                        [162.6, 63.2],
                        [160.0, 59.5],
                        [168.9, 56.8],
                        [165.1, 64.1],
                        [162.6, 50.0],
                        [165.1, 72.3],
                        [166.4, 55.0],
                        [160.0, 55.9],
                        [152.4, 60.4],
                        [170.2, 69.1],
                        [162.6, 84.5],
                        [170.2, 55.9],
                        [158.8, 55.5],
                        [172.7, 69.5],
                        [167.6, 76.4],
                        [162.6, 61.4],
                        [167.6, 65.9],
                        [156.2, 58.6],
                        [175.2, 66.8],
                        [172.1, 56.6],
                        [162.6, 58.6],
                        [160.0, 55.9],
                        [165.1, 59.1],
                        [182.9, 81.8],
                        [166.4, 70.7],
                        [165.1, 56.8],
                        [177.8, 60.0],
                        [165.1, 58.2],
                        [175.3, 72.7],
                        [154.9, 54.1],
                        [158.8, 49.1],
                        [172.7, 75.9],
                        [168.9, 55.0],
                        [161.3, 57.3],
                        [167.6, 55.0],
                        [165.1, 65.5],
                        [175.3, 65.5],
                        [157.5, 48.6],
                        [163.8, 58.6],
                        [167.6, 63.6],
                        [165.1, 55.2],
                        [165.1, 62.7],
                        [168.9, 56.6],
                        [162.6, 53.9],
                        [164.5, 63.2],
                        [176.5, 73.6],
                        [168.9, 62.0],
                        [175.3, 63.6],
                        [159.4, 53.2],
                        [160.0, 53.4],
                        [170.2, 55.0],
                        [162.6, 70.5],
                        [167.6, 54.5],
                        [162.6, 54.5],
                        [160.7, 55.9],
                        [160.0, 59.0],
                        [157.5, 63.6],
                        [162.6, 54.5],
                        [152.4, 47.3],
                        [170.2, 67.7],
                        [165.1, 80.9],
                        [172.7, 70.5],
                        [165.1, 60.9],
                        [170.2, 63.6],
                        [170.2, 54.5],
                        [170.2, 59.1],
                        [161.3, 70.5],
                        [167.6, 52.7],
                        [167.6, 62.7],
                        [165.1, 86.3],
                        [162.6, 66.4],
                        [152.4, 67.3],
                        [168.9, 63.0],
                        [170.2, 73.6],
                        [175.2, 62.3],
                        [175.2, 57.7],
                        [160.0, 55.4],
                        [165.1, 104.1],
                        [174.0, 55.5],
                        [170.2, 77.3],
                        [160.0, 80.5],
                        [167.6, 64.5],
                        [167.6, 72.3],
                        [167.6, 61.4],
                        [154.9, 58.2],
                        [162.6, 81.8],
                        [175.3, 63.6],
                        [171.4, 53.4],
                        [157.5, 54.5],
                        [165.1, 53.6],
                        [160.0, 60.0],
                        [174.0, 73.6],
                        [162.6, 61.4],
                        [174.0, 55.5],
                        [162.6, 63.6],
                        [161.3, 60.9],
                        [156.2, 60.0],
                        [149.9, 46.8],
                        [169.5, 57.3],
                        [160.0, 64.1],
                        [175.3, 63.6],
                        [169.5, 67.3],
                        [160.0, 75.5],
                        [172.7, 68.2],
                        [162.6, 61.4],
                        [157.5, 76.8],
                        [176.5, 71.8],
                        [164.4, 55.5],
                        [160.7, 48.6],
                        [174.0, 66.4],
                        [163.8, 67.3]
                    ]

                }],
            });

            Highcharts.chart('chart5', {
                chart: {
                    type: 'column'
                },
                title: {
                    style: {
                        display: 'none'
                    }
                },
                xAxis: {
                    categories: [
                        'Jan',
                        'Feb',
                        'Mar',
                        'Apr',
                        'May',
                        'Jun',
                        'Jul',
                        'Aug',
                        'Sep',
                        'Oct',
                        'Nov',
                        'Dec'
                    ],
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'Rainfall (mm)'
                    }
                },
                tooltip: {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                        '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: 'Tokyo',
                    data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1,
                        95.6, 54.4
                    ]

                }, {
                    name: 'New York',
                    data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6,
                        92.3
                    ]

                }, {
                    name: 'London',
                    data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3,
                        51.2
                    ]

                }, {
                    name: 'Berlin',
                    data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8,
                        51.1
                    ]

                }]
            });


            //===== To DO List Add Task Field =====//
            $('.add-tsk-btn').on('click', function () {
                $('div.add-tsk').slideToggle();
                return false;
            });

            //===== To Do List =====//
            $('.td-lst > li').on('click', function () {
                $(this).toggleClass('completed');
                return false;
            });

            //===== To Do List Deleted =====//
            $('.td-lst > li > a').on('click', function () {
                $(this).parent('li').slideUp();
                return false;
            });

            $('.add-tsk form > button').on('click', function () {
                var task_list = $('ul.td-lst');
                var task_item = $('.add-tsk form > input').val();
                var date = new Date();
                var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
                    "Aug", "Sep", "Oct", "Nov", "Dec"
                ];
                var current_date = date.getDate() + ' ' + months[date.getMonth()] + ' ' + date.getFullYear();
                if (task_item !== '' && task_item !== 'undefined') {
                    $(task_list).prepend('<li><h5>' + task_item +
                        '</h5> <span><i class="ion-ios-stopwatch"></i>' + current_date +
                        '</span> <a href="#" title=""><i class="ion-android-delete"></i></a></li>');
                    $('.td-lst > li').on("click", function () {
                        $(this).toggleClass('active');
                    });
                    $('.add-tsk form > input').addClass('null');
                    $('.add-tsk form > input').val('');
                    $('.add-tsk form > input').focus();
                    var attribute = $("ul.td-lst").children('li').eq(0).children('i');
                    return false;
                }
            });

            //===== Circliful =====//
            if ($.isFunction($.fn.circliful)) {
                $('#circl-prg').circliful({
                    animation: 1,
                    animationStep: 3,
                    foregroundBorderWidth: 5,
                    backgroundBorderWidth: 5,
                    percent: 66,
                    textSize: 35,
                    foregroundColor: '#50b8aa',
                    backgroundColor: "#96d5f7",
                    textStyle: 'font-size: 20px;',
                    textColor: '#555555',
                });
            }

            //===== Full Calendar =====//
            if ($.isFunction($.fn.fullCalendar)) {
                $('#calendar').fullCalendar({
                    header: {
                        left: 'prev',
                        center: 'title',
                        right: 'next'
                    },
                    height: 530,
                    defaultDate: '2017-09-12',
                    editable: true,
                    eventLimit: true,
                    events: [{
                            title: 'Long Event...',
                            start: '2017-09-04'
                        },
                        {
                            title: 'Repeating Event',
                            start: '2017-09-09',
                            end: '2017-09-10'
                        },
                        {
                            title: 'Word Show...',
                            start: '2017-09-21'
                        }
                    ]
                });
            }
        });
    </script>
	<div class="option-panel">
        <span class="panel-btn">
            <i class="fa ion-android-settings fa-spin"></i>
        </span>
        <div class="color-panel">
            <h4>Text Color</h4>
            <span class="color1" onclick="setActiveStyleSheet('color1'); return false;">
                <i></i>
            </span>
            <span class="color2" onclick="setActiveStyleSheet('color2'); return false;">
                <i></i>
            </span>
            <span class="color3" onclick="setActiveStyleSheet('color'); return false;">
                <i></i>
            </span>
            <span class="color4" onclick="setActiveStyleSheet('color4'); return false;">
                <i></i>
            </span>
            <span class="color5" onclick="setActiveStyleSheet('color5'); return false;">
                <i></i>
            </span>
        </div>
    </div>
    <!-- Options Panel -->
    <div class="pg-tp">
        <i class="ion-cube"></i>
        <div class="pr-tp-inr">
            <h4>Welcome to
                <strong>FUZEN</strong>
                <span></span> Panel</h4>
            <span>Admin Template for medium and large web applications with ery clean and aesthetic style.</span>
        </div>
    </div>
    <!-- Page Top -->
    
    <div class="panel-content">
        <div class="filter-items">
            <div class="row grid-wrap mrg20">
                <div class="col-md-6 grid-item col-sm-12 col-lg-6">
                    <div class="widget sales-summ pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <h4 class="widget-title">Site Visits</h4>
                        <div class="sales-charts">
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#new">New</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#returning">Returning</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="new">
                                    <div id="chrt2" style="height: 270px;"></div>
                                </div>
                                <div class="tab-pane fade" id="returning">
                                    <div id="chrt3" style="height: 270px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 grid-item col-sm-12 col-lg-6">
                    <div class="widget sales-summ pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <h4 class="widget-title">Sales</h4>
                        <div id="chrt4" style="height: 270px;"></div>
                    </div>
                </div>
                <div class="col-md-12 grid-item col-sm-12 col-lg-12">
                    <div class="widget tsk-prgs pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <div class="tsk-prg-wrp">
                            <div class="row">
                                <div class="col-md-7 col-sm-12 col-lg-8">
                                    <div class="tsk-prg-chrt-wrp">
                                        <h4 class="widget-title">Task Progress</h4>
                                        <div class="tsk-prt">
                                            <div class="prt-bx">
                                                <div class="prt-bx-inf">
                                                    <h4>07</h4>
                                                    <span>Urgent Tasks</span>
                                                </div>
                                                <i class="ion-social-buffer blue-clr"></i>
                                            </div>
                                            <div class="prt-bx">
                                                <div class="prt-bx-inf">
                                                    <h4>05</h4>
                                                    <span>Normal Tasks</span>
                                                </div>
                                                <i class="ion-ios-color-filter green-clr"></i>
                                            </div>
                                        </div>
                                        <div id="chart5" style="height: 250px;"></div>
                                    </div>
                                </div>
                                <div class="col-md-5 col-sm-12 col-lg-4">
                                    <div class="asd-dvlpr">
                                        <h4 class="widget-title">Assigned To
                                            <i class="blue-clr">(05)</i>
                                        </h4>
                                        <div class="dvlprs-lst">
                                            <div class="dvplr-bx">
                                                <img class="brd-rd50" src="/images/resource/acti-thmb1.jpg" alt="" />
                                                <div class="dvplr-inf">
                                                    <h4>
                                                        <a href="#" title="">Sadi Orlaf</a>
                                                    </h4>
                                                    <span>Web Developer</span>
                                                </div>
                                            </div>
                                            <div class="dvplr-bx">
                                                <img class="brd-rd50" src="/images/resource/acti-thmb2.jpg" alt="" />
                                                <div class="dvplr-inf">
                                                    <h4>
                                                        <a href="#" title="">Overtunk</a>
                                                    </h4>
                                                    <span>Frontend Developer</span>
                                                </div>
                                            </div>
                                            <div class="dvplr-bx">
                                                <img class="brd-rd50" src="/images/resource/acti-thmb3.jpg" alt="" />
                                                <div class="dvplr-inf">
                                                    <h4>
                                                        <a href="#" title="">Chris Johnathan</a>
                                                    </h4>
                                                    <span>Designer</span>
                                                </div>
                                            </div>
                                            <div class="dvplr-bx">
                                                <img class="brd-rd50" src="/images/resource/acti-thmb4.jpg" alt="" />
                                                <div class="dvplr-inf">
                                                    <h4>
                                                        <a href="#" title="">Kim Smith</a>
                                                    </h4>
                                                    <span>Web Coder</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Task Progress Wrap -->
                    </div>
                </div>
                <div class="col-md-4 grid-item col-sm-4 col-lg-4">
                    <div class="widget sbcrb-itm pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <i class="ion-email blue-clr"></i>
                        <h4>9.25k Subscribers</h4>
                        <span>Your main list is growing!</span>
                        <a href="#" title="">
                            <i class="ion-gear-b"></i> Manage List</a>
                    </div>
                </div>
                <div class="col-md-4 grid-item col-sm-4 col-lg-4">
                    <div class="widget sbcrb-itm pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <i class="ion-social-twitter blue-clr"></i>
                        <h4>690+ Followers</h4>
                        <span>You are doing great!</span>
                        <a href="#" title="">
                            <i class="ion-android-people"></i> Check Them Out</a>
                    </div>
                </div>
                <div class="col-md-4 grid-item col-sm-4 col-lg-4">
                    <div class="widget sbcrb-itm pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <i class="ion-android-upload blue-clr"></i>
                        <h4>Business Plan</h4>
                        <span>This is your current active plan.</span>
                        <a href="#" title="">
                            <i class="ion-arrow-up-a"></i> Upgrade To VIP</a>
                    </div>
                </div>
                <div class="col-md-6 grid-item col-sm-12 col-lg-6">
                    <div class="widget to-do-lst pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <h4 class="widget-title">To Do list
                            <a class="blue-bg brd-rd5 add-tsk-btn" href="#" title="">Add Task</a>
                        </h4>
                        <div class="to-do-wrp">
                            <div class="to-do-tp">
                                <div class="add-tsk">
                                    <form class="brd-rd5">
                                        <input type="text" placeholder="Add Your Task Here..." />
                                        <button class="blue-bg" type="submit">
                                            <i class="ion-forward"></i>
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <ul class="td-lst">
                                <li>
                                    <h5>Book Flight For Holiday</h5>
                                    <span>
                                        <i class="ion-ios-stopwatch"></i>27 July 2017</span>
                                    <a href="#" title="">
                                        <i class="ion-android-delete"></i>
                                    </a>
                                </li>
                                <li>
                                    <h5>Send Payment Today</h5>
                                    <span>
                                        <i class="ion-ios-stopwatch"></i>25 July 2017</span>
                                    <a href="#" title="">
                                        <i class="ion-android-delete"></i>
                                    </a>
                                </li>
                                <li>
                                    <h5>Forward All Tacks</h5>
                                    <span>
                                        <i class="ion-ios-stopwatch"></i>10 July 2017</span>
                                    <a href="#" title="">
                                        <i class="ion-android-delete"></i>
                                    </a>
                                </li>
                                <li>
                                    <h5>Give Purchase Report Today</h5>
                                    <span>
                                        <i class="ion-ios-stopwatch"></i>27 July 2017</span>
                                    <a href="#" title="">
                                        <i class="ion-android-delete"></i>
                                    </a>
                                </li>
                                <li>
                                    <h5>Recieve Payment By Jhon</h5>
                                    <span>
                                        <i class="ion-ios-stopwatch"></i>14 July 2017</span>
                                    <a href="#" title="">
                                        <i class="ion-android-delete"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 grid-item col-sm-12 col-lg-6">
                    <div class="widget recnt-comts pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <h4 class="widget-title">Recent Comments</h4>
                        <ul class="rcnt-cmts">
                            <li>
                                <div class="rcnt-cmt-itm">
                                    <img class="brd-rd50" src="/images/resource/acti-thmb1.jpg" alt="" />
                                    <div class="rcnt-cmt-inf">
                                        <h5>
                                            <a href="#" title="">Daniel Kristen</a>
                                        </h5>
                                        <i class="spnd-tm">1 min ago</i>
                                        <p>Aenean massa. Cum sociis natoque penatibus et mag nis dis parturient montes mus.</p>
                                        <div class="act-pst-lk-stm">
                                            <a class="brd-rd5 green-bg-hover" href="#" title="">
                                                <i class="ion-heart"></i> Love</a>
                                            <a class="brd-rd5 blue-bg-hover" href="#" title="">
                                                <i class="ion-forward"></i> Reply</a>
                                        </div>
                                    </div>
                                </div>
                                <ul class="sb-cmts">
                                    <li>
                                        <div class="rcnt-cmt-itm">
                                            <img class="brd-rd50" src="/images/resource/acti-thmb2.jpg" alt="" />
                                            <div class="rcnt-cmt-inf">
                                                <h5>
                                                    <a href="#" title="">Richa Stone</a>
                                                </h5>
                                                <i class="spnd-tm">3 sec ago</i>
                                                <p>Aenean massa. Cum sociis natoque penati nis dis parturient montes.</p>
                                                <div class="act-pst-lk-stm">
                                                    <a class="brd-rd5 green-bg-hover" href="#" title="">
                                                        <i class="ion-heart"></i> Love</a>
                                                    <a class="brd-rd5 blue-bg-hover" href="#" title="">
                                                        <i class="ion-forward"></i> Reply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <form class="wrt-cmt brd-rd5">
                            <i class="ion-android-camera blue-clr"></i>
                            <input type="text" placeholder="Write Your Comment Here" />
                        </form>
                    </div>
                </div>
                <div class="col-md-4 grid-item col-sm-6 col-lg-4">
                    <div class="widget flw-usr pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <div class="flw-usr-wrp">
                            <span class="flw-usr-bg" style="background-image: url(images/flw-usr-bg.jpg);"></span>
                            <img class="brd-rd50" src="/images/resource/flw-usr.jpg" alt="" />
                            <div class="flw-usr-inf">
                                <h4>Micheal Doe</h4>
                                <span class="blue-clr">Project Manager</span>
                                <p>Aenean massa. Cum sociis natque pe natibus et magnis dis parturint mont es, nascetur ridiculus
                                    mus.
                                </p>
                                <a class="brd-rd5 blue-bg" href="#" title="">Follow Me</a>
                            </div>
                            <div class="usr-flwrs">
                                <div class="usr-flwr-itm">
                                    <span class="blue-clr">
                                        <i class="counter">760</i>
                                    </span>
                                    <i>Articles</i>
                                </div>
                                <div class="usr-flwr-itm">
                                    <span class="blue-clr">
                                        <i class="counter">19,291</i>
                                    </span>
                                    <i>Followers</i>
                                </div>
                                <div class="usr-flwr-itm">
                                    <span class="blue-clr">
                                        <i class="counter">5421</i>
                                    </span>
                                    <i>Following</i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 grid-item col-sm-6 col-lg-4">
                    <div class="widget usr-msgs pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <h4 class="widget-title">Message</h4>
                        <div class="msgs-lst">
                            <div class="msg-itm">
                                <span class="brd-rd50" style="background-color: #26c6da;color: #ffffff;">S
                                    <i class="sts away"></i>
                                </span>
                                <div class="msg-inf">
                                    <h5>Sunil Joshi -</h5>
                                    <span class="pst-tm">12:00pm</span>
                                    <div class="msg">
                                        <p>That's awesome!</p>
                                    </div>
                                </div>
                            </div>
                            <div class="msg-itm">
                                <span class="brd-rd50" style="background-color: #26c6da;color: #ffffff;">
                                    <img class="brd-rd50" src="/images/resource/acti-thmb2.jpg" alt="" />
                                    <i class="sts online"></i>
                                </span>
                                <div class="msg-inf">
                                    <h5>Bvesh Patel -</h5>
                                    <span class="pst-tm">01:00am</span>
                                    <div class="msg">
                                        <p>That's awesome!</p>
                                    </div>
                                </div>
                            </div>
                            <div class="msg-itm">
                                <span class="brd-rd50" style="background-color: #26c6da;color: #ffffff;">N
                                    <i class="sts dont-dstrb"></i>
                                </span>
                                <div class="msg-inf">
                                    <h5>Nirva Joshi -</h5>
                                    <span class="pst-tm">08:40pm</span>
                                    <div class="msg">
                                        <p>That's awesome!</p>
                                    </div>
                                </div>
                            </div>
                            <div class="msg-itm">
                                <span class="brd-rd50" style="background-color: #26c6da;color: #ffffff;">J
                                    <i class="sts online"></i>
                                </span>
                                <div class="msg-inf">
                                    <h5>Jonathan -</h5>
                                    <span class="pst-tm">12:00pm</span>
                                    <div class="msg">
                                        <p>That's awesome!</p>
                                    </div>
                                </div>
                            </div>
                            <div class="vw-mr">
                                <a href="#" title="">View More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 grid-item col-sm-6 col-lg-4">
                    <div class="widget upld-spd pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <div class="upld-inr">
                            <i class="ion-android-upload blue-clr"></i>
                            <h4>Uploading Speed</h4>
                            <span>Your current Uploading Speed</span>
                        </div>
                        <div id="circl-prg"></div>
                        <div class="upld-inf">
                            <h5>Uploading</h5>
                            <span class="blue-clr">my_photo.png</span>
                        </div>
                        <span class="upld-sped">
                            <i class="ion-arrow-up-a"></i> Speed:
                            <span class="blue-clr">450 kbps</span>
                        </span>
                    </div>
                </div>
                <div class="col-md-12 grid-item col-sm-12 col-lg-12">
                    <div class="widget calndr-wdgt pad50-40">
                        <div class="wdgt-opt">
                            <span class="wdgt-opt-btn">
                                <i class="ion-android-more-vertical"></i>
                            </span>
                            <div class="wdgt-opt-lst brd-rd5">
                                <a class="delt-wdgt" href="#" title="">Delete</a>
                                <a class="expnd-wdgt" href="#" title="">Expand</a>
                                <a class="refrsh-wdgt" href="#" title="">Refresh</a>
                            </div>
                        </div>
                        <div class="wdgt-ldr">
                            <div class="ball-scale-multiple">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <h4 class="widget-title">Calendar</h4>
                        <div class="calndr-wrp">
                            <a class="blue-bg brd-rd5" href="#" title="">Add Event</a>
                            <span class="slct-bx">
                                <i class="ion-android-funnel"></i>
                                <span>
                                    <select>
                                        <option>Monthly</option>
                                        <option>Yearly</option>
                                        <option>Weekly</option>
                                    </select>
                                </span>
                            </span>
                            <div id="calendar"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Filter Items -->
        </div>
    </div>
    <!-- Panel Content -->

