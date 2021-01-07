#define GLFW_INCLUDE_NONE
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>

int main() {
	std::cout << "Program started" << std::endl;
	
	GLFWwindow *window;
	
	if (!glfwInit()) {
		std::cout << "GLFW initialization failed" << std::endl;
		return -1;
	}
//	std::cout << "About to initialize glew" << std::endl;
	
	window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
	if (!window) {
		std::cout << "Window creation failed" << std::endl;
		glfwTerminate();
		return -1;
	}
	
	glfwMakeContextCurrent(window);
	
	int gladInit = gladLoadGLLoader( (GLADloadproc) glfwGetProcAddress);
	if (!gladInit) {
		return -1;
	}
	
	while (!glfwWindowShouldClose(window)) {
		//Render here
		glClear(GL_COLOR_BUFFER_BIT);
		
		//Swap front and back buffers
		glfwSwapBuffers(window);
		glfwPollEvents();
	}
	
	glfwTerminate();
	return 0;
}