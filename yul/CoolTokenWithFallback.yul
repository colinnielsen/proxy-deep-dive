
/// @use-src 0:"lib/solmate/src/tokens/ERC20.sol", 1:"src/CoolToken.sol"
object "CoolTokenWithFallback_428" {
    code {
        /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."
        mstore(64, memoryguard(224))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_CoolTokenWithFallback_428()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("CoolTokenWithFallback_428_deployed"), datasize("CoolTokenWithFallback_428_deployed"))

        setimmutable(_1, "24", mload(128))

        setimmutable(_1, "38", mload(160))

        setimmutable(_1, "40", mload(192))

        return(_1, datasize("CoolTokenWithFallback_428_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function round_up_to_mul_of_32(value) -> result {
            result := and(add(value, 31), not(31))
        }

        function panic_error_0x41() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x41)
            revert(0, 0x24)
        }

        function finalize_allocation(memPtr, size) {
            let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
            // protect against overflow
            if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
            mstore(64, newFreePtr)
        }

        function allocate_memory(size) -> memPtr {
            memPtr := allocate_unbounded()
            finalize_allocation(memPtr, size)
        }

        function array_allocation_size_t_string_memory_ptr(length) -> size {
            // Make sure we can allocate memory without overflow
            if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

            size := round_up_to_mul_of_32(length)

            // add length slot
            size := add(size, 0x20)

        }

        function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
            let allocSize := array_allocation_size_t_string_memory_ptr(length)
            memPtr := allocate_memory(allocSize)

            mstore(memPtr, length)

        }

        function store_literal_in_memory_91bc9cb926dc6d6fe3bcff77f8abe901b37997dafa358327856554303bba1659(memPtr) {

            mstore(add(memPtr, 0), "Cool token")

        }

        function copy_literal_to_memory_91bc9cb926dc6d6fe3bcff77f8abe901b37997dafa358327856554303bba1659() -> memPtr {
            memPtr := allocate_memory_array_t_string_memory_ptr(10)
            store_literal_in_memory_91bc9cb926dc6d6fe3bcff77f8abe901b37997dafa358327856554303bba1659(add(memPtr, 32))
        }

        function convert_t_stringliteral_91bc9cb926dc6d6fe3bcff77f8abe901b37997dafa358327856554303bba1659_to_t_string_memory_ptr() -> converted {
            converted := copy_literal_to_memory_91bc9cb926dc6d6fe3bcff77f8abe901b37997dafa358327856554303bba1659()
        }

        function store_literal_in_memory_9be19c7da8802d60dcb9a93bf3950d1eb9b5defa63a5301e989cbe08cf476df8(memPtr) {

            mstore(add(memPtr, 0), "COOL")

        }

        function copy_literal_to_memory_9be19c7da8802d60dcb9a93bf3950d1eb9b5defa63a5301e989cbe08cf476df8() -> memPtr {
            memPtr := allocate_memory_array_t_string_memory_ptr(4)
            store_literal_in_memory_9be19c7da8802d60dcb9a93bf3950d1eb9b5defa63a5301e989cbe08cf476df8(add(memPtr, 32))
        }

        function convert_t_stringliteral_9be19c7da8802d60dcb9a93bf3950d1eb9b5defa63a5301e989cbe08cf476df8_to_t_string_memory_ptr() -> converted {
            converted := copy_literal_to_memory_9be19c7da8802d60dcb9a93bf3950d1eb9b5defa63a5301e989cbe08cf476df8()
        }

        function cleanup_t_rational_18_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_rational_18_by_1_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(identity(cleanup_t_rational_18_by_1(value)))
        }

        function cleanup_t_rational_10000000000000000000_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_10000000000000000000_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_10000000000000000000_by_1(value)))
        }

        /// @ast-id 407
        /// @src 1:292:382  "constructor() ERC20(\"Cool token\", \"COOL\", 18) {..."
        function constructor_CoolTokenWithFallback_428() {
            /// @src 1:312:324  "\"Cool token\""
            let _2_mpos := convert_t_stringliteral_91bc9cb926dc6d6fe3bcff77f8abe901b37997dafa358327856554303bba1659_to_t_string_memory_ptr()
            /// @src 1:326:332  "\"COOL\""
            let _3_mpos := convert_t_stringliteral_9be19c7da8802d60dcb9a93bf3950d1eb9b5defa63a5301e989cbe08cf476df8_to_t_string_memory_ptr()
            /// @src 1:334:336  "18"
            let expr_397 := 0x12
            let _4 := convert_t_rational_18_by_1_to_t_uint8(expr_397)

            /// @src 1:292:382  "constructor() ERC20(\"Cool token\", \"COOL\", 18) {..."
            constructor_ERC20_387(_2_mpos, _3_mpos, _4)

            /// @src 1:354:364  "msg.sender"
            let expr_402 := caller()
            /// @src 1:366:374  "10 ether"
            let expr_403 := 0x8ac7230489e80000
            /// @src 1:348:375  "_mint(msg.sender, 10 ether)"
            let _5 := convert_t_rational_10000000000000000000_by_1_to_t_uint256(expr_403)
            fun__mint_358(expr_402, _5)

        }
        /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

        function panic_error_0x00() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x00)
            revert(0, 0x24)
        }

        function array_length_t_string_memory_ptr(value) -> length {

            length := mload(value)

        }

        function panic_error_0x22() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x22)
            revert(0, 0x24)
        }

        function extract_byte_array_length(data) -> length {
            length := div(data, 2)
            let outOfPlaceEncoding := and(data, 1)
            if iszero(outOfPlaceEncoding) {
                length := and(length, 0x7f)
            }

            if eq(outOfPlaceEncoding, lt(length, 32)) {
                panic_error_0x22()
            }
        }

        function array_dataslot_t_string_storage(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        function divide_by_32_ceil(value) -> result {
            result := div(add(value, 31), 32)
        }

        function shift_left_dynamic(bits, value) -> newValue {
            newValue :=

            shl(bits, value)

        }

        function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
            let shiftBits := mul(shiftBytes, 8)
            let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
            toInsert := shift_left_dynamic(shiftBits, toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
        }

        function zero_value_for_split_t_uint256() -> ret {
            ret := 0
        }

        function storage_set_to_zero_t_uint256(slot, offset) {
            let zero_0 := zero_value_for_split_t_uint256()
            update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
        }

        function clear_storage_range_t_bytes1(start, end) {
            for {} lt(start, end) { start := add(start, 1) }
            {
                storage_set_to_zero_t_uint256(start, 0)
            }
        }

        function clean_up_bytearray_end_slots_t_string_storage(array, len, startIndex) {

            if gt(len, 31) {
                let dataArea := array_dataslot_t_string_storage(array)
                let deleteStart := add(dataArea, divide_by_32_ceil(startIndex))
                // If we are clearing array to be short byte array, we want to clear only data starting from array data area.
                if lt(startIndex, 32) { deleteStart := dataArea }
                clear_storage_range_t_bytes1(deleteStart, add(dataArea, divide_by_32_ceil(len)))
            }

        }

        function shift_right_unsigned_dynamic(bits, value) -> newValue {
            newValue :=

            shr(bits, value)

        }

        function mask_bytes_dynamic(data, bytes) -> result {
            let mask := not(shift_right_unsigned_dynamic(mul(8, bytes), not(0)))
            result := and(data, mask)
        }
        function extract_used_part_and_set_length_of_short_byte_array(data, len) -> used {
            // we want to save only elements that are part of the array after resizing
            // others should be set to zero
            data := mask_bytes_dynamic(data, len)
            used := or(data, mul(2, len))
        }
        function copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, src) {

            let newLen := array_length_t_string_memory_ptr(src)
            // Make sure array length is sane
            if gt(newLen, 0xffffffffffffffff) { panic_error_0x41() }

            let oldLen := extract_byte_array_length(sload(slot))

            // potentially truncate data
            clean_up_bytearray_end_slots_t_string_storage(slot, oldLen, newLen)

            let srcOffset := 0

            srcOffset := 0x20

            switch gt(newLen, 31)
            case 1 {
                let loopEnd := and(newLen, not(0x1f))

                let dstPtr := array_dataslot_t_string_storage(slot)
                let i := 0
                for { } lt(i, loopEnd) { i := add(i, 0x20) } {
                    sstore(dstPtr, mload(add(src, srcOffset)))
                    dstPtr := add(dstPtr, 1)
                    srcOffset := add(srcOffset, 32)
                }
                if lt(loopEnd, newLen) {
                    let lastValue := mload(add(src, srcOffset))
                    sstore(dstPtr, mask_bytes_dynamic(lastValue, and(newLen, 0x1f)))
                }
                sstore(slot, add(mul(newLen, 2), 1))
            }
            default {
                let value := 0
                if newLen {
                    value := mload(add(src, srcOffset))
                }
                sstore(slot, extract_used_part_and_set_length_of_short_byte_array(value, newLen))
            }
        }

        function update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(slot, value_0) {

            copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, value_0)
        }

        /// @ast-id 76
        /// @src 0:1981:2273  "constructor(..."
        function constructor_ERC20_387(var__name_46_mpos, var__symbol_48_mpos, var__decimals_50) {

            /// @src 0:1981:2273  "constructor(..."

            /// @src 0:2101:2106  "_name"
            let _6_mpos := var__name_46_mpos
            let expr_54_mpos := _6_mpos
            /// @src 0:2094:2106  "name = _name"
            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(0x00, expr_54_mpos)
            let _7_slot := 0x00
            let expr_55_slot := _7_slot
            /// @src 0:2125:2132  "_symbol"
            let _8_mpos := var__symbol_48_mpos
            let expr_58_mpos := _8_mpos
            /// @src 0:2116:2132  "symbol = _symbol"
            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(0x01, expr_58_mpos)
            let _9_slot := 0x01
            let expr_59_slot := _9_slot
            /// @src 0:2153:2162  "_decimals"
            let _10 := var__decimals_50
            let expr_62 := _10
            /// @src 0:2142:2162  "decimals = _decimals"
            let _11 := expr_62
            mstore(128, _11)
            let expr_63 := expr_62
            /// @src 0:2192:2205  "block.chainid"
            let expr_67 := chainid()
            /// @src 0:2173:2205  "INITIAL_CHAIN_ID = block.chainid"
            let _12 := expr_67
            mstore(160, _12)
            let expr_68 := expr_67
            /// @src 0:2242:2266  "computeDomainSeparator()"
            let expr_72 := fun_computeDomainSeparator_330()
            /// @src 0:2215:2266  "INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator()"
            let _13 := expr_72
            mstore(192, _13)
            let expr_73 := expr_72

        }
        /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

        function zero_value_for_split_t_bytes32() -> ret {
            ret := 0
        }

        function convert_array_t_string_storage_to_t_bytes_storage_ptr(value) -> converted  {
            converted := value

        }

        function array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length) -> updated_pos {
            mstore(pos, length)
            updated_pos := add(pos, 0x20)
        }

        function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        // bytes -> bytes
        function abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value, pos) -> ret {
            let slotValue := sload(value)
            let length := extract_byte_array_length(slotValue)
            pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
            switch and(slotValue, 1)
            case 0 {
                // short byte array
                mstore(pos, and(slotValue, not(0xff)))
                ret := add(pos, mul(0x20, iszero(iszero(length))))
            }
            case 1 {
                // long byte array
                let dataPos := array_dataslot_t_bytes_storage_ptr(value)
                let i := 0
                for { } lt(i, length) { i := add(i, 0x20) } {
                    mstore(add(pos, i), sload(dataPos))
                    dataPos := add(dataPos, 1)
                }
                ret := add(pos, i)
            }
        }

        function abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
            updatedPos := abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos)
        }

        function copy_array_from_storage_to_memory_t_bytes_storage_ptr(slot) -> memPtr {
            memPtr := allocate_unbounded()
            let end := abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(slot, memPtr)
            finalize_allocation(memPtr, sub(end, memPtr))
        }

        function convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value) -> converted  {

            // Copy the array to a free position in memory
            converted :=

            copy_array_from_storage_to_memory_t_bytes_storage_ptr(value)

        }

        function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
            data := ptr

            data := add(ptr, 0x20)

        }

        function array_length_t_bytes_memory_ptr(value) -> length {

            length := mload(value)

        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_contract$_ERC20_$387_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function cleanup_t_bytes32(value) -> cleaned {
            cleaned := value
        }

        function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
            mstore(pos, cleanup_t_bytes32(value))
        }

        function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
            mstore(pos, cleanup_t_uint256(value))
        }

        function cleanup_t_address(value) -> cleaned {
            cleaned := cleanup_t_uint160(value)
        }

        function abi_encode_t_address_to_t_address_fromStack(value, pos) {
            mstore(pos, cleanup_t_address(value))
        }

        function abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
            tail := add(headStart, 160)

            abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

            abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

            abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 128))

        }

        /// @ast-id 330
        /// @src 0:5510:5956  "function computeDomainSeparator() internal view virtual returns (bytes32) {..."
        function fun_computeDomainSeparator_330() -> var__303 {
            /// @src 0:5575:5582  "bytes32"
            let zero_t_bytes32_14 := zero_value_for_split_t_bytes32()
            var__303 := zero_t_bytes32_14

            /// @src 0:5672:5767  "keccak256(\"EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)\")"
            let expr_310 := 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
            /// @src 0:5805:5809  "name"
            let _15_slot := 0x00
            let expr_314_slot := _15_slot
            /// @src 0:5799:5810  "bytes(name)"
            let expr_315_slot := convert_array_t_string_storage_to_t_bytes_storage_ptr(expr_314_slot)
            /// @src 0:5789:5811  "keccak256(bytes(name))"
            let _16_mpos := convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(expr_315_slot)
            let expr_316 := keccak256(array_dataslot_t_bytes_memory_ptr(_16_mpos), array_length_t_bytes_memory_ptr(_16_mpos))
            /// @src 0:5833:5847  "keccak256(\"1\")"
            let expr_319 := 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6
            /// @src 0:5869:5882  "block.chainid"
            let expr_321 := chainid()
            /// @src 0:5912:5916  "this"
            let expr_324_address := address()
            /// @src 0:5904:5917  "address(this)"
            let expr_325 := convert_t_contract$_ERC20_$387_to_t_address(expr_324_address)
            /// @src 0:5640:5935  "abi.encode(..."

            let expr_326_mpos := allocate_unbounded()
            let _17 := add(expr_326_mpos, 0x20)

            let _18 := abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(_17, expr_310, expr_316, expr_319, expr_321, expr_325)
            mstore(expr_326_mpos, sub(_18, add(expr_326_mpos, 0x20)))
            finalize_allocation(expr_326_mpos, sub(_18, expr_326_mpos))
            /// @src 0:5613:5949  "keccak256(..."
            let expr_327 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_326_mpos), array_length_t_bytes_memory_ptr(expr_326_mpos))
            /// @src 0:5594:5949  "return..."
            var__303 := expr_327
            leave

        }
        /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function cleanup_from_storage_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
            value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
        }

        function read_from_storage_split_offset_0_t_uint256(slot) -> value {
            value := extract_from_storage_value_offset_0t_uint256(sload(slot))

        }

        function panic_error_0x11() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x11)
            revert(0, 0x24)
        }

        function checked_add_t_uint256(x, y) -> sum {
            x := cleanup_t_uint256(x)
            y := cleanup_t_uint256(y)
            sum := add(x, y)

            if gt(x, sum) { panic_error_0x11() }

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

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

        function convert_t_address_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
            mstore(0, convert_t_address_to_t_address(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function wrapping_add_t_uint256(x, y) -> sum {
            sum := cleanup_t_uint256(add(x, y))
        }

        function cleanup_t_rational_0_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
        }

        function convert_t_rational_0_by_1_to_t_address(value) -> converted {
            converted := convert_t_rational_0_by_1_to_t_uint160(value)
        }

        function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
            tail := add(headStart, 32)

            abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

        }

        /// @ast-id 358
        /// @src 0:6150:6475  "function _mint(address to, uint256 amount) internal virtual {..."
        function fun__mint_358(var_to_332, var_amount_334) {

            /// @src 0:6235:6241  "amount"
            let _19 := var_amount_334
            let expr_338 := _19
            /// @src 0:6220:6241  "totalSupply += amount"
            let _20 := read_from_storage_split_offset_0_t_uint256(0x02)
            let expr_339 := checked_add_t_uint256(_20, expr_338)

            update_storage_value_offset_0t_uint256_to_t_uint256(0x02, expr_339)
            /// @src 0:6404:6410  "amount"
            let _21 := var_amount_334
            let expr_344 := _21
            /// @src 0:6387:6396  "balanceOf"
            let _22 := 0x03
            let expr_341 := _22
            /// @src 0:6397:6399  "to"
            let _23 := var_to_332
            let expr_342 := _23
            /// @src 0:6387:6400  "balanceOf[to]"
            let _24 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_341,expr_342)
            /// @src 0:6387:6410  "balanceOf[to] += amount"
            let _25 := read_from_storage_split_offset_0_t_uint256(_24)
            let expr_345 := wrapping_add_t_uint256(_25, expr_344)

            update_storage_value_offset_0t_uint256_to_t_uint256(_24, expr_345)
            /// @src 0:6453:6454  "0"
            let expr_351 := 0x00
            /// @src 0:6445:6455  "address(0)"
            let expr_352 := convert_t_rational_0_by_1_to_t_address(expr_351)
            /// @src 0:6457:6459  "to"
            let _26 := var_to_332
            let expr_353 := _26
            /// @src 0:6461:6467  "amount"
            let _27 := var_amount_334
            let expr_354 := _27
            /// @src 0:6436:6468  "Transfer(address(0), to, amount)"
            let _28 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
            let _29 := convert_t_address_to_t_address(expr_352)
            let _30 := convert_t_address_to_t_address(expr_353)
            {
                let _31 := allocate_unbounded()
                let _32 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_31 , expr_354)
                log3(_31, sub(_32, _31) , _28, _29, _30)
            }
        }
        /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

    }
    /// @use-src 0:"lib/solmate/src/tokens/ERC20.sol", 1:"src/CoolToken.sol"
    // CODEMENTOR HERE
    object "CoolTokenWithFallback_428_deployed" {
        code {
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()

                    external_fun_name_20()
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    external_fun_approve_104()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_26()
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    external_fun_transferFrom_198()
                }

                case 0x313ce567
                {
                    // decimals()

                    external_fun_decimals_24()
                }

                case 0x3644e515
                {
                    // DOMAIN_SEPARATOR()

                    external_fun_DOMAIN_SEPARATOR_300()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_30()
                }

                case 0x7ecebe00
                {
                    // nonces(address)

                    external_fun_nonces_44()
                }

                case 0x95d89b41
                {
                    // symbol()

                    external_fun_symbol_22()
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    external_fun_transfer_137()
                }

                case 0xd505accf
                {
                    // permit(address,address,uint256,uint256,uint8,bytes32,bytes32)

                    external_fun_permit_285()
                }

                case 0xdd62ed3e
                {
                    // allowance(address,address)

                    external_fun_allowance_36()
                }

                default {}
            }
            if iszero(calldatasize()) { fun__427() stop() }
            fun__417() stop()

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

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function panic_error_0x22() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x22)
                revert(0, 0x24)
            }

            function extract_byte_array_length(data) -> length {
                length := div(data, 2)
                let outOfPlaceEncoding := and(data, 1)
                if iszero(outOfPlaceEncoding) {
                    length := and(length, 0x7f)
                }

                if eq(outOfPlaceEncoding, lt(length, 32)) {
                    panic_error_0x22()
                }
            }

            function array_storeLengthForEncoding_t_string_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_string_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            // string -> string
            function abi_encode_t_string_storage_to_t_string_memory_ptr(value, pos) -> ret {
                let slotValue := sload(value)
                let length := extract_byte_array_length(slotValue)
                pos := array_storeLengthForEncoding_t_string_memory_ptr(pos, length)
                switch and(slotValue, 1)
                case 0 {
                    // short byte array
                    mstore(pos, and(slotValue, not(0xff)))
                    ret := add(pos, mul(0x20, iszero(iszero(length))))
                }
                case 1 {
                    // long byte array
                    let dataPos := array_dataslot_t_string_storage(value)
                    let i := 0
                    for { } lt(i, length) { i := add(i, 0x20) } {
                        mstore(add(pos, i), sload(dataPos))
                        dataPos := add(dataPos, 1)
                    }
                    ret := add(pos, i)
                }
            }

            function abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_string_storage_to_t_string_memory_ptr(value0, pos)
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function copy_array_from_storage_to_memory_t_string_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset) -> value {
                if gt(offset, 0) { panic_error_0x00() }
                value := copy_array_from_storage_to_memory_t_string_storage(slot)
            }

            /// @ast-id 20
            /// @src 0:1031:1049  "string public name"
            function getter_fun_name_20() -> ret_mpos {

                let slot := 0
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                mstore(add(dst, length), 0)
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_name_20() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_name_20()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
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

            function abi_decode_tuple_t_addresst_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_approve_104() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_approve_104(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            /// @ast-id 26
            /// @src 0:1304:1330  "uint256 public totalSupply"
            function getter_fun_totalSupply_26() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalSupply_26() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalSupply_26()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_addresst_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_transferFrom_198() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transferFrom_198(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 24
            /// @src 0:1083:1114  "uint8 public immutable decimals"
            function getter_fun_decimals_24() -> rval {
                rval := loadimmutable("24")
            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_decimals_24() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_decimals_24()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_DOMAIN_SEPARATOR_300() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_DOMAIN_SEPARATOR_300()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 30
            /// @src 0:1337:1381  "mapping(address => uint256) public balanceOf"
            function getter_fun_balanceOf_30(key_0) -> ret {

                let slot := 3
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function external_fun_balanceOf_30() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_balanceOf_30(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 44
            /// @src 0:1751:1792  "mapping(address => uint256) public nonces"
            function getter_fun_nonces_44(key_0) -> ret {

                let slot := 5
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function external_fun_nonces_44() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_nonces_44(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 22
            /// @src 0:1056:1076  "string public symbol"
            function getter_fun_symbol_22() -> ret_mpos {

                let slot := 1
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function external_fun_symbol_22() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_symbol_22()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transfer_137() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transfer_137(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_uint8(value) {
                if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint8(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint8(value)
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_tuple_t_addresst_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6 {
                if slt(sub(dataEnd, headStart), 224) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value6 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_permit_285() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4, param_5, param_6 :=  abi_decode_tuple_t_addresst_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(4, calldatasize())
                fun_permit_285(param_0, param_1, param_2, param_3, param_4, param_5, param_6)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 36
            /// @src 0:1388:1452  "mapping(address => mapping(address => uint256)) public allowance"
            function getter_fun_allowance_36(key_0, key_1) -> ret {

                let slot := 4
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot, key_0)

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_1)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function external_fun_allowance_36() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  getter_fun_allowance_36(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
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

            /// @ast-id 104
            /// @src 0:2461:2672  "function approve(address spender, uint256 amount) public virtual returns (bool) {..."
            function fun_approve_104(var_spender_78, var_amount_80) -> var__83 {
                /// @src 0:2535:2539  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__83 := zero_t_bool_1

                /// @src 0:2584:2590  "amount"
                let _2 := var_amount_80
                let expr_91 := _2
                /// @src 0:2551:2560  "allowance"
                let _3 := 0x04
                let expr_85 := _3
                /// @src 0:2561:2571  "msg.sender"
                let expr_87 := caller()
                /// @src 0:2551:2572  "allowance[msg.sender]"
                let _4 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_85,expr_87)
                let _5 := _4
                let expr_89 := _5
                /// @src 0:2573:2580  "spender"
                let _6 := var_spender_78
                let expr_88 := _6
                /// @src 0:2551:2581  "allowance[msg.sender][spender]"
                let _7 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_89,expr_88)
                /// @src 0:2551:2590  "allowance[msg.sender][spender] = amount"
                update_storage_value_offset_0t_uint256_to_t_uint256(_7, expr_91)
                let expr_92 := expr_91
                /// @src 0:2615:2625  "msg.sender"
                let expr_96 := caller()
                /// @src 0:2627:2634  "spender"
                let _8 := var_spender_78
                let expr_97 := _8
                /// @src 0:2636:2642  "amount"
                let _9 := var_amount_80
                let expr_98 := _9
                /// @src 0:2606:2643  "Approval(msg.sender, spender, amount)"
                let _10 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _11 := convert_t_address_to_t_address(expr_96)
                let _12 := convert_t_address_to_t_address(expr_97)
                {
                    let _13 := allocate_unbounded()
                    let _14 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_13 , expr_98)
                    log3(_13, sub(_14, _13) , _10, _11, _12)
                }/// @src 0:2661:2665  "true"
                let expr_101 := 0x01
                /// @src 0:2654:2665  "return true"
                var__83 := expr_101
                leave

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function wrapping_add_t_uint256(x, y) -> sum {
                sum := cleanup_t_uint256(add(x, y))
            }

            /// @ast-id 137
            /// @src 0:2678:3051  "function transfer(address to, uint256 amount) public virtual returns (bool) {..."
            function fun_transfer_137(var_to_106, var_amount_108) -> var__111 {
                /// @src 0:2748:2752  "bool"
                let zero_t_bool_15 := zero_value_for_split_t_bool()
                var__111 := zero_t_bool_15

                /// @src 0:2789:2795  "amount"
                let _16 := var_amount_108
                let expr_117 := _16
                /// @src 0:2764:2773  "balanceOf"
                let _17 := 0x03
                let expr_113 := _17
                /// @src 0:2774:2784  "msg.sender"
                let expr_115 := caller()
                /// @src 0:2764:2785  "balanceOf[msg.sender]"
                let _18 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_113,expr_115)
                /// @src 0:2764:2795  "balanceOf[msg.sender] -= amount"
                let _19 := read_from_storage_split_offset_0_t_uint256(_18)
                let expr_118 := checked_sub_t_uint256(_19, expr_117)

                update_storage_value_offset_0t_uint256_to_t_uint256(_18, expr_118)
                /// @src 0:2958:2964  "amount"
                let _20 := var_amount_108
                let expr_123 := _20
                /// @src 0:2941:2950  "balanceOf"
                let _21 := 0x03
                let expr_120 := _21
                /// @src 0:2951:2953  "to"
                let _22 := var_to_106
                let expr_121 := _22
                /// @src 0:2941:2954  "balanceOf[to]"
                let _23 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_120,expr_121)
                /// @src 0:2941:2964  "balanceOf[to] += amount"
                let _24 := read_from_storage_split_offset_0_t_uint256(_23)
                let expr_124 := wrapping_add_t_uint256(_24, expr_123)

                update_storage_value_offset_0t_uint256_to_t_uint256(_23, expr_124)
                /// @src 0:2999:3009  "msg.sender"
                let expr_129 := caller()
                /// @src 0:3011:3013  "to"
                let _25 := var_to_106
                let expr_130 := _25
                /// @src 0:3015:3021  "amount"
                let _26 := var_amount_108
                let expr_131 := _26
                /// @src 0:2990:3022  "Transfer(msg.sender, to, amount)"
                let _27 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _28 := convert_t_address_to_t_address(expr_129)
                let _29 := convert_t_address_to_t_address(expr_130)
                {
                    let _30 := allocate_unbounded()
                    let _31 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_30 , expr_131)
                    log3(_30, sub(_31, _30) , _27, _28, _29)
                }/// @src 0:3040:3044  "true"
                let expr_134 := 0x01
                /// @src 0:3033:3044  "return true"
                var__111 := expr_134
                leave

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            /// @ast-id 198
            /// @src 0:3057:3649  "function transferFrom(..."
            function fun_transferFrom_198(var_from_139, var_to_141, var_amount_143) -> var__146 {
                /// @src 0:3175:3179  "bool"
                let zero_t_bool_32 := zero_value_for_split_t_bool()
                var__146 := zero_t_bool_32

                /// @src 0:3209:3218  "allowance"
                let _33 := 0x04
                let expr_150 := _33
                /// @src 0:3219:3223  "from"
                let _34 := var_from_139
                let expr_151 := _34
                /// @src 0:3209:3224  "allowance[from]"
                let _35 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_150,expr_151)
                let _36 := _35
                let expr_152 := _36
                /// @src 0:3225:3235  "msg.sender"
                let expr_154 := caller()
                /// @src 0:3209:3236  "allowance[from][msg.sender]"
                let _37 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_152,expr_154)
                let _38 := read_from_storage_split_offset_0_t_uint256(_37)
                let expr_155 := _38
                /// @src 0:3191:3236  "uint256 allowed = allowance[from][msg.sender]"
                let var_allowed_149 := expr_155
                /// @src 0:3287:3294  "allowed"
                let _39 := var_allowed_149
                let expr_157 := _39
                /// @src 0:3298:3315  "type(uint256).max"
                let expr_162 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 0:3287:3315  "allowed != type(uint256).max"
                let expr_163 := iszero(eq(cleanup_t_uint256(expr_157), cleanup_t_uint256(expr_162)))
                /// @src 0:3283:3363  "if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount"
                if expr_163 {
                    /// @src 0:3347:3354  "allowed"
                    let _40 := var_allowed_149
                    let expr_170 := _40
                    /// @src 0:3357:3363  "amount"
                    let _41 := var_amount_143
                    let expr_171 := _41
                    /// @src 0:3347:3363  "allowed - amount"
                    let expr_172 := checked_sub_t_uint256(expr_170, expr_171)

                    /// @src 0:3317:3326  "allowance"
                    let _42 := 0x04
                    let expr_164 := _42
                    /// @src 0:3327:3331  "from"
                    let _43 := var_from_139
                    let expr_165 := _43
                    /// @src 0:3317:3332  "allowance[from]"
                    let _44 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_164,expr_165)
                    let _45 := _44
                    let expr_168 := _45
                    /// @src 0:3333:3343  "msg.sender"
                    let expr_167 := caller()
                    /// @src 0:3317:3344  "allowance[from][msg.sender]"
                    let _46 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_168,expr_167)
                    /// @src 0:3317:3363  "allowance[from][msg.sender] = allowed - amount"
                    update_storage_value_offset_0t_uint256_to_t_uint256(_46, expr_172)
                    let expr_173 := expr_172
                    /// @src 0:3283:3363  "if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount"
                }
                /// @src 0:3393:3399  "amount"
                let _47 := var_amount_143
                let expr_179 := _47
                /// @src 0:3374:3383  "balanceOf"
                let _48 := 0x03
                let expr_176 := _48
                /// @src 0:3384:3388  "from"
                let _49 := var_from_139
                let expr_177 := _49
                /// @src 0:3374:3389  "balanceOf[from]"
                let _50 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_176,expr_177)
                /// @src 0:3374:3399  "balanceOf[from] -= amount"
                let _51 := read_from_storage_split_offset_0_t_uint256(_50)
                let expr_180 := checked_sub_t_uint256(_51, expr_179)

                update_storage_value_offset_0t_uint256_to_t_uint256(_50, expr_180)
                /// @src 0:3562:3568  "amount"
                let _52 := var_amount_143
                let expr_185 := _52
                /// @src 0:3545:3554  "balanceOf"
                let _53 := 0x03
                let expr_182 := _53
                /// @src 0:3555:3557  "to"
                let _54 := var_to_141
                let expr_183 := _54
                /// @src 0:3545:3558  "balanceOf[to]"
                let _55 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_182,expr_183)
                /// @src 0:3545:3568  "balanceOf[to] += amount"
                let _56 := read_from_storage_split_offset_0_t_uint256(_55)
                let expr_186 := wrapping_add_t_uint256(_56, expr_185)

                update_storage_value_offset_0t_uint256_to_t_uint256(_55, expr_186)
                /// @src 0:3603:3607  "from"
                let _57 := var_from_139
                let expr_190 := _57
                /// @src 0:3609:3611  "to"
                let _58 := var_to_141
                let expr_191 := _58
                /// @src 0:3613:3619  "amount"
                let _59 := var_amount_143
                let expr_192 := _59
                /// @src 0:3594:3620  "Transfer(from, to, amount)"
                let _60 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _61 := convert_t_address_to_t_address(expr_190)
                let _62 := convert_t_address_to_t_address(expr_191)
                {
                    let _63 := allocate_unbounded()
                    let _64 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_63 , expr_192)
                    log3(_63, sub(_64, _63) , _60, _61, _62)
                }/// @src 0:3638:3642  "true"
                let expr_195 := 0x01
                /// @src 0:3631:3642  "return true"
                var__146 := expr_195
                leave

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function store_literal_in_memory_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(memPtr) {

                mstore(add(memPtr, 0), "PERMIT_DEADLINE_EXPIRED")

            }

            function abi_encode_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 23)
                store_literal_in_memory_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                tail := add(headStart, 192)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function store_literal_in_memory_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541(memPtr) {

                mstore(add(memPtr, 0), 0x1901000000000000000000000000000000000000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 2)
                store_literal_in_memory_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541(pos)
                end := add(pos, 2)
            }

            function leftAlign_t_bytes32(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
            }

            function abi_encode_tuple_packed_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                pos := abi_encode_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint8_to_t_uint8_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value3,  add(headStart, 96))

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function store_literal_in_memory_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(memPtr) {

                mstore(add(memPtr, 0), "INVALID_SIGNER")

            }

            function abi_encode_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 14)
                store_literal_in_memory_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 285
            /// @src 0:3838:5321  "function permit(..."
            function fun_permit_285(var_owner_200, var_spender_202, var_value_204, var_deadline_206, var_v_208, var_r_210, var_s_212) {

                /// @src 0:4045:4053  "deadline"
                let _65 := var_deadline_206
                let expr_216 := _65
                /// @src 0:4057:4072  "block.timestamp"
                let expr_218 := timestamp()
                /// @src 0:4045:4072  "deadline >= block.timestamp"
                let expr_219 := iszero(lt(cleanup_t_uint256(expr_216), cleanup_t_uint256(expr_218)))
                /// @src 0:4037:4100  "require(deadline >= block.timestamp, \"PERMIT_DEADLINE_EXPIRED\")"
                require_helper_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(expr_219)
                /// @src 0:4428:4446  "DOMAIN_SEPARATOR()"
                let expr_231 := fun_DOMAIN_SEPARATOR_300()
                /// @src 0:4555:4720  "keccak256(..."
                let expr_237 := 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9
                /// @src 0:4754:4759  "owner"
                let _66 := var_owner_200
                let expr_238 := _66
                /// @src 0:4793:4800  "spender"
                let _67 := var_spender_202
                let expr_239 := _67
                /// @src 0:4834:4839  "value"
                let _68 := var_value_204
                let expr_240 := _68
                /// @src 0:4873:4879  "nonces"
                let _69 := 0x05
                let expr_241 := _69
                /// @src 0:4880:4885  "owner"
                let _70 := var_owner_200
                let expr_242 := _70
                /// @src 0:4873:4886  "nonces[owner]"
                let _71 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_241,expr_242)
                /// @src 0:4873:4888  "nonces[owner]++"
                let _73 := read_from_storage_split_offset_0_t_uint256(_71)
                let _72 := increment_wrapping_t_uint256(_73)
                update_storage_value_offset_0t_uint256_to_t_uint256(_71, _72)
                let expr_244 := _73
                /// @src 0:4922:4930  "deadline"
                let _74 := var_deadline_206
                let expr_245 := _74
                /// @src 0:4511:4960  "abi.encode(..."

                let expr_246_mpos := allocate_unbounded()
                let _75 := add(expr_246_mpos, 0x20)

                let _76 := abi_encode_tuple_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__fromStack(_75, expr_237, expr_238, expr_239, expr_240, expr_244, expr_245)
                mstore(expr_246_mpos, sub(_76, add(expr_246_mpos, 0x20)))
                finalize_allocation(expr_246_mpos, sub(_76, expr_246_mpos))
                /// @src 0:4472:4986  "keccak256(..."
                let expr_247 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_246_mpos), array_length_t_bytes_memory_ptr(expr_246_mpos))
                /// @src 0:4350:5008  "abi.encodePacked(..."

                let expr_248_mpos := allocate_unbounded()
                let _77 := add(expr_248_mpos, 0x20)

                let _78 := abi_encode_tuple_packed_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_77, expr_231, expr_247)
                mstore(expr_248_mpos, sub(_78, add(expr_248_mpos, 0x20)))
                finalize_allocation(expr_248_mpos, sub(_78, expr_248_mpos))
                /// @src 0:4319:5026  "keccak256(..."
                let expr_249 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_248_mpos), array_length_t_bytes_memory_ptr(expr_248_mpos))
                /// @src 0:5044:5045  "v"
                let _79 := var_v_208
                let expr_250 := _79
                /// @src 0:5063:5064  "r"
                let _80 := var_r_210
                let expr_251 := _80
                /// @src 0:5082:5083  "s"
                let _81 := var_s_212
                let expr_252 := _81
                /// @src 0:4292:5097  "ecrecover(..."

                let _82 := allocate_unbounded()
                let _83 := abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(_82 , expr_249, expr_250, expr_251, expr_252)

                mstore(0, 0)

                let _84 := staticcall(gas(), 1 , _82, sub(_83, _82), 0, 32)
                if iszero(_84) { revert_forward_1() }
                let expr_253 := shift_left_0(mload(0))
                /// @src 0:4265:5097  "address recoveredAddress = ecrecover(..."
                let var_recoveredAddress_224 := expr_253
                /// @src 0:5120:5136  "recoveredAddress"
                let _85 := var_recoveredAddress_224
                let expr_256 := _85
                /// @src 0:5148:5149  "0"
                let expr_259 := 0x00
                /// @src 0:5140:5150  "address(0)"
                let expr_260 := convert_t_rational_0_by_1_to_t_address(expr_259)
                /// @src 0:5120:5150  "recoveredAddress != address(0)"
                let expr_261 := iszero(eq(cleanup_t_address(expr_256), cleanup_t_address(expr_260)))
                /// @src 0:5120:5179  "recoveredAddress != address(0) && recoveredAddress == owner"
                let expr_265 := expr_261
                if expr_265 {
                    /// @src 0:5154:5170  "recoveredAddress"
                    let _86 := var_recoveredAddress_224
                    let expr_262 := _86
                    /// @src 0:5174:5179  "owner"
                    let _87 := var_owner_200
                    let expr_263 := _87
                    /// @src 0:5154:5179  "recoveredAddress == owner"
                    let expr_264 := eq(cleanup_t_address(expr_262), cleanup_t_address(expr_263))
                    /// @src 0:5120:5179  "recoveredAddress != address(0) && recoveredAddress == owner"
                    expr_265 := expr_264
                }
                /// @src 0:5112:5198  "require(recoveredAddress != address(0) && recoveredAddress == owner, \"INVALID_SIGNER\")"
                require_helper_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(expr_265)
                /// @src 0:5252:5257  "value"
                let _88 := var_value_204
                let expr_274 := _88
                /// @src 0:5213:5222  "allowance"
                let _89 := 0x04
                let expr_269 := _89
                /// @src 0:5223:5239  "recoveredAddress"
                let _90 := var_recoveredAddress_224
                let expr_270 := _90
                /// @src 0:5213:5240  "allowance[recoveredAddress]"
                let _91 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_269,expr_270)
                let _92 := _91
                let expr_272 := _92
                /// @src 0:5241:5248  "spender"
                let _93 := var_spender_202
                let expr_271 := _93
                /// @src 0:5213:5249  "allowance[recoveredAddress][spender]"
                let _94 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_272,expr_271)
                /// @src 0:5213:5257  "allowance[recoveredAddress][spender] = value"
                update_storage_value_offset_0t_uint256_to_t_uint256(_94, expr_274)
                let expr_275 := expr_274
                /// @src 0:5292:5297  "owner"
                let _95 := var_owner_200
                let expr_279 := _95
                /// @src 0:5299:5306  "spender"
                let _96 := var_spender_202
                let expr_280 := _96
                /// @src 0:5308:5313  "value"
                let _97 := var_value_204
                let expr_281 := _97
                /// @src 0:5283:5314  "Approval(owner, spender, value)"
                let _98 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _99 := convert_t_address_to_t_address(expr_279)
                let _100 := convert_t_address_to_t_address(expr_280)
                {
                    let _101 := allocate_unbounded()
                    let _102 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_101 , expr_281)
                    log3(_101, sub(_102, _101) , _98, _99, _100)
                }
            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            /// @ast-id 300
            /// @src 0:5327:5504  "function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {..."
            function fun_DOMAIN_SEPARATOR_300() -> var__288 {
                /// @src 0:5384:5391  "bytes32"
                let zero_t_bytes32_103 := zero_value_for_split_t_bytes32()
                var__288 := zero_t_bytes32_103

                /// @src 0:5410:5423  "block.chainid"
                let expr_291 := chainid()
                /// @src 0:5427:5443  "INITIAL_CHAIN_ID"
                let _104 := loadimmutable("38")
                let expr_292 := _104
                /// @src 0:5410:5443  "block.chainid == INITIAL_CHAIN_ID"
                let expr_293 := eq(cleanup_t_uint256(expr_291), cleanup_t_uint256(expr_292))
                /// @src 0:5410:5497  "block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                let expr_297
                switch expr_293
                case 0 {
                    /// @src 0:5473:5497  "computeDomainSeparator()"
                    let expr_296 := fun_computeDomainSeparator_330()
                    /// @src 0:5410:5497  "block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                    expr_297 := expr_296
                }
                default {
                    /// @src 0:5446:5470  "INITIAL_DOMAIN_SEPARATOR"
                    let _105 := loadimmutable("40")
                    let expr_294 := _105
                    /// @src 0:5410:5497  "block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                    expr_297 := expr_294
                }
                /// @src 0:5403:5497  "return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                var__288 := expr_297
                leave

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function convert_array_t_string_storage_to_t_bytes_storage_ptr(value) -> converted  {
                converted := value

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            // bytes -> bytes
            function abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value, pos) -> ret {
                let slotValue := sload(value)
                let length := extract_byte_array_length(slotValue)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
                switch and(slotValue, 1)
                case 0 {
                    // short byte array
                    mstore(pos, and(slotValue, not(0xff)))
                    ret := add(pos, mul(0x20, iszero(iszero(length))))
                }
                case 1 {
                    // long byte array
                    let dataPos := array_dataslot_t_bytes_storage_ptr(value)
                    let i := 0
                    for { } lt(i, length) { i := add(i, 0x20) } {
                        mstore(add(pos, i), sload(dataPos))
                        dataPos := add(dataPos, 1)
                    }
                    ret := add(pos, i)
                }
            }

            function abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos)
            }

            function copy_array_from_storage_to_memory_t_bytes_storage_ptr(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                copy_array_from_storage_to_memory_t_bytes_storage_ptr(value)

            }

            function convert_t_contract$_ERC20_$387_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 128))

            }

            /// @ast-id 330
            /// @src 0:5510:5956  "function computeDomainSeparator() internal view virtual returns (bytes32) {..."
            function fun_computeDomainSeparator_330() -> var__303 {
                /// @src 0:5575:5582  "bytes32"
                let zero_t_bytes32_106 := zero_value_for_split_t_bytes32()
                var__303 := zero_t_bytes32_106

                /// @src 0:5672:5767  "keccak256(\"EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)\")"
                let expr_310 := 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                /// @src 0:5805:5809  "name"
                let _107_slot := 0x00
                let expr_314_slot := _107_slot
                /// @src 0:5799:5810  "bytes(name)"
                let expr_315_slot := convert_array_t_string_storage_to_t_bytes_storage_ptr(expr_314_slot)
                /// @src 0:5789:5811  "keccak256(bytes(name))"
                let _108_mpos := convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(expr_315_slot)
                let expr_316 := keccak256(array_dataslot_t_bytes_memory_ptr(_108_mpos), array_length_t_bytes_memory_ptr(_108_mpos))
                /// @src 0:5833:5847  "keccak256(\"1\")"
                let expr_319 := 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6
                /// @src 0:5869:5882  "block.chainid"
                let expr_321 := chainid()
                /// @src 0:5912:5916  "this"
                let expr_324_address := address()
                /// @src 0:5904:5917  "address(this)"
                let expr_325 := convert_t_contract$_ERC20_$387_to_t_address(expr_324_address)
                /// @src 0:5640:5935  "abi.encode(..."

                let expr_326_mpos := allocate_unbounded()
                let _109 := add(expr_326_mpos, 0x20)

                let _110 := abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(_109, expr_310, expr_316, expr_319, expr_321, expr_325)
                mstore(expr_326_mpos, sub(_110, add(expr_326_mpos, 0x20)))
                finalize_allocation(expr_326_mpos, sub(_110, expr_326_mpos))
                /// @src 0:5613:5949  "keccak256(..."
                let expr_327 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_326_mpos), array_length_t_bytes_memory_ptr(expr_326_mpos))
                /// @src 0:5594:5949  "return..."
                var__303 := expr_327
                leave

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            /// @ast-id 417
            /// @src 1:388:451  "fallback() external {..."
            function fun__417() {

                /// @src 1:424:434  "msg.sender"
                let expr_412 := caller()
                /// @src 1:436:443  "1 ether"
                let expr_413 := 0x0de0b6b3a7640000
                /// @src 1:418:444  "_mint(msg.sender, 1 ether)"
                let _111 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_413)
                fun__mint_358(expr_412, _111)

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            /// @ast-id 358
            /// @src 0:6150:6475  "function _mint(address to, uint256 amount) internal virtual {..."
            function fun__mint_358(var_to_332, var_amount_334) {

                /// @src 0:6235:6241  "amount"
                let _112 := var_amount_334
                let expr_338 := _112
                /// @src 0:6220:6241  "totalSupply += amount"
                let _113 := read_from_storage_split_offset_0_t_uint256(0x02)
                let expr_339 := checked_add_t_uint256(_113, expr_338)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x02, expr_339)
                /// @src 0:6404:6410  "amount"
                let _114 := var_amount_334
                let expr_344 := _114
                /// @src 0:6387:6396  "balanceOf"
                let _115 := 0x03
                let expr_341 := _115
                /// @src 0:6397:6399  "to"
                let _116 := var_to_332
                let expr_342 := _116
                /// @src 0:6387:6400  "balanceOf[to]"
                let _117 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_341,expr_342)
                /// @src 0:6387:6410  "balanceOf[to] += amount"
                let _118 := read_from_storage_split_offset_0_t_uint256(_117)
                let expr_345 := wrapping_add_t_uint256(_118, expr_344)

                update_storage_value_offset_0t_uint256_to_t_uint256(_117, expr_345)
                /// @src 0:6453:6454  "0"
                let expr_351 := 0x00
                /// @src 0:6445:6455  "address(0)"
                let expr_352 := convert_t_rational_0_by_1_to_t_address(expr_351)
                /// @src 0:6457:6459  "to"
                let _119 := var_to_332
                let expr_353 := _119
                /// @src 0:6461:6467  "amount"
                let _120 := var_amount_334
                let expr_354 := _120
                /// @src 0:6436:6468  "Transfer(address(0), to, amount)"
                let _121 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _122 := convert_t_address_to_t_address(expr_352)
                let _123 := convert_t_address_to_t_address(expr_353)
                {
                    let _124 := allocate_unbounded()
                    let _125 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_124 , expr_354)
                    log3(_124, sub(_125, _124) , _121, _122, _123)
                }
            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

            function cleanup_t_rational_100000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100000000000000000000_by_1(value)))
            }

            /// @ast-id 427
            /// @src 1:457:529  "receive() external payable {..."
            function fun__427() {

                /// @src 1:500:510  "msg.sender"
                let expr_422 := caller()
                /// @src 1:512:521  "100 ether"
                let expr_423 := 0x056bc75e2d63100000
                /// @src 1:494:522  "_mint(msg.sender, 100 ether)"
                let _126 := convert_t_rational_100000000000000000000_by_1_to_t_uint256(expr_423)
                fun__mint_358(expr_422, _126)

            }
            /// @src 1:245:531  "contract CoolTokenWithFallback is ERC20 {..."

        }

        data ".metadata" hex"a264697066735822122081c5100256fcfdb1cd9246f0b1972e92974214b524cf1c2a60116574ce65993964736f6c63430008100033"
    }

}


