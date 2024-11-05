package test

import "core:fmt"
print :: fmt.println


main :: proc() {

	num := fmt.tprintf("%.2f", convertToFahrenheit(0))
	num1 := fmt.tprintf("%.2f", convertToFahrenheit(100))
	num2 := fmt.tprintf("%.2f", convertToFahrenheit(-40))
	print(num)
	print(num1)
	print(num2)

	free_all(context.temp_allocator)

	// OUTPUT:
	// 32.00
	// 212.00
	// -40.00

}

convertToFahrenheit :: proc(f: f64) -> f64 {
	res := (f * (9.0 / 5)) + 32
	res_rounded := round(res, 2)
	return res_rounded
}
