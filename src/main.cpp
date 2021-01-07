#define GLFW_INCLUDE_NONE
#include <GL/glew.h>
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
	GLenum err = glewInit();
	if (err != GLEW_OK) {
		std::cout << "GLEW initialization failed" << std::endl;
		return -1;
	}
	
	window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
	if (!window) {
		std::cout << "Window creation failed" << std::endl;
		glfwTerminate();
		return -1;
	}
	
	glfwMakeContextCurrent(window);
	
	while (!glfwWindowShouldClose(window)) {
//		This is the stupid error. right here. this dumb thing. damn it
//		glClearColor(GL_COLOR_BUFFER_BIT);
		
		
		glfwSwapBuffers(window);
		glfwPollEvents();
	}
	
	glfwTerminate();
	return 0;
}