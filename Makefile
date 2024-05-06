CXX=g++
CXXFLGAS=-std=c++11 -g
LIBS=-lpthread
HEADER=-I./

TARGET=app

SRCS=$(wildcard *.cpp)
OBJS=$(patsubst %.cpp, %.o, $(SRCS))

#$(OBJS): %.o : %.cpp 
%.o : %.cpp 
	$(CXX) $(CXXFLAGS) -c $< -o $@ $(HEADR) $(LIBS)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(HEADER) $(LIBS)

all: $(TARGET) 

.PHONY: clean all

clean:
	rm $(TARGET) $(OBJS)
