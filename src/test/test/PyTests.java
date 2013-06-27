package test;

import java.io.FileNotFoundException;
import java.net.URISyntaxException;


import org.python.util.PythonInterpreter;

public class PyTests {
	public static void main(String[] args) throws FileNotFoundException, URISyntaxException {
		PythonInterpreter inter = new PythonInterpreter();
		inter.execfile(Thread.currentThread().
				getContextClassLoader().getResourceAsStream("JPYTests.py"));
	}
}
