package Basics;

public class CorseEvaluation {

	public int GetCourseFees(String CourseName){
		String[] courses ={"python-15000","java-12000","c#-20000","testing-13000"};
		for(String eachValue :courses)
		{
			String[] splitCources = eachValue.split("-");
			if(splitCources[0].equalsIgnoreCase(CourseName))
			{
				return Integer.parseInt(splitCources[1]);
			}
		}
		return 0;
	}
}
