//Template
/*
class MRH_SoldierTabData //mandatory, do not change
{
	//you can have as many entries as you want
	
	class MyFirstData //must be unique, can be anything
	{
	title = "YourTitleHere"; // simple text
	text = "YourTextHere";// accepts structured text, DO NOT use double quotes("") inside.

	};
	
	class MySecondData //must be unique,can be anything
	{
	title = "YourTitleHere";
	text = "YourTextHere";// accepts structured text, DO NOT use double quotes("") inside.
		
		//you can have as many sub entries as you want
		
		class MyFirstSubEntry //must be unique,can be anything
		{
		titleSub = "YourTitleHere";
		textSub = "YourTextHere";// accepts structured text, DO NOT use double quotes("") inside.
		};
		
		class MySecondSubEntry
		{
		titleSub = "YourTitleHere";
		textSub = "YourTextHere You can use <br/> and also include pictures  <img size = '15' image ='pathToYourPicture.jpg'/>"; //after thorough testing 15 seems to be the most appropriate size for pictures. Smaller is OK, bigger might not be fully displayed.
		};
	};
};
*/

//https://community.bistudio.com/wiki/Structured_Text - This is the link to the ARMA 3 structured text website. 



//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Data Entries ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

class MRH_SoldierTabData
{
	class dataEntry1
	{
		title = "Example of starting intel 1.";
		text = "This text will be visible at the start of the mission due to dataEntry1 and dataEntry2 being listed in the initplayerlocal.sqf";
		class subEntry1
		{
			titleSub = "Sub catergory 1";
			textSub = "This is an example of a sub catergory that will be visible at the start of the mission. This data entry has only one subcategory";
		};
	};
	class dataEntry2
	{
		title = "Starting Intel 2";
		text = "This is another example of intel available at the start of the mission.";
		class subEntry1
		{
			titleSub = "Sub category 2.1";
			textSub = "This is an example of a subcatergory that will be visible at the start of the mission.";
		};
		
		class subEntry2
		{
			titleSub = "Sub category 2.2";
			textSub = "This is an example of a subcatergory that will be visible at the start of the mission. You can have as many subcategories as you like.";
		};
	};
	class dataEntry3
	{
		title = "Intel found from laptop";
		text = "This is intel that was found from a laptop from the laptop. It has no subcategories";
	};
	class dataEntry4
	{
		title = "Hacked intel from laptop";
		text = "This is an example of intel found in a laptop after it has been hacked";
		class subEntry1
		{
			titleSub = "Hacked subcategory 1";
			textSub = "This is an example of a subcategory of intel with a picture on the 2nd line found at a laptop after being hacked.<br/><img size = '15' image ='intel\target.jpg'/>";
		};
	};
	class dataEntry5
	{
		title = "Hacked intel 2";
		text = "This is intel that was hacked from the laptop.";
		class subEntry1
		{
			titleSub = "<t color='#ff0000'>Sub category 1</t>";
			textSub = "This is an example of a subcategory with a red heading.<br/>The text below is an example of different text sizes and colours you can do.<br/><t size='3'><t color='#26E811'>Large Green Heading<br/><t size='2'><t color='#E88611'>Your imagination is the limit with this intel system.<br/><t size='0.5'><t color='#C811E8'>You can even do small text.";
		};
	};
};
