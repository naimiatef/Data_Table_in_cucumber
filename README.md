# Data_Table_in_cucumber

```
Feature: Test The login functionality
  Scenario: To login with valid email and valid password 
   Given User open the website and go to login page
   When User fill email as username and password and click on login 
   | gunjankaushik | Password@123 |
   Then User should navigate to home page
```


```
	@When("User fill email as username and password and click on login")
	public void user_fill_email_and_password_and_click_on_login(DataTable wheData) {
		driver.findElement(By.xpath("//a[normalize-space()='login']")).click();
   	driver.findElement(By.xpath("//input[@id='userName']")).sendKeys(wheData.cell(0, 0));
		driver.findElement(By.xpath("//input[@id='password']")).sendKeys(wheData.cell(0, 1));
		driver.findElement(By.id("login")).click();
		System.out.println("Login Successfully");
	}
  ```
