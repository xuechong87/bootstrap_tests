package test;

import java.io.FileNotFoundException;
import java.net.URISyntaxException;


import org.python.util.PythonInterpreter;

import com.xuechong.bootstraptests.py.factory.BuildingFactory;
import com.xuechong.bootstraptests.py.interfaces.PyInterface;

public class PyTests {
	public static void main(String[] args) throws FileNotFoundException, URISyntaxException, InstantiationException, IllegalAccessException {
		PyInterface pyImpl = new BuildingFactory().createPyInterface();
		System.out.println(pyImpl.getDouble("啊"));
	}
}
