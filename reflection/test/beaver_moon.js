const BeaverMoon = artifacts.require("BeaverMoon");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("BeaverMoon", function ( accounts ) {
  let contract;
  beforeEach(async () => {
    contract = await BeaverMoon.new();
  })

  it("should mint this token", async function () {
      await contract.mint(accounts[0], 100);

      const totalSupply = await contract.totalSupply();
      assert.equal('100', totalSupply.toString());
  });
  it("transfer", async function () {
      await contract.mint(accounts[0], 1000);
      await contract.mint(accounts[1], 1000);
      await contract.mint(accounts[2], 2000);

      const totalSupply = await contract.totalSupply();
      assert.equal('4000', totalSupply.toString());

      await contract.transfer(accounts[1], 100, {from: accounts[0]});

      const senderBalance = await contract.balanceOf(accounts[0]);
      assert.equal('902', senderBalance.toString());

      const recieverBalance = await contract.balanceOf(accounts[1]);
      // -10% reflection fee (10)
      assert.equal(recieverBalance.toString(), '1092' );

      const hodlerBalance = await contract.balanceOf(accounts[2]);
      assert.equal(hodlerBalance.toString(), '2005' );
  });
});
