const Test = artifacts.require('Test');

contract("Testing Test", accounts => {
  
  it("should return true when provided with correct value", async () => {
    const test = await Test.deployed();
    const b = await test.foo.call(3);
    assert.isTrue(b, "3 is a correct value");
  });  
  it("should return false when provided with incorrect value", async () => {
    const test = await Test.deployed();
    const b = await test.foo.call(2);
    assert.isFalse(b, "2 is an incorrect value");
  });
}); 
