import { Controller } from "@hotwired/stimulus"
import ApexCharts from "apexcharts";
import _ from "lodash";

// Connects to data-controller="competing-user-success-chart"
export default class extends Controller {
  connect() {
    $(document).ready(function () {

      setTimeout(function () {
        var screenWidth = $(window).width();

				var options = {
          series: [{
              name: 'Net Profit',
              data: [100, 300, 100, 400, 200, 400],
          }, ],
          chart: {
              type: 'area',
              height: 40,
              width: 60,
              toolbar: {
                  show: false,
              },
              zoom: {
                  enabled: false
              },
              sparkline: {
                  enabled: true
              }
          },
          colors: ['var(--secondary)'],
          dataLabels: {
              enabled: false,
          },
          legend: {
              show: false,
          },
          stroke: {
              show: true,
              width: 3,
              curve: 'smooth',
              colors: ['var(--secondary)'],
          },
          grid: {
              show: false,
              borderColor: '#DBDBDB',
              padding: {
                  top: 0,
                  right: 0,
                  bottom: 0,
                  left: 0
              },
    yaxis: {
      lines: {
        show: false
      }
    },
    xaxis: {
      lines: {
        show: false
      }
    },
          },
          states: {
              normal: {
                  filter: {
                      type: 'none',
                      value: 0
                  }
              },
              hover: {
                  filter: {
                      type: 'none',
                      value: 0
                  }
              },
              active: {
                  allowMultipleDataPointsSelection: false,
                  filter: {
                      type: 'none',
                      value: 0
                  }
              }
          },
          xaxis: {
              categories: ['Jan', 'feb', 'Mar', 'Apr', 'May'],
              axisBorder: {
                  show: true,
              },
              axisTicks: {
                  show: false
              },
              labels: {
                  show: false,
                  style: {
                      fontSize: '12px',
                  }
              },
              crosshairs: {
                  show: false,
                  position: 'front',
                  stroke: {
                      width: 1,
                      dashArray: 3
                  }
              },
              tooltip: {
                  enabled: true,
                  formatter: undefined,
                  offsetY: 0,
                  style: {
                      fontSize: '12px',
                  }
              }
          },
          yaxis: {
              show: false,
          },
          fill: {
    type: 'gradient',
    colors: 'var(--secondary)',
    gradient: {
      shade: 'light',
      shadeIntensity: 0.5,
      gradientToColors: undefined,
      inverseColors: true,
      opacityFrom: 1,
      opacityTo: 1,
      stops: [0, 50, 100],
      colorStops: [[
        {
          offset: 0,
          color: 'var(--secondary)',
          opacity: .5
        },
        {
          offset: 0.5,
          color: 'var(--secondary)',
          opacity: .3
        },
        {
          offset: 100,
          color: '#fff',
          opacity: 1
        }
        ]]
    },
          },
          tooltip: {
              enabled: false,
              style: {
                  fontSize: '12px',
              },
              y: {
                  formatter: function(val) {
                      return "$" + val + " thousands"
                  }
              }
          },
  responsive: [{
    breakpoint: 1601,
    options: {
      chart: {
        width:'100%'
      },
    }
  }]
      };






        var chartBar1 = new ApexCharts(
          document.querySelector("#userxyz"),
          options
        );
        chartBar1.render();
      }, 1000);

    });
  }
}
