package service;

import java.util.Hashtable;
import model.Person;
import org.springframework.stereotype.Service;

@Service
public class PersonService {
	Hashtable<String, Person> persons = new Hashtable<String,Person>();
	public PersonService(){
		Person p=new Person();
		p.setId("1");
		p.setAge(34);
		p.setFirstName("Kannan");
		p.setLastname("Krishnan");
		persons.put("1", p);
		
		p= new Person();
		p.setId("2");
		p.setAge(35);
		p.setFirstName("Srinath");
		p.setLastname("nookas");
		persons.put("2", p);
	}
	public Person getPerson(String id)
	{
		if(persons.containsKey(id))
			return persons.get(id);
		else
			return null;
	}
	public Hashtable<String, Person> getAll(){
		return persons;
	}

}
