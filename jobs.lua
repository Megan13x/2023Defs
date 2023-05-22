QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Dosser',
                payment = 50
            },
        },
	},
    ['coolbeans'] = { 
        label = 'Cool Beans',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Cool Beans Worker',
                payment = 100
            },
            ['1'] = {
                name = 'Cool Beans Manager',
                payment = 200,
                isboss = true,
            },
        },
    },
    ['muc'] = { 
        label = 'Materials United Company',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'MUC Worker',
                payment = 60,
            },
            ['1'] = {
                name = 'MUC Team Leader',
                payment = 70,
            },
            ['2'] = {
                name = 'MUC Manager',
                payment = 80,
            },
            ['3'] = {
                name = 'MUC Owner',
                payment = 100,
                isboss = true,
            },
        },
    },
    ['chings'] = { 
        label = 'Chings Chopsticks',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Delivery',
                payment = 80,
            },
            ['1'] = {
                name = 'Waiter',
                payment = 80,
            },
            ['2'] = {
                name = 'Chef',
                payment = 80,
            },
            ['3'] = {
                name = 'Security/Bouncer',
                payment = 80,
            },
            ['4'] = {
                name = 'Chings Chopsticks Owner',
                payment = 100,
                isboss = true,
            },
        },
    },
    ['postop'] = { 
        label = 'PostOp',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
            ['1'] = {
                name = 'Manager',
                payment = 50
            },
            ['2'] = {
                name = 'Boss',
                isboss = true,
                payment = 50
            },
        },
    },
    ['gruppesechs'] = {
        label = 'G4S Money Transport',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
    }, 
    ['police'] = {
		label = 'MET Police',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'PCSO',
                payment = 1000
            },
			['1'] = {
                name = 'PC',
                payment = 1100
            },
			['2'] = {
                name = 'Sergeant',
                payment = 1200
            },
			['3'] = {
                name = 'Low Command',
                payment = 1400
            },
			['4'] = {
                name = 'High Command',
				isboss = true,
                payment = 1500
            },
        },
	},
	['ambulance'] = {
		label = 'NHS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Nurse',
                payment = 900
            },
			['1'] = {
                name = 'Doctor',
                payment = 1000
            },
			['2'] = {
                name = 'Paramedic',
                payment = 1100
            },
			['3'] = {
                name = 'Head Paramedic',
                payment = 1200
            },
			['4'] = {
                name = 'NHS Command',
				isboss = true,
                payment = 1300
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Driver',
                payment = 50
            },
			['2'] = {
                name = 'Event Driver',
                payment = 50
            },
			['3'] = {
                name = 'Sales',
                payment = 50
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 50
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
		},
	},
    ['cardealer'] = {
		label = '2-2 Motors',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Apprentice',
                payment = 600
            },
			['1'] = {
                name = 'Shadowing Sales',
                payment = 625
            },
			['2'] = {
                name = 'Salesmen',
                payment = 650
            },
			['3'] = {
                name = 'Sensior Salesmen',
                payment = 675
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 700
            },
        },
	},
	['mechanic'] = {
		label = 'AA Mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 475
            },
			['1'] = {
                name = 'Novice',
                payment = 500
            },
			['2'] = {
                name = 'Experienced Mechanic',
                payment = 525
            },
			['3'] = {
                name = 'Manager',
                payment = 550
            },
			['4'] = {
                name = 'AA Command',
				isboss = true,
                payment = 600
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
	},
    ["burgershot"] = {
		label = "Burgershot Employee",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 300
            },
			['1'] = {
                name = "Employee",
                payment = 325
            },
			['2'] = {
                name = "Burger Flipper",
                payment = 350
            },
			['3'] = {
                name = "Manager",
                payment = 375
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                payment = 400
            },
        },
	},
    ["dealsonwheels"] = {
		label = "Cash4Cars",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 250
            },
			['1'] = {
                name = "Salesman",
                payment = 300
            },
			['2'] = {
                name = "Manager",
                isboss = true,
                payment = 350
            },
        },
	},
}
