package todos;

import java.util.ArrayList;
import java.util.List;

public class TodoService {

	private static List<Todo> todos = new ArrayList<Todo>();
	static {
		todos.add(new Todo("Ismokti JAVA"));
		todos.add(new Todo("Atsiskaityti kursini"));
		
	}
	
	public List<Todo> retriveTodos(){
		return todos;
	}
	public void addTodo(Todo todo){
		todos.add(todo);
	}
	public void deleteTodo(Todo todo){
		todos.remove(todo);
	}
	
}

