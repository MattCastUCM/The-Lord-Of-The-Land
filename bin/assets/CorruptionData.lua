return {
    _type={
        Military=1,
        Agricultural=2,
        Energy=3,
        Healthcare=4,
        Housing=5
    },
    _texts={
        { 
            text = "A huge oil reserve has been found, but it is in a protected \nnatural park. The legislation would need to be changed...", 
            prob = 0.5,
            Military=100,
            Agricultural=0,
            Energy=100,
            Healthcare=0,
            Housing=0 
        },
        { 
            text = "Oh no! A military test from a foreign government has hit one \nof our bases! We should declare war!", 
            prob = 0.5,
            Military=100,
            Agricultural=0,
            Energy=100,
            Healthcare=0,
            Housing=0 
        },
        { 
            text = "An international conference wants to release the patents for \nthe synthesis of a highly sought-after medicine, but we can \nsurely pay to change their minds.", 
            prob = 0.5,
            Military=0,
            Agricultural=0,
            Energy=0,
            Healthcare=100,
            Housing=0 
        },
        { 
            text = "One of the country's largest grain producers has most of its \nfields sitting on a huge uranium deposit. It's time to \nexpropriate some of the land.", 
            prob = 0.5,
            Military=0,
            Agricultural=-50,
            Energy=100,
            Healthcare=0,
            Housing=0 
        },
        { 
            text = "A university has managed to develop vaccines for one of the \nlatest, most aggressive flu strains, and they want to make the \nknowledge public and free! Not if we buy it first.", 
            prob = 0.5,
            Military=0,
            Agricultural=0,
            Energy=0,
            Healthcare=100,
            Housing=0
        },
        { 
            text = "Restrictions on tourist rentals are severely limiting the \nprofits that can be made from properties, but that could \nchange...", 
            prob = 0.5,
            Military=0,
            Agricultural=0,
            Energy=0,
            Healthcare=0,
            Housing=100 
        },
        { 
            text = "A foreign country has managed to create better and cheaper\n sources of energy. We should tax them to make people keep \nbuying ours.", 
            prob = 0.5,
            Military=0,
            Agricultural=0,
            Energy=100,
            Healthcare=0,
            Housing=0 
        },{ 
            text = "A diplomatic pact could end several open conflicts if we\n accept their offer of oil reserves.", 
            prob = 0.5,
            Military=-50,
            Agricultural=-50,
            Energy=100,
            Healthcare=0,
            Housing=100 
        },{ 
            text = "We should legalize more extremely addictive compounds, \nthey seem like a good market", 
            prob = 0.5,
            Military=0,
            Agricultural=0,
            Energy=0,
            Healthcare=100,
            Housing=0
        },
        { 
            text = "Many new construction projects could be halted. There is a \nconglomerate of grain producers that would pay very well \nfor the land.", 
            prob = 0.5,
            Military=-50,
            Agricultural=1100,
            Energy=-50,
            Healthcare=-50,
            Housing=-50 
        },
    }
   
}