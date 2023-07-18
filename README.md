# PrototypeDesignPatternExample
The prototype pattern can help us when creating multiple instances of the same type is expensive or inefficient.
Consider the following example. You need to construct several objects of a given type.
During instantiation, each object needs to open the same large file and load its contents in memory.

If instantiating one object takes 100 milliseconds, as we know file IO can be really slow, then we need one second to create 10 objects, and creating 100 objects takes 10 seconds.

The time required to create the objects grows linearly. We could optimize the object creation by avoiding the opening and reading of the file each time we instantiate an object.

The prototype add-on addresses this issue by cloning the objects that are expensive to create.
We construct the first object as usual. 

We can't avoid this step. The very first object, also known as the prototype, is required.

However, all consecutive instances get created by copying the prototype.

Thus, we avoid the expensive file operation for all successive object creations. The time required to produce the clones becomes incomparably smaller compared to creating the initial prototype.

The concept behind the prototype is clear. Copy an instance instead of constructing it from scratch.

As simple as it sounds, it's easy to skip some crucial details.

Value types get automatically copied upon assignment.

Thus, we get the right behavior for free. Cloning the reference types is not that straightforward, though.

You will need to implement the copy behavior for instances and properties of the class type.

The prototype pattern is implemented correctly if the prototype instance and the clones are standalone objects.

That is, modifying an object should not affect the other clones.

Alright, let's implement the prototype pattern.
