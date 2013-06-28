package com.xuechong.bootstraptests.py.factory;


import org.python.core.PyObject;
import org.python.util.PythonInterpreter;

import com.xuechong.bootstraptests.py.interfaces.PyInterface;

public class BuildingFactory {

	/**
	 * The create method is responsible for performing the actual coercion of
	 * the referenced python module into Java bytecode
	 */
	public PyInterface createPyInterface() {
		return (PyInterface) getByClass(PyInterface.class);
	}
	
	private static Object getByClass(Class clazz){
		PythonInterpreter interpreter = new PythonInterpreter();
		interpreter.exec("from ${clazz} import ${clazz}".replace("${clazz}", clazz.getSimpleName()));
		PyObject buildingClass = interpreter.get(clazz.getSimpleName());
		PyObject buildingObject = buildingClass.__call__();
		return buildingObject.__tojava__(clazz);
	}
	
}
