const areaPath = '/json/area/korea.json';

var areaLayer = new ol.layer.Vector({
    name: 'areaLayer1', opacity: 0.75,
    // geojson을 포맷
    source: new ol.source.Vector({ format: new ol.format.GeoJSON(), projection: 'EPSG:4326', url: areaPath }),
    // 스타일 적용(테두리 두께 및 색상 설정)
    style: new ol.style.Style({ stroke: new ol.style.Stroke({color: 'green', width: 1 }) }), zIndex: 20
});

var defaultLayer = new ol.layer.Tile({
    source: new ol.source.OSM({
        url: 'https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}.png'
    })
});


var map = new ol.Map({
    target: 'map',
    layers: [defaultLayer],
    view: new ol.View({
        center: ol.proj.fromLonLat([127.8, 36.3]),
        zoom: 7.5
    }),
    interactions: new ol.interaction.defaults({
        altShiftDragRotate: false, //alt+shift+드래그 회전을 원하는지
        doubleClickZoom: false, // 더블클릭 줌이 필요한지
        dragPan: true, //드래그 팬(이동)이 필요한지
        mouseWheelZoom: true, //마우스 휠 줌이 필요한지
        pinchRotate: false, //핀치 회전이 필요한지
        pinchZoom: false, // 핀치 줌이 필요한지
        shiftDragZoom: false //shift+드래그 줌이 필요한지
    }),
});

export function addLayer(){
    map.addLayer(areaLayer);
}

export function removeLayer(){
    map.removeLayer(areaLayer);
}


