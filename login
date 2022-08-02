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
			
			
		
