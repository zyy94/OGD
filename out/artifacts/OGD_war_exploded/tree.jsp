<%--
  Created by IntelliJ IDEA.
  User: Andyliwr
  Date: 2016/4/14
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>树形图</title>
    <link type="text/css" rel="stylesheet" href="css/tree.css">
</head>
<body>
    <div id="main"></div>
    <!-- ECharts单文件引入 -->
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
    <script type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });

        // 使用
        require(
                [
                    'echarts',
                    'echarts/chart/tree' // 使用柱状图就加载bar模块，按需加载
                ],
                function (ec) {
                    // 基于准备好的dom，初始化echarts图表
                    var myChart = ec.init(document.getElementById('main'));
                    option = {
                        title : {
                            text: 'ENSG00000139618-系统发育树',
                            subtext: 'ashdasdha'
                        },
                        tooltip : {
                            trigger: 'item',
                            formatter: "{b}: {c}"
                        },
                        toolbox: {
                            show : true,
                            feature : {
                                mark : {show: true},
                                dataView : {show: true, readOnly: false},
                                restore : {show: true},
                                saveAsImage : {show: true}
                            }
                        },
                        calculable : false,

                        series : [
                            {
                                name:'树图',
                                type:'tree',
                                orient: 'horizontal',  // vertical horizontal
                                rootLocation: {x: 100, y: '60%'}, // 根节点位置  {x: 'center',y: 10}
                                nodePadding: 20,
                                symbol: 'circle',
                                symbolSize: 40,
                                itemStyle: {
                                    normal: {
                                        label: {
                                            show: true,
                                            position: 'inside',
                                            textStyle: {
                                                color: '#cc9999',
                                                fontSize: 15,
                                                fontWeight:  'bolder'
                                            }
                                        },
                                        lineStyle: {
                                            color: '#000',
                                            width: 1,
                                            type: 'broken' // 'curve'|'broken'|'solid'|'dotted'|'dashed'
                                        }
                                    },
                                    emphasis: {
                                        label: {
                                            show: true
                                        }
                                    }
                                },
                                data: [
                                    {
                                        name: '手机',
                                        value: 6,
                                        symbolSize: [90, 70],
                                        symbol: 'image://http://www.iconpng.com/png/ecommerce-business/iphone.png',
                                        itemStyle: {
                                            normal: {
                                                label: {
                                                    show: false
                                                }
                                            }
                                        },
                                        children: [
                                            {
                                                name: '小米',
                                                value: 4,
                                                symbol: 'image://http://pic.58pic.com/58pic/12/36/51/66d58PICMUV.jpg',
                                                itemStyle: {
                                                    normal: {
                                                        label: {
                                                            show: false
                                                        }
                                                    }
                                                },
                                                symbolSize: [60, 60],
                                                children: [
                                                    {
                                                        name: '小米1',
                                                        symbol: 'circle',
                                                        symbolSize: 20,
                                                        value: 4,
                                                        itemStyle: {
                                                            normal: {
                                                                color: '#fa6900',
                                                                label: {
                                                                    show: true,
                                                                    position: 'right'
                                                                },

                                                            },
                                                            emphasis: {
                                                                label: {
                                                                    show: false
                                                                },
                                                                borderWidth: 0
                                                            }
                                                        }
                                                    },
                                                    {
                                                        name: '小米2',
                                                        value: 4,
                                                        symbol: 'circle',
                                                        symbolSize: 20,
                                                        itemStyle: {
                                                            normal: {
                                                                label: {
                                                                    show: true,
                                                                    position: 'right',
                                                                    formatter: "{b}"
                                                                },
                                                                color: '#fa6900',
                                                                borderWidth: 2,
                                                                borderColor: '#cc66ff'

                                                            },
                                                            emphasis: {
                                                                borderWidth: 0
                                                            }
                                                        }
                                                    },
                                                    {
                                                        name: '小米3',
                                                        value: 2,
                                                        symbol: 'circle',
                                                        symbolSize: 20,
                                                        itemStyle: {
                                                            normal: {
                                                                label: {
                                                                    position: 'right'
                                                                },
                                                                color: '#fa6900',
                                                                brushType: 'stroke',
                                                                borderWidth: 1,
                                                                borderColor: '#999966',
                                                            },
                                                            emphasis: {
                                                                borderWidth: 0
                                                            }
                                                        }
                                                    }
                                                ]
                                            },
                                            {
                                                name: '苹果',
                                                symbol: 'image://http://www.viastreaming.com/images/apple_logo2.png',
                                                symbolSize: [60, 60],
                                                itemStyle: {
                                                    normal: {
                                                        label: {
                                                            show: false
                                                        }

                                                    }
                                                },
                                                value: 4
                                            },
                                            {
                                                name: '华为',
                                                symbol: 'image://http://market.huawei.com/hwgg/logo_cn/download/logo.jpg',
                                                symbolSize: [60, 60],
                                                itemStyle: {
                                                    normal: {
                                                        label: {
                                                            show: false
                                                        }

                                                    }
                                                },
                                                value: 2
                                            },
                                            {
                                                name: '联想',
                                                symbol: 'image://http://www.lenovo.com.cn/HomeUpload/Home001/6d94ee9a20140714.jpg',
                                                symbolSize: [100, 40],
                                                itemStyle: {
                                                    normal: {
                                                        label: {
                                                            show: false
                                                        }

                                                    }
                                                },
                                                value: 2
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    };
                    // 为echarts对象加载数据
                    myChart.setOption(option);
                });


    </script>
</body>
</html>