
/// @use-src 0:"src/StorageSlots.sol"
object "StorageSlots_33" {
    code {
        /// @src 0:149:694  "contract StorageSlots {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_StorageSlots_33()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("StorageSlots_33_deployed"), datasize("StorageSlots_33_deployed"))

        return(_1, datasize("StorageSlots_33_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:149:694  "contract StorageSlots {..."
        function constructor_StorageSlots_33() {

            /// @src 0:149:694  "contract StorageSlots {..."

        }
        /// @src 0:149:694  "contract StorageSlots {..."

    }
    /// @use-src 0:"src/StorageSlots.sol"
    object "StorageSlots_33_deployed" {
        code {
            /// @src 0:149:694  "contract StorageSlots {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0xa09d7b11
                {
                    // setHalfSizeVar1(uint128)

                    external_fun_setHalfSizeVar1_32()
                }

                case 0xc2211f48
                {
                    // setVar1(uint256)

                    external_fun_setVar1_22()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function validator_revert_t_uint128(value) {
                if iszero(eq(value, cleanup_t_uint128(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint128(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint128(value)
            }

            function abi_decode_tuple_t_uint128(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint128(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_setHalfSizeVar1_32() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint128(4, calldatasize())
                fun_setHalfSizeVar1_32(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setVar1_22() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_setVar1_22(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            /// @ast-id 22
            /// @src 0:344:476  "function setVar1(uint256 newVar) public  {..."
            function fun_setVar1_22(var_newVar_14) {

                /// @src 0:407:413  "newVar"
                let _1 := var_newVar_14
                let expr_18 := _1
                /// @src 0:395:413  "variable1 = newVar"
                update_storage_value_offset_0t_uint256_to_t_uint256(0x00, expr_18)
                let expr_19 := expr_18

            }
            /// @src 0:149:694  "contract StorageSlots {..."

            function update_byte_slice_16_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint128_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_uint128(value)))
            }

            function prepare_store_t_uint128(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_uint128_to_t_uint128(slot, value_0) {
                let convertedValue_0 := convert_t_uint128_to_t_uint128(value_0)
                sstore(slot, update_byte_slice_16_shift_0(sload(slot), prepare_store_t_uint128(convertedValue_0)))
            }

            /// @ast-id 32
            /// @src 0:482:692  "function setHalfSizeVar1(uint128 newHalfSize) public {..."
            function fun_setHalfSizeVar1_32(var_newHalfSize_24) {

                /// @src 0:559:570  "newHalfSize"
                let _2 := var_newHalfSize_24
                let expr_28 := _2
                /// @src 0:545:570  "halfSizeVar = newHalfSize"
                update_storage_value_offset_0t_uint128_to_t_uint128(0x02, expr_28)
                let expr_29 := expr_28

            }
            /// @src 0:149:694  "contract StorageSlots {..."

        }

        data ".metadata" hex"a2646970667358221220457204a07b15daaeecfc3c469d64a655307b33f07c29b88da9dffdebcbd758a164736f6c63430008100033"
    }

}


