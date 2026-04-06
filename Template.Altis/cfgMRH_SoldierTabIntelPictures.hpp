//template
/*
class MRH_SoldierTabIntelPictures //cannot be changed
{
	//you can have as many pictures as you want 
	
	class MyPictureClassName //must be unique, can be anything,good practice is to tag with your handle.
	{
	captionText = "yourCaptionTextHere"; //simple caption text, mandatory, leave "" if you do not want a caption
	picture = "pathToYourPicture.jpg"; //mandatory must be .jpg or .paa
	};
};
	
*/

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Picture Entries ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//


class MRH_SoldierTabIntelPictures
{
	class pic1
	{
		captionText = "Picture example, visible to everyone at mission start.";
		picture = "intel\map.jpg";
	};
	class pic2
	{
		captionText = "Picture example from a searched laptop. (Collect Data)";
		picture = "intel\document.jpg";
	};
	class pic3
	{
		captionText = "<t color='#ff0000'>Picture example from a hacked laptop with red text.";
		picture = "intel\intel.jpg";
	};
	class pic4
	{
		captionText = "Example picture that's in a dataentry.";
		picture = "intel\target.jpg";
	};
};
