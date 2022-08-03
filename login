package MobileTesting;

import java.util.Iterator;
import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class Mobile extends Generic {

	

       @Test
		public void SignUp() throws InterruptedException
		{  
			driver.findElement(By.xpath("//button[.='SIGN IN']")).click();
			driver.findElement(By.xpath("//a[.='Sign up']")).click();
			driver.findElement(By.xpath("//input[@id='myName']")).sendKeys("Madura");//First Name
			driver.findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys("Naikar");//Last Name
			driver.findElement(By.xpath("//input[@type='Email']")).sendKeys("maduranaikar86@gmail.com");//Email
			driver.findElement(By.xpath("//input[@type='Password']")).sendKeys("madura@123");//password
			driver.findElement(By.xpath("//input[@type='date']")).sendKeys("10-03-1995");//DOB
			driver.findElement(By.xpath("//label[.='Male']/../input[1]")).click();//Male
			driver.findElement(By.xpath("//label[.='Female']/following-sibling::input")).click();//Female
			driver.findElement(By.xpath("//input[@type='number']")).sendKeys("8867342319");//MOB
			driver.findElement(By.xpath("//textarea[@placeholder='Short Bio']")).sendKeys("Hello Madura N");//BIO
			driver.findElement(By.xpath("//button[@type='submit']")).click();//Register
			driver.switchTo().alert().accept();
			driver.findElement(By.xpath("//button[.='Sign In']")).click();//sign in
			driver.switchTo().alert().accept();
			driver.findElement(By.id("username")).sendKeys("maduranaikar86@gmail.com");
			driver.findElement(By.id("password")).sendKeys("madura@123");
			driver.findElement(By.xpath("//a[.='Log In']")).click();
			
			@Test(priority = 2, dataProvider="getdata")
			public void login(String email, String pwd)
			driver.findElement(By.xpath("//button[.='SIGN IN']")).click();
			driver.findElement(By.id("username")).sendKeys(email);
			driver.findElement(By.id("password")).sendKeys(pwd);
			driver.findElement(By.xpath("//a[.='Log In']")).click();
			
			@DataProvider
			 public Object[][] getdata()
			 
			 Object[][] data=new Object[5][2];
			 data[0][0]="madura@gamil.com";
			 data[0][1]="naikar";
                         data[1][0]="chandana@gamil.com";
			data[1][1]="hassan";
			data[2][0]="dhanu@gamil.com";
			data[2][1]="putta";
			data[3][0]="sushma@gamil.com";
			data[3][1]="nottalking";
			 data[4][0]="drishya@gamil.com";
			  data[4][1]="niece";
                           return data;	
			   
			   @Test(priority = 3)
	public void Order()
	driver.findElement(By.linkText("Order")).click();
	Set<String>win=driver.getWindowHandles();
		Iterator<String>it=win.iterator(); 
		String parentId=it.next();
		String childId=it.next();
		driver.switchTo().window(childId);
		driver.findElement(By.id("inputFirstName")).sendKeys("Madura");//First Name
		driver.findElement(By.xpath("//label[.='First Name']/following-sibling::input[1]")).sendKeys("Naikar");//Last Name
		driver.findElement(By.id("inputEmail")).sendKeys("maduranaikar86@gmail.com");//Email
		driver.findElement(By.id("inputPassword")).sendKeys("madura@123");//password
		driver.findElement(By.id("flexRadioDefault1")).click();//Male
				driver.findElement(By.id("flexRadioDefault2")).click();//Female
		driver.findElement(By.xpath("//input[@placeholder='00000000000']")).sendKeys("8867342319");//MOB
		driver.findElement(By.xpath("//input[@id=' address1']")).sendKeys("H2 block, Manyatha tech park");
		driver.findElement(By.xpath("//input[@id='address2']")).sendKeys("Naagavara");
		driver.findElement(By.xpath("//input[@id='inputCity']")).sendKeys("Bangalore");
	    WebElement web=driver.findElement(By.xpath("//select[@id='inputState']"));
	    Select dropdown=new Select(web);
		dropdown.selectByVisibleText("Karnataka");
		driver.findElement(By.xpath("//input[@id='inputZip']")).sendKeys("560045560045");
		driver.findElement(By.xpath("//label[.='Samsung']")).click();
		driver.findElement(By.xpath("//label[.='Apple']")).click();
		//driver.findElement(By.xpath("//label[.='Samsung']")).click();
		//driver.findElement(By.xpath("//label[.='Lenovo']")).click();
		WebElement web1=driver.findElement(By.xpath("//select[@class='multi_select']"));
		Select dropdown1=new Select(web1);
		driver.findElement(By.xpath("//option[@id='apple'][2]")).click();
		driver.findElement(By.xpath("//input[@placeholder='no of mobiles']")).sendKeys("1");
		WebElement web2=driver.findElement(By.xpath("//select[@id='bought']"));
		Select dropdown2=new Select(web2);

