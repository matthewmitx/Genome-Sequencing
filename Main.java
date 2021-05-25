import GenomeSequencing.GenomeSequencer;

import java.util.*;
import java.io.*;

class Main{
	public static void main(String [] args){

		Scanner scanner = new Scanner(System.in);

		int k = scanner.nextInt();
		String text = scanner.next();

		List<String> res = GenomeSequencer.composition(k, text);

		for(String s : res){
			System.out.println(s);
		}

	}
}