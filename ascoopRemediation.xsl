<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.og/2001/XMLSchema"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="http://www.loc.gov/mods/v3"
    xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.loc.gov/mods/v3"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>

    <xsl:template match="subject[@authority]"/>

    <xsl:template match="note"/>
    
    <xsl:template match="genre"/>

    <xsl:template match="relatedItem[@displayLabel='Collection']"/>
    
    <xsl:template match="relatedItem[@type='series']"/>
    
    <xsl:template match='mods'>
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <abstract>Weekly newsletter created for and by aviation students during WWII in order to unify the university and share news related to military training and social events occurring around the Knoxville campus.</abstract>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh85028351">
                <topic>College student newspapers and periodicals</topic>
            </subject>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh85148273">
                <topic>World War, 1939-1945</topic>
            </subject>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh88002030">
                <topic>College students' writings</topic>
            </subject>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh92003827">
                <topic>Military cadets</topic>
            </subject>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh85085189">
                <topic>Military education</topic>
            </subject>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh85002673">
                <topic>Air pilots</topic>
            </subject>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n2015029620">
                <name>
                    <namePart>Army Air Force Aviation Cadet Program (U.S.)</namePart>
                </name>
            </subject>
            <relatedItem displayLabel="Collection" type="host">
                <titleInfo>
                    <title>University of Tennessee Aviation Cadets Collection</title>
                </titleInfo>
                <identifier>MS.2816</identifier>
            </relatedItem>
        </xsl:copy>
    </xsl:template>
    
    <xsl:strip-space elements="*"/>
</xsl:stylesheet>