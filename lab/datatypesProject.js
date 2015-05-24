/**
 * Created by Artyom on 11.05.2015.
 */
function loadXMLDoc(documentName) {
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", documentName, false);
    xhttp.send("");
    return xhttp.responseXML;
}

function loadDatatypes() {
    var xml = loadXMLDoc("../lab/datatypesProject.xml");
    var xsl = loadXMLDoc("../lab/datatypesProject.xsl");
    xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(xsl);
    resultDocument = xsltProcessor.transformToFragment(xml, document);

    document.getElementById('typesFrame').appendChild(resultDocument);
}