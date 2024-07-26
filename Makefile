CXX=g++
CXXFLGAS=-std=c++11 -g
LIBS=-lpthread
HEADER=-I./

TARGET=app

#SRCS=$(wildcard *.cpp)
SRCS=$(filter-out hello.cpp, $(wildcard *.cpp))
OBJS=$(patsubst %.cpp, %.o, $(SRCS))

$(OBJS): %.o : %.cpp 
	$(CXX) $(CXXFLAGS) -c $< -o $@ $(HEADR) $(LIBS)
#%.o : %.cpp 
#	$(CXX) $(CXXFLAGS) -c $< -o $@ $(HEADR) $(LIBS)

#$(TARGET): $(OBJS)
#	$(CXX) $(CXXFLAGS) -o $@ $^ $(HEADER) $(LIBS)

#all: $(TARGET) 
all: $(OBJS) 

.PHONY: clean all

clean:
	rm $(TARGET) $(OBJS)
