<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c3</title>
    <!-- C3 css 추가 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
    <!--d3 c3 js추가 -->
    <script src="https://d3js.org/d3.v3.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
</head>
<body>
    <div class="tn_chrat">
    </div>
</body>

<script>
    var chart = c3.generate({
        bindto: '.tn_chrat',
        data: {
            columns: [
                ['이용자 평균점수', 30, 90, 30, 40, 10, 15], //차트명, 차트별 value
                ['진단결과', 50, 100, 40, 50, 20, 45],
            ]

        },
        grid: {
            y: {
                show: false // 선여부
            },
        },
        bar: {
            width: {
                ratio: 0.3
            }
        },
        axis: {
            x: {
                type: 'category', //그룹 막대일 때 지정
                categories: ['종합', '필요성', '태도', '신념', '심리상태', '기술'],
            },
            y: {
                max: 100, //최대값
                min: 0, //최소값
                padding: {
                    top: 0,
                    bottom: 0
                },
                tick: {
                    count: 6
                }
            },

        },
        tooltip: { // 툴팁 여부
            show: true
        },
        legend: { //범례여부
            show: true
        },
        padding: {
            bottom: 20,
            top: 20
        }

    });
</script>
</html>
