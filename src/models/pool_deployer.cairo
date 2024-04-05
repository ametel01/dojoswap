use starknet::ContractAddress;
use dojo::database::introspect::{Introspect, Ty};

#[derive(Copy, Drop, Serde, Introspect)]
struct Parameters {
    factory: ContractAddress,
    token0: ContractAddress,
    token1: ContractAddress,
    fee: u32,
    tickSpacing: i32,
}

#[derive(Model, Copy, Drop, Serde)]
struct PoolParameters {
    #[key]
    pool: ContractAddress,
    parameters: Parameters,
}


impl I32IntrospectionImpl of Introspect<i32> {
    #[inline(always)]
    fn size() -> usize {
        1 // Represents the byte size of the enum.
    }

    #[inline(always)]
    fn layout(ref layout: Array<u8>) {
        layout.append(2); // Specifies the layout byte size;
    }

    #[inline(always)]
    fn ty() -> Ty {
        Ty::Primitive('i32')
    }
}
