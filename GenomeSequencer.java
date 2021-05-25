/* Genome Sequencer class */
package GenomeSequencing;

import java.util.Set;
import java.util.List;
import java.util.ArrayList;
import java.util.HashSet;

public class GenomeSequencer {

	/*	Function to ...
		Input:	Integer k
				String text
		Output: List<String> all possible substrings of length k
	*/
	public static List<String> composition(Integer k, String text){

		Set<String> substrings = new HashSet<>();

		for(int i = 0; i < text.length()-k+1; i++){
			substrings.add(text.substring(i,i+k));
		}

		return new ArrayList<String>(substrings);
	}


}