import { Controller } from "@hotwired/stimulus";
import ApexCharts from "apexcharts";
import _ from "lodash";

// Connects to data-controller="predictions-chart"
export default class extends Controller {
  connect() {
    $(document).ready(function () {

      setTimeout(function () {
        var screenWidth = $(window).width();
        let draw = Chart.controllers.line.__super__.draw; //draw shadow

        var options = {
          series: [
            {
              name: "",
              data: [120, 90, 70, 40, 50, 18, 70],
              //radius: 12,
            },
            {
              name: "",
              data: [75, 50, 18, 70, 40, 70, 100],
            },
            {
              name: "",
              data: [110, 20, 40, 10, 40, 80, 50],
            },
          ],
          chart: {
            type: "bar",
            height: 285,

            toolbar: {
              show: false,
            },
          },
          plotOptions: {
            bar: {
              horizontal: false,
              columnWidth: "35%",
              endingShape: "rounded",
              borderRadius: 2,
            },
          },
          states: {
            hover: {
              filter: "none",
            },
          },
          colors: ["var(--primary)", "var(--secondary)", "var(--tertiary)"],
          dataLabels: {
            enabled: false,
          },
          markers: {
            shape: "circle",
          },

          legend: {
            show: false,
            fontSize: "14px",
            position: "top",
            labels: {
              colors: "#000000",
            },
            markers: {
              width: 18,
              height: 18,
              strokeWidth: 50,
              strokeColor: "#fff",
              fillColors: undefined,
              radius: 12,
            },
          },
          stroke: {
            show: true,
            width: 3,
            curve: "smooth",
            lineCap: "round",
            colors: ["transparent"],
          },
          grid: {
            borderColor: "#eee",
          },
          xaxis: {
            position: "bottom",
            categories: [
              "Jan",
              "Feb",
              "Mar",
              "Apr",
              "May",
              "Jun",
              "Jul",
            ],
            labels: {
              show: true,
              style: {
                colors: "#999999",
                fontSize: "14px",
                fontFamily: "poppins",
                fontWeight: 400,
                cssClass: "apexcharts-xaxis-label",
              },
            },
            axisBorder: {
              show: false,
            },
            crosshairs: {
              show: false,
            },
          },
          yaxis: {
            labels: {
              offsetX: -16,
              style: {
                colors: "#787878",
                fontSize: "13px",
                fontFamily: "poppins",
                fontWeight: 100,
                cssClass: "apexcharts-xaxis-label",
              },
            },
          },
          fill: {
            opacity: 1,
            colors: ["var(--secondary)", "var(--primary)", "var(--tertiary)"],
          },
          tooltip: {
            y: {
              formatter: function (val) {
                return " " + val + "";
              },
            },
          },
        };

        var chartBar1 = new ApexCharts(
          document.querySelector("#chartBar"),
          options
        );
        chartBar1.render();
      }, 1000);

    });
  }
}
