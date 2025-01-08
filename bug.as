The following ActionScript 3 code attempts to access a property of a null object, resulting in a runtime error.  This often happens when an object isn't properly initialized or when asynchronous operations don't correctly handle potential null results.  The specific error message will vary depending on the context, but typically involves a `TypeError: Error #1009: Cannot access a property or method of a null object reference.`. 

```actionscript
// Example Code

var myObject:MyClass = getMyObjectFromSomewhere();

trace(myObject.someProperty);

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