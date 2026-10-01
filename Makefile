# Makefile for lab01, Teddi Jeremiah Maggay, CS32

CXX=clang++
# CXX=g++

helloWorld: helloWorld.o
	${CXX} helloWorld.o -o helloWorld

helloWorld.o: helloWorld.cpp
	${CXX} -c helloWorld.cpp

clean:
	/bin/rm -f *.o helloWorld lab01Test

lab01Test: lab01Test.o tddFuncs.o arrayFuncs.o
	${CXX} lab01Test.o tddFuncs.o arrayFuncs.o -o lab01Test
