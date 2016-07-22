<?xml version="1.0"?>
<!-- ��Ҫ������������ʵ����Ҫ�Ĵ��� -->
<recipe>

	
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
	<instantiate from="root/src/app_package/MVPView.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Fragment.java" />
	<instantiate from="root/src/app_package/MVPPresenter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Presenter.java" />

    <open file="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Contract.java" />
    <open file="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Fragment.java" />
    <open file="${escapeXmlAttribute(srcOut)}/mvp/${mvpName}/${mvpName}Presenter.java" />
</recipe>