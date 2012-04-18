package support;
import java.lang.String;

public class Degree 
{
	private String location;
	private String university;
	private String discipline;
	private String title;
	
	public Degree()
	{
		this.location = "";
		this.university = "";
		this.discipline = "";
	}
	
	public Degree(String location, String university, String discipline, String title)
	{
		this.location = location;
		this.university = university;
		this.discipline = discipline;
		this.title = title;
	}
	/*********** GETTERS AND SETTERS ***********/
	public String getLocation()
	{
		return this.location;
	}
	public String getUniversity()
	{
		return this.university;
	}
	public String getDiscipline()
	{
		return this.discipline;
	}
	public String getTitle()
	{
		return this.title;
	}
	public void setLocation(String location)
	{
		this.location = location;
	}
	public void setUniversity(String university)
	{
		this.university = university;
	}
	public void setDiscipline(String discipline)
	{
		this.discipline = discipline;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
}