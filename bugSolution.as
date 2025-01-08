The solution is to add null checks before accessing `myObject.someProperty`.  Here are two approaches:

**Approach 1: Using an if statement**
```actionscript
var myObject:MyClass = getMyObjectFromSomewhere();

if (myObject != null) {
  trace(myObject.someProperty);
} else {
  trace("myObject is null!"); // Handle the null case
}

// ... later ...

function getMyObjectFromSomewhere():MyClass {
  // This function might return null under certain conditions 
  // that aren't properly handled.
  if(someCondition) {
    return new MyClass();
  } else {
    return null;
  }
}
```

**Approach 2 (if available): Using the optional chaining operator (?.)**
ActionScript 3 doesn't directly support the optional chaining operator (?.) available in some newer languages. However, you can achieve a similar effect by carefully structuring your code and using null checks appropriately.

Note: The improved error handling ensures that the program gracefully manages the null object reference without crashing.  The specific handling (e.g., tracing a message or using a default value) will depend on the application's requirements.