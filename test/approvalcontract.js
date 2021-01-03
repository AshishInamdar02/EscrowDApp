const { assert } = require("console");
const { isMainThread } = require("worker_threads");

const ApprovalContract = artifacts.require('../../contracts/ApprovalContract.sol');

contract('ApprovalContract', function(accounts) {

    it('initiates contract', async function(){

        const contract = await ApprovalContract.deployed();
        const approver = await contract.approver.call();
        assert.equal(approver, 0xC5fdf4076b8F3A5357c5E395ab970B5B54098Fef, "Approver don't match");
    })
})