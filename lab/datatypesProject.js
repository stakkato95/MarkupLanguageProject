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
    var xml = loadXMLDoc("../lab/datatypesProject.xml");
    var xsl = loadXMLDoc("../lab/datatypesProject.xsl");
    xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(xsl);
    resultDocument = xsltProcessor.transformToFragment(xml, document);

    document.getElementById('typesFrame').appendChild(resultDocument);
}

function loadDatatypes1() {
    xmlDoc = loadXMLDoc("../lab/datatypesProject.xml");

    document.write("<table><tr><th>Short Name</th><th>.NET Class</th><th>Type</th><th>Width</th><th>Range (bits)</th></tr>");
    var x = xmlDoc.getElementsByTagName("row");
    for (i = 1; i < x.length; i++) {
        document.write("<tr><td>");
        document.write(x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue);
        document.write("</td><td>");
        document.write(x[i].getElementsByTagName("class")[0].childNodes[0].nodeValue);
        document.write("</td><td>");
        document.write(x[i].getElementsByTagName("type")[0].childNodes[0].nodeValue);
        document.write("</td><td>");
        document.write(x[i].getElementsByTagName("width")[0].childNodes[0].nodeValue);
        document.write("</td><td>");
        document.write(x[i].getElementsByTagName("range")[0].childNodes[0].nodeValue);
        document.write("</td></tr>");
    }

    document.write("</table>");
}

function loadDatatypesX() {
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    }
    else {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.open("GET", "../lab/datatypesProject.xml", false);
    xmlhttp.send();
    xmlDoc = xmlhttp.responseXML;

    htmlDoc = document.implementation.createHTMLDocument("");

    htmlDoc.write("<table><tr><th>Short Name</th><th>.NET Class</th><th>Type</th><th>Width</th><th>Range (bits)</th></tr>");
    var x = xmlDoc.getElementsByTagName("row");
    for (i = 1; i < x.length; i++) {
        htmlDoc.write("<tr><td>");
        htmlDoc.write(x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue);
        htmlDoc.write("</td><td>");
        htmlDoc.write(x[i].getElementsByTagName("class")[0].childNodes[0].nodeValue);
        htmlDoc.write("</td><td>");
        htmlDoc.write(x[i].getElementsByTagName("type")[0].childNodes[0].nodeValue);
        htmlDoc.write("</td><td>");
        htmlDoc.write(x[i].getElementsByTagName("width")[0].childNodes[0].nodeValue);
        htmlDoc.write("</td><td>");
        htmlDoc.write(x[i].getElementsByTagName("range")[0].childNodes[0].nodeValue);
        htmlDoc.write("</td></tr>");
    }

    htmlDoc.write("</table>");
    document.getElementById('typesFrame').appendChild(htmlDoc);
}