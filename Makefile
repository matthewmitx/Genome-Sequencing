# A simple makefile for compiling java classes in GenomeSequencing package

# define a makefile variable for the java compiler
#
JCC = javac
JVM = java

# define a makefile variable for compilation flags
# the -g flag compiles with debugging information
#
JFLAGS = -g
JFLAGSDIR = -d

GENSEQ = .

# typing 'make' will invoke the first target entry in the makefile 
# (the default one in this case)
#
default: GenomeSequencer.class 

main: Main.class

# this target entry builds the Average class
# the Average.class file is dependent on the Average.java file
# and the rule associated with this entry gives the command to create it

GenomeSequencer.class: GenomeSequencer.java
	$(JCC) $(JFLAGSDIR) $(GENSEQ) GenomeSequencer.java

FrequentWords.class: FrequentWords.java PatternMatching.java ReverseComplement.java
	$(JCC) $(JFLAGSDIR) $(GENSEQ) FrequentWords.java

Main.class: Main.java GenomeSequencer.java
	$(JCC) $(JFLAGS) Main.java


# To start over from scratch, type 'make clean'.  
# Removes all .class files, so that the next make rebuilds them
#

clean:
	$(RM) *.class
	$(RM) GenomeSequencing/*.class