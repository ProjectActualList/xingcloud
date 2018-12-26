package com.xing.act.service;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 15:08
 */
public interface EditorService {
	/**
	 * 获取设计器页面的json
	 *
	 * @return
	 */
	Object getStencilset();

	/**
	 * 根据modelId获取model
	 *
	 * @param modelId
	 * @return
	 */
	Object getEditorJson(String modelId);

	/**
	 * 保存model信息
	 * @param modelId
	 * @param name
	 * @param description
	 * @param jsonXml
	 * @param svgXml
	 */
	void saveModel(String modelId, String name, String description, String jsonXml, String svgXml);
}
