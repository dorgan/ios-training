func checkStuff(temp temp: Float, thermostat: Float, mode: Int) {
    var acRunning = false,
    furnaceRunning = false

    if (temp < thermostat && temp < thermostat - 2.0 && mode == 0) {
        acRunning = false
        furnaceRunning = true
    } else if (temp >= thermostat && mode == 0) {
        furnaceRunning = false
        acRunning = false
    } else if (temp >  thermostat && temp > thermostat + 2.0 && mode == 1) {
        acRunning = true
        furnaceRunning = false
    } else if (temp <= thermostat && mode == 1) {
        acRunning = false
        furnaceRunning = false
    }
    var curMode: String? = nil
    print(acRunning, furnaceRunning)
    if (acRunning && !furnaceRunning) {
        curMode = "AC"
    } else if (furnaceRunning && !acRunning) {
        curMode = "HEAT"
    } else {
        curMode = "OFF"
    }
    
    print("The current mode is: \(curMode)")
}

//checkStuff(temp: 68.00, thermostat: 75.00, mode: 0)
//checkStuff(temp: 70.00, thermostat: 75.00, mode: 1)
//checkStuff(temp: 78.00, thermostat: 75.00, mode: 1)

func calculateRetirement(annualSavings: Float = 100, var years: Int = 50) -> Float {
    var newSavings: Float = 0.00
    if (years == 1) {
        return annualSavings * 1.077
    } else {
        newSavings = annualSavings * 1.077
        years = years - 1
        return annualSavings + calculateRetirement(newSavings, years: years)
    }
}
calculateRetirement(1000.00, years: 1)
calculateRetirement(1000.00, years:53)