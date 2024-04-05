use starknet::ContractAddress;

#[dojo::interface]
trait IPoolDeployer {
    fn deploy(
        factory: ContractAddress,
        token0: ContractAddress,
        token1: ContractAddress,
        fee: u32,
        tickSpacing: i32
    ) -> ContractAddress;
}

#[dojo::contract]
mod pooldeployeractions {
    use starknet::{ContractAddress, contract_address_const};

    fn deploy(
        factory: ContractAddress,
        token0: ContractAddress,
        token1: ContractAddress,
        fee: u32,
        tickSpacing: i32
    ) -> ContractAddress {
        contract_address_const::<0>()
    }
}
