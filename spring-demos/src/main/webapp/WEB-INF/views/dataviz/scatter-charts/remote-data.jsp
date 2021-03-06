<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/dataviz/scatter-charts/remote-data/read" var="readUrl" />

<demo:header />
	<div id="example" class="k-content">
         <div class="chart-wrapper">
         	 <kendo:chart name="chart">
         	 	 <kendo:chart-title text="Price-Performance Ratio" />
         	 	 <kendo:chart-legend visible="false" />
         	 	 <kendo:dataSource>
	        	 	 <kendo:dataSource-transport>
	             		 <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json" />
	                 </kendo:dataSource-transport>
                 </kendo:dataSource>
         	 	 <kendo:chart-series>
         	 	 	<kendo:chart-seriesItem type="scatter" xfield="price" yfield="performance" />
         	 	 </kendo:chart-series>
         	 	 <kendo:chart-xAxis>
         	 	 	<kendo:chart-xAxisItem max="1000">
         	 	 		<kendo:chart-xAxisItem-labels format="\${0}" />
         	 	 		<kendo:chart-xAxisItem-title text="Price" />
         	 	 	</kendo:chart-xAxisItem>
         	 	 </kendo:chart-xAxis>
         	 	 <kendo:chart-yAxis>
         	 	 	<kendo:chart-yAxisItem min="80">
         	 	 		<kendo:chart-yAxisItem-labels format="{0}%" />
         	 	 		<kendo:chart-yAxisItem-title text="Performance Ratio" />
         	 	 	</kendo:chart-yAxisItem>
         	 	 </kendo:chart-yAxis>
         	 	 <kendo:chart-tooltip visible="true" template="#= '<b>$' + value.x + ' / ' + dataItem.Family + ' ' + dataItem.Model + ': ' + value.y + '%</b>' #" />
         	 </kendo:chart>
        </div>
    </div>
<demo:footer />