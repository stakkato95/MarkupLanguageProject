<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head lang="en">
                <link href="../style/baseStyles.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <div>
                <div id="header" class="headerDiv">
                    <h1>Sharp vs Java</h1>

                    <h2>it's such a review-comparison</h2>

                    <div id="Menu">
                        <ul class="navigationBar">
                            <li><a href="HistoryOfLanguages/historyOfLanguages.html">HISTORY OF LANGUAGES</a></li>
                            <li><a href="">DIFFERENCES</a></li>
                            <ul>
                                <li><a href="#">DATA TYPES</a></li>
                                <li><a href="#">OPERATORS</a></li>
                                <li><a href="#">CODE STYLE</a></li>
                                <li><a href="#">ACCESSORS</a></li>
                                <li><a href="#">INTERFACES</a></li>
                                <li><a href="#">ENUMS</a></li>
                            </ul>
                            <li><a href="">SIMILARITIES</a></li>
                            <ul>
                                <li><a href="#">GARBAGE COLLECTING</a></li>
                                <li><a href="#">GENERICS</a></li>
                                <li><a href="#">PROPERTIES</a></li>
                                <li><a href="#">EXCEPTIONS</a></li>
                            </ul>
                            <li><a href="">MARKET</a>
                                <ul>
                                    <li><a href="#">DESKTOP APPS</a></li>
                                    <li><a href="#">MOBILE APPS</a></li>
                                    <li><a href="#">SERVER APPS</a></li>
                                </ul>
                            </li>
                            <li><a href="#">PROSPECTS</a></li>
                            <li><a href="#">UPCOMING CHANGES</a></li>
                            <li><a href="#">PLACEMENT</a></li>
                            <li><a href="#">ABOUT PROJECT</a></li>
                        </ul>
                    </div>
                </div>
                <div id="container" class="containerDiv">

                <div id="content" class="contentDiv">

                <div class="articleDiv">
                    <h3>Data types in programming</h3>

                    <p>
                        The actual range of primitive data types that is available is dependent upon the specific
                        programming language that is being used. For example, in C, strings are a composite but built-in
                        data type, whereas in modern dialects of BASIC and in JavaScript, they are assimilated to a
                        primitive data type that is both basic and built-in.<br/>
                        Classic basic primitive types may include:
                        <ul>
                            <li>Character</li>
                            <li>Integer</li>
                            <li>Floating-point number</li>
                            <li>Fixed-point number</li>
                            <li>Boolean</li>
                            <li>Reference (also called a pointer or handle), a small value referring to another object's address
                                in
                                memory, possibly a much larger one.
                            </li>
                        </ul>
                    </p>
                </div>

                <div class="articleDiv">
                    <h3>Data types in C#</h3>

                    <p>
                        C# provides all the data types that are available in Java, and adds support for unsigned numerals
                        and a new 128-bit high-precision floating-point type.<br/><br/>
                        The only difference between signed and unsigned numerals is that signed ones encode negative numbers
                        as well a s positive ones in binary number systems. It is achieved by using a sign bit to represent
                        the sign (0 for a positive number, and set to 1 for a negative number).<br/><br/>
                        For each primitive data type in Java, the core class library provides a wrapper class that
                        represents it as a Java object. For example, the Int32 class wraps the int data type, and the Double
                        class wraps the double data type.<br/><br/>
                        On the other hand, all primitive data types in C# are objects in the System namespace. For each data
                        type, a short name, or alias, is provided. For instance, int is the short name for System.Int32 and
                        double is the short form of System.Double.<br/><br/>
                        The list of C# data types and their aliases is provided in the following table.
                <table border="1">
                    <tr>
                        <th>Number</th>
                        <th>Short Name</th>
                        <th>.NET Class</th>
                        <th>Type</th>
                        <th>Width</th>
                        <th>Range (bits)</th>
                    </tr>
                    <xsl:for-each select="table/row[position()>1]">
                        <xsl:sort select="name"/>
                        <tr>
                            <!--USE WITHOUT CODE BELOW-->
                            <!--<xsl:if test="class[contains(@href,'byte')]">-->
                                <!--<td><xsl:value-of select="name"/></td>-->
                                <!--<td><xsl:value-of select="class"/></td>-->
                                <!--<td><xsl:value-of select="type"/></td>-->
                                <!--<td><xsl:value-of select="width"/></td>-->
                                <!--<td><xsl:value-of select="range"/></td>-->
                            <!--</xsl:if>-->

                            <td><xsl:number value="position()"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <xsl:choose>
                                <xsl:when test="contains(class,'Int')">
                                    <td><xsl:value-of select="upper-case(class)"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="class"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td><xsl:value-of select="type"/></td>
                            <td><xsl:value-of select="width"/></td>
                            <td><xsl:value-of select="range"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </p>
        </div>

                    <div class="articleDiv">
                        <h3>Data types in Java</h3>

                        <p>
                            The eight primitive data types supported by the Java programming language are:

                            <ul class="paddedUl">
                                <li> byte: The byte data type is an 8-bit signed two's complement integer. It has a minimum value of
                                    -128 and a maximum value of 127 (inclusive). The byte data type can be useful for saving memory
                                    in large arrays, where the memory savings actually matters. They can also be used in place of
                                    int
                                    where their
                                    limits help to clarify your code; the fact that a variable's range is limited can serve as a
                                    form of documentation.<br/>
                                </li>
                                <li>short: The short data type is a 16-bit signed two's complement integer. It has a minimum value
                                    of
                                    -32,768 and a maximum value of 32,767 (inclusive). As with byte, the same guidelines apply: you
                                    can
                                    use a short to save memory in large arrays, in situations where the memory savings actually
                                    matters.<br/>
                                </li>
                                <li>int: By default, the int data type is a 32-bit signed two's complement integer, which has a
                                    minimum value of -231 and a maximum value of 231-1. In Java SE 8 and later, you can use the int
                                    data
                                    type to represent an unsigned 32-bit integer, which has a minimum value of 0 and a maximum value
                                    of
                                    232-1. Use the Integer class to use int data type as an unsigned integer. See the section The
                                    Number
                                    Classes for more information. Static methods like compareUnsigned, divideUnsigned etc have been
                                    added to the Integer class to support the arithmetic operations for unsigned integers.<br/>
                                </li>
                                <li>long: The long data type is a 64-bit two's complement integer. The signed long has a minimum
                                    value of -263 and a maximum value of 263-1. In Java SE 8 and later, you can use the long data
                                    type to
                                    represent an unsigned 64-bit long, which has a minimum value of 0 and a maximum value of 264-1.
                                    Use this data type when you need a range of values wider than those provided by int. The Long
                                    class
                                    also contains methods like compareUnsigned, divideUnsigned etc to support arithmetic operations
                                    for
                                    unsigned long.<br/>
                                </li>
                                <li>float: The float data type is a single-precision 32-bit IEEE 754 floating point. Its range of
                                    values is beyond the scope of this discussion, but is specified in the Floating-Point Types,
                                    Formats,
                                    and Values section of the Java Language Specification. As with the recommendations for byte and
                                    short, use a float (instead of double) if you need to save memory in large arrays of floating
                                    point
                                    numbers. This data type should never be used for precise values, such as currency. For that, you
                                    will need to use the java.math.BigDecimal class instead. Numbers and Strings covers BigDecimal
                                    and other useful classes provided by the Java platform.<br/>
                                </li>
                                <li>double: The double data type is a double-precision 64-bit IEEE 754 floating point. Its range of
                                    values is beyond the scope of this discussion, but is specified in the Floating-Point Types,
                                    Formats, and Values section of the Java Language Specification. For decimal values, this data
                                    type is generally the default choice. As mentioned above, this data type should never be used
                                    for precise values, such as currency.<br/>
                                </li>
                                <li>boolean: The boolean data type has only two possible values: true and false. Use this data type
                                    for simple flags that track true/false conditions. This data type represents one bit of
                                    information, but its "size" isn't something that's precisely defined.<br/>
                                </li>
                                <li>char: The char data type is a single 16-bit Unicode character. It has a minimum value of
                                    '\u0000' (or 0) and a maximum value of '\uffff' (or 65,535 inclusive).<br/>
                                </li>
                            </ul>


                        </p>
                    </div>

                </div>

                    <div id="lastAdded" class="lastAddedDiv">
                        <h3>Last added articles</h3>

                        <h3>
                            <a href="index.html" class="lastAddedTitle">Article title</a>
                        </h3>

                        <p>Short description Short description Short description Short description Short description
                            Short description Short description Short description Short description Short description Short
                            description Short description
                            Short description Short description Short description Short description Short description Short
                            description Short description </p>
                    </div>
                </div>
                    <div id="footer" class="footerDiv">
                        <div class="footerTextLeft">Grodno, White Dew 45/11<br/>+375 29 96 177 28<br/>stakkato95@gmail.com</div>
                        <div class="footerTextCenter">© 2015 sharpvsjava.by</div>
                        <div class="footerTextRight">sharpvsjava.by - project describing primary, in the<br/>opinion of the author,
                            differences between<br/>Java and C# programming languages
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>