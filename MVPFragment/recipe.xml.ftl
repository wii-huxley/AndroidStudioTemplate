<?xml version="1.0"?>
<!-- 主要用于生成我们实际需要的代码 -->
<recipe>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

	<#if hasActivity>
		<instantiate from="root/src/app_package/MVPActivity.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Activity.java" />
		<open file="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Activity.java" />

		<#if isLayouts>
			<instantiate from="root/res/layout/mvp_activity.xml.ftl"
				to="${escapeXmlAttribute(resOut)}/layouts/${mvpName?lower_case}/layout/activity_${mvpName?lower_case}.xml" />
			<open file="${escapeXmlAttribute(resOut)}/layouts/${mvpName?lower_case}/layout/activity_${mvpName?lower_case}.xml"/>
		<#else>
			<instantiate from="root/res/layout/mvp_activity.xml.ftl"
				to="${escapeXmlAttribute(resOut)}/layout/${mvpName?lower_case}_activity.xml" />
			<open file="${escapeXmlAttribute(resOut)}/layout/${mvpName?lower_case}_activity.xml"/>
		</#if>
	</#if>
	
    <#if isLayouts>
		<instantiate from="root/res/layout/mvp_fragment.xml.ftl"
			to="${escapeXmlAttribute(resOut)}/layouts/${mvpName?lower_case}/layout/fragment_${mvpName?lower_case}.xml" />
		<open file="${escapeXmlAttribute(resOut)}/layouts/${mvpName?lower_case}/layout/fragment_${mvpName?lower_case}.xml"/>
	<#else>
		<instantiate from="root/res/layout/mvp_fragment.xml.ftl"
			to="${escapeXmlAttribute(resOut)}/layout/${mvpName?lower_case}_fragment.xml" />
		<open file="${escapeXmlAttribute(resOut)}/layout/${mvpName?lower_case}_fragment.xml"/>
	</#if>

	<instantiate from="root/src/app_package/MVPContract.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Contract.java" />
    <open file="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Contract.java" />

	<instantiate from="root/src/app_package/MVPView.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Fragment.java" />
    <open file="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Fragment.java" />

	<instantiate from="root/src/app_package/MVPPresenter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Presenter.java" />
    <open file="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Presenter.java" />
</recipe>