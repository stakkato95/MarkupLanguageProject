/**
 * Created by Artyom on 11.05.2015.
 */
function loadXMLDoc(documentName) {
    if (window.XMLHttpRequest) {
        xhttp = new XMLHttpRequest();
    } else {
        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xhttp.open("GET",documentName,false);
    xhttp.send("");
    return xhttp.responseXML;
}

function loadDatatypes() {
    var xml = loadXMLDoc("../lab/datatypesProject.xml");
    var xsl = loadXMLDoc("../lab/datatypesProject.xslt");

    processor = new XSLTProcessor();
    processor.importStylesheet(xsl);

    document.getElementById('typesFrame').innerHTML = xml.responseText;
}