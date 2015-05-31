/**
 * Created by Artyom on 11.05.2015.
 */
function loadXMLDoc(documentName) {
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    }
    else {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.open("GET", documentName, false);
    xmlhttp.send();
    return xmlhttp.responseXML;
}

function loadDatatypes() {
    var xml = loadXMLDoc("xmlMenu.xml");
    var xsl = loadXMLDoc("menuXSLT.xsl");
    xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(xsl);
    resultDocument = xsltProcessor.transformToFragment(xml, document);

    document.getElementById('Menu').appendChild(resultDocument);
}
