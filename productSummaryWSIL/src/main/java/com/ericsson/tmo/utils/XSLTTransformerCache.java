package com.ericsson.tmo.utils;

import java.io.File;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.InitializingBean;

public class XSLTTransformerCache implements InitializingBean {// ,
																// ResourceLoaderAware

	private Map transformerConfig = new HashMap<String, String>();

	private Map<String, Transformer> xsltTransformerCache = new ConcurrentHashMap<String, Transformer>();

	private Logger log = Logger.getLogger(XSLTTransformerCache.class);

	public Map getTransformerConfig() {
		return transformerConfig;
	}

	public void setTransformerConfig(Map transformerConfig) {
		this.transformerConfig = transformerConfig;
		//log.debug("transformerConfig set");
	}

	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub

		Iterator<String> keyzItr = transformerConfig.keySet().iterator();
		TransformerFactory tFactory = TransformerFactory.newInstance();

		while (keyzItr.hasNext()) {

			try {
				String styleSheetRefKey = keyzItr.next();

				/*
				 * URL main = XSLTTransformerCache.class.getResource(
				 * "XSLTTransformerCache.class");
				 * System.out.println("Path"+main.getPath());
				 */

				/*
				 * String workingDir = System.getProperty("user.dir");
				 * System.out.println("Current working directory : " +
				 * workingDir);
				 */

				String path = this.getClass().getClassLoader().getResource("").getPath();
				String fullPath = URLDecoder.decode(path, "UTF-8");
				String pathArr[] = fullPath.split("/classes/");
				System.out.println(fullPath);
				System.out.println(pathArr[0]);
				fullPath = pathArr[0];

				String reponsePath = "";
				// to read a file from webcontent
				reponsePath = new File(fullPath).getPath() + transformerConfig.get(styleSheetRefKey);

				System.out.println("reponsePath:----------------------------->" + reponsePath);

				Transformer transformer = tFactory.newTransformer(new StreamSource(new File(reponsePath)));

				xsltTransformerCache.put(styleSheetRefKey, transformer);
				//log.debug("Transofrmer set for key:-->" + styleSheetRefKey);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	public Transformer getXSLTransformer(String styleKey) {
		// TODO Auto-generated method stub
		//log.debug("XSLT summoned-->" + styleKey);
		return (Transformer) xsltTransformerCache.get(styleKey);

	}

}
