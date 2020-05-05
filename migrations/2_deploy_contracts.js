var Test = artifacts.require('Test');


async function doDeploy(deployer, network) {
    await deployer.deploy(Test, 3);
}


module.exports = (deployer, network, accounts) => {
    deployer.then(async () => {
        await doDeploy(deployer, network);
    });
};