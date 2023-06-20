import Foundation

/// Learning closures
var salaries: [Int] = [300, 500, 1900, 2200, 4200, 10800]

// Full closure syntax
var lowestSalaryFilter: (Int) -> Bool = { salary in
    return salary < 2000
}

var highestSalaryFilter: (Int) -> Bool = {
    return $0 > 2000
}

// Closure function syntax
func lowestSalaryFilterFunc(salary: Int) -> Bool {
    return salary > 300
}


salaries.filter(highestSalaryFilter)
salaries.filter(lowestSalaryFilter)
salaries.filter(lowestSalaryFilterFunc)

