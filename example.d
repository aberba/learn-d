import std.stdio: writeln;
import std.conv: to;
import std.algorithm: map;


class Student 
{
	string name;
	int id;
	int age;

	this(string name, int age, int id) {
		this.name = name;
		this.age = age;
		this.id = id;
	}

	string indentity()
	{
		return name ~ " " ~ to!string(age) ~ " " ~ to!string(id);
	}
}


void main()
{
 	//Student mike = new Student("Mike", 18, 2106);	
 	//writeln( mike.indentity() );

 	//Student joyce = new Student("Joyce", 19, 2018);
 	//writeln(joyce.indentity());

 	auto ages = [2,3,5,7];
 	auto newAges = ages.map!(age => age * 2 );
 	writeln(newAges);


	int[] secondAges;
 	for (int i =0; i < ages.length; i++) {
 		secondAges ~= ages[i] * 2;
 	}
 	writeln(secondAges);
}

