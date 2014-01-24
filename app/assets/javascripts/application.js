// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require app-proximo.min
//= require ckeditor/override
//= require ckeditor/init
//= require app-proximo.min.js
//= require proximo
//= require home
//= require globalize.min
//= require dx.chartjs
//= require jquery.tmpl.min
//= require cloudinary

//Get the context of the canvas element we want to select


var dataSource = [
    { state: "Janeiro", year1998: 423.721, year2001: 476.851, year2004: 528.904 },
    { state: "Fevereiro", year1998: 178.719, year2001: 195.769, year2004: 227.271 },
    { state: "Março", year1998: 308.845, year2001: 335.793, year2004: 372.576 },
    { state: "Maio", year1998: 550.845, year2001: 235, year2004: 423 },
];
 
$("#pf-visitas").dxChart({
    dataSource: dataSource,
    commonSeriesSettings: {
        argumentField: "state",
        type: "bar",
        hoverMode: "allArgumentPoints",
        selectionMode: "allArgumentPoints",
        label: {
            visible: true,
            format: "fixedPoint",
            precision: 0
        }
    },
    series: [
        { valueField: "year2004", name: "Novos Clientes" },
        { valueField: "year2001", name: "Clientes" },
        { valueField: "year1998", name: "Visitas" }
    ],
    title: "",
    legend: {
        verticalAlignment: "bottom",
        horizontalAlignment: "center"
    },
    tooltip: {
        enabled: true,
    }
});
var oEditor = CKEDITOR.instances.destino_full_text;

