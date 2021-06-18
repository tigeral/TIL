# Task #3: Pairwise Testing

> Hey folks,
> 
> Most of you have successfully completed the second task last week. And there's one more challenge left.
> 
> You may probably know that test design is one of the most important QA activities. Automated testing is no exception. There's a number of techniques you can apply for each individual use case. But this time we'll pay attention to pairwise testing only.
> 
> Imagine you have a form that helps you to make the right decision on which automation stack to choose depending on the following inputs:
> 
> Application Type: Web, Mobile Native, Hybrid
> Mobile Platform: iOS, Android
> Browser: Chrome, Firefox, Safari
> Programming Language: Java, JS, Python, Swift, C#
> Unit Framework: TestNG, JUnit, Mocha, Jest, Jasmine, PyTest, Unittest, Nose2
> Web Frameworks: Selenide, Serenity, WebdriverIO, Cypress, CodeceptJS, Puppeteer, Playwrite, Helium
> Mobile Frameworks: Appium, Espresso, XCUITest, Detox, Xamarin
> Infrastructure: Selenium Grid, Selenoid
> 
> You perfectly know that exhaustive testing is impossible. So you have to apply a pairwise testing technique to reduce the number of potential experiments keeping the coverage on a good level.
> 
> There's a tool called PICT from Microsoft which allows you to do this efficiently. You can use it in a CLI-mode. But note that it has a pre-built binary only for Windows. If you have a different OS, you have to build it from sources by cloning this project from GitHub and following the README instructions.
> 
> Also, make sure your test model has constraints. You have to examine the above inputs to define values that can live together and which are mutually exclusive.
> 
> As a result, you should get an optimal set of combinations according to provided restrictions.
> The output should be converted to a JSON array format that will represent your tests' data in the future.
> 
> Update your TIL repository and attach the following artifacts:
> PICT model you used for data generation;
> PICT raw output;
> Converted JSON array.
> 
> Deadline: next Friday (June 18).
> 
> Good luck!