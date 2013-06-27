package test;

import java.io.FileNotFoundException;
import java.net.URISyntaxException;


import org.python.util.PythonInterpreter;

import com.xuechong.bootstraptests.py.interfaces.PyInterface;

public class PyTests {
	public static void main(String[] args) throws FileNotFoundException, URISyntaxException, InstantiationException, IllegalAccessException {
		PythonInterpreter inter = new PythonInterpreter();
		inter.execfile(Thread.currentThread().
				getContextClassLoader().getResourceAsStream("PYImpl.py"));
		PyInterface pyImpl = (PyInterface) inter.get("impl");
		System.out.println(pyImpl.getDouble("啊"));
	}
}
