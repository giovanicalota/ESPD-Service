<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


	<form:form id="espdform" role="form" class="form-horizontal" method="post" commandName="espd" data-toggle="validator">
	
	<div class="panel-default">
	
		<div class="panel panel-default no-border">	
			<ul class="nav nav-pills nav-wizard nav-justified">
			    <li class="active"><a href="#"><i class="fa fa-random"></i>&nbsp;<span data-i18n="progress_start"><s:message code='progress_start'/></span></a><div class="nav-arrow"></div></li>
			    <li class="active"><div class="nav-wedge"></div><a href="#"><i class="fa fa-university"></i>&nbsp;<span data-i18n="progress_procedure"><s:message code='progress_procedure'/></span></a><div class="nav-arrow"></div></li>
			    <li class="active"><div class="nav-wedge"></div><a href="#"><i class="fa fa-exclamation"></i>&nbsp;<span data-i18n="progress_exclusion"><s:message code='progress_exclusion'/></span></a><div class="nav-arrow"></div></li>
			    <li><div class="nav-wedge"></div><a href="#"><i class="fa fa-check-circle"></i>&nbsp;<span data-i18n="progress_selection"><s:message code='progress_selection'/></span></a><div class="nav-arrow"></div></li>
			    <li><div class="nav-wedge"></div><a href="#"><i class="fa fa-download"></i>&nbsp;<span data-i18n="progress_finish"><s:message code='progress_finish'/></span></a></li>
			</ul>
		</div>

		<div class="paragraph">
			<h2>
				<span data-i18n="createcaexcl_header"><s:message code="createcaexcl_header"/></span>
				(${(param['agent'] == "eo")?"I am EO":"I am CA"})
			</h2>
		</div>
		
		<div class="panel panel-default espd-panel">
			<div data-i18n="crit_top_title_grounds_criminal_conv" class="espd-panel-heading">
				<s:message code="crit_top_title_grounds_criminal_conv"/>
			</div>
			<div class="espd-panel-body panel-body">
			
					<div class="">
						<span data-i18n="crit_eu_main_title_grounds_criminal_conv">
							<s:message code='crit_eu_main_title_grounds_criminal_conv'/>
						</span>
						<span data-i18n="crit_eu_main_tooltip_grounds_criminal_conv" data-toggle="tooltip" title="<s:message code='crit_eu_main_tooltip_grounds_criminal_conv'/>"></span>
					</div>
						
					<c:set var="field" value="criminalConvictions" scope="session"/>
					<c:set var="title_code" value="crit_eu_title_grounds_criminal_conv" scope="session"/>
					<c:set var="tooltip_code" value="crit_eu_tooltip_grounds_criminal_conv" scope="session"/>
					<jsp:include page="editors/criteria.jsp"/>
					
					<c:set var="field" value="corruption" scope="session"/>
					<c:set var="title_code" value="crit_eu_title_corruption" scope="session"/>
					<c:set var="tooltip_code" value="crit_eu_tooltip_corruption" scope="session"/>
					<jsp:include page="editors/criteria.jsp"/>
					
					<c:set var="field" value="fraud" scope="session"/>
					<c:set var="title_code" value="crit_eu_title_fraud" scope="session"/>
					<c:set var="tooltip_code" value="crit_eu_tooltip_fraud" scope="session"/>
					<jsp:include page="editors/criteria.jsp"/>
					
					<c:set var="field" value="terroristOffences" scope="session"/>
					<c:set var="title_code" value="crit_eu_title_terrorist" scope="session"/>
					<c:set var="tooltip_code" value="crit_eu_tooltip_terrorist" scope="session"/>
					<jsp:include page="editors/criteria.jsp"/>
					
					<c:set var="field" value="moneyLaundering" scope="session"/>
					<c:set var="title_code" value="crit_eu_title_money_laundering" scope="session"/>
					<c:set var="tooltip_code" value="crit_eu_tooltip_money_laundering" scope="session"/>
					<jsp:include page="editors/criteria.jsp"/>
					
					<c:set var="field" value="childLabour" scope="session"/>
					<c:set var="title_code" value="crit_eu_title_child_labour" scope="session"/>
					<c:set var="tooltip_code" value="crit_eu_tooltip_child_labour" scope="session"/>
					<jsp:include page="editors/criteria.jsp"/>

			</div>
		</div>
	
		<div class="panel panel-default espd-panel">
		
			<span data-i18n="crit_top_title_grounds_payment_taxes" class="espd-panel-heading">
				<s:message code="crit_top_title_grounds_payment_taxes"/>
			</span>
					
			<div class="espd-panel-body panel-body">
			
				<div class="">
					<span data-i18n="crit_eu_main_title_payment_taxes">
						<s:message code='crit_eu_main_title_payment_taxes'/>
					</span>
					<span data-i18n="crit_eu_main_tooltip_payment_taxes" data-toggle="tooltip" title="<s:message code='crit_eu_main_tooltip_payment_taxes'/>"></span>
				</div>
					
				<c:set var="field" value="paymentTaxes" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_payment_taxes" scope="session"/>
				<c:set var="tooltip_code" value="" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
					
				<c:set var="field" value="paymentSocsec" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_payment_social_security" scope="session"/>
				<c:set var="tooltip_code" value="" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
				
			</div>
		</div>
	
		<div class="panel panel-default espd-panel">
			<div data-i18n="crit_top_title_insolvency_conflicts" class="espd-panel-heading">
				<s:message code="crit_top_title_insolvency_conflicts"/>
			</div>
			<div class="espd-panel-body panel-body">

				<div class="">
					<span data-i18n="crit_eu_main_breaching_obligations">
						<s:message code='crit_eu_main_breaching_obligations'/>
					</span>
					<span data-i18n="crit_eu_main_tooltip_breaching_obligations" data-toggle="tooltip" title="<s:message code='crit_eu_main_tooltip_breaching_obligations'/>"></span>
				</div> 

					
				<c:set var="field" value="breachingObligations" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_breaching_obligations" scope="session"/>
				<c:set var="tooltip_code" value="crit_eu_tooltip_breaching_obligations" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
					
				<c:set var="field" value="bankruptSubject" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_bankrupt" scope="session"/>
				<c:set var="tooltip_code" value="" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
					
				<c:set var="field" value="guiltyGrave" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_guilty_misconduct" scope="session"/>
				<c:set var="tooltip_code" value="" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
					
				<c:set var="field" value="agreementsEo" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_agreement_economic" scope="session"/>
				<c:set var="tooltip_code" value="" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
					
				<c:set var="field" value="conflictInterest" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_conflict_interest" scope="session"/>
				<c:set var="tooltip_code" value="" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
					
				<c:set var="field" value="involvementPreparation" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_involvment" scope="session"/>
				<c:set var="tooltip_code" value="" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
					
				<c:set var="field" value="earlyTermination" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_early_termination" scope="session"/>
				<c:set var="tooltip_code" value="" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
					
				<c:set var="field" value="guiltyMisinterpretation" scope="session"/>
				<c:set var="title_code" value="crit_eu_title_guilty_misinterpretation" scope="session"/>
				<c:set var="tooltip_code" value="" scope="session"/>
				<jsp:include page="editors/criteria.jsp"/>
				
			</div>
		</div>
	
		<div class="col-md-7">&nbsp;</div>
		<div class="col-md-5">
			<div class="btn-group">
				<button type="submit" name="prev" class="btn btn-default btn-lg">
					<i class="fa fa-arrow-circle-o-left"></i>
					<span data-i18n="previous"><s:message code="previous"/></span>
				</button>
				<a class="btn btn-default btn-lg" href="${pageContext.request.contextPath}/welcome">
				<i class="fa fa-times-circle"></i>
				<span data-i18n="cancel"><s:message code="cancel"/></span>
				</a>

				<button type="submit" name="next" class="btn btn-default btn-lg">
					<i class="fa fa-arrow-circle-o-right"></i>
					<span data-i18n="next"><s:message code="next"/></span>
				</button>
			</div>
		</div>    
	</div>
	
	</form:form>
	