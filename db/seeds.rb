#Heroes 
h1 = Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
h2 = Hero.create(name: "Doreen Green", super_name: "Squirrel Girl") 
h3 = Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")
h4 = Hero.create(name: "Chris Hermsworth", super_name: "Thor")
h5 = Hero.create(name: "Tony stark", super_name: "Iron man") 

#Powers 
p1 = Power.create(name: "Super strength", description: "gives the wielder super-human strengths")
p2 = Power.create(name: "Flight", description: "gives the wielder the ability to fly through the skies at supersonic speed") 
p3 = Power.create(name: "Speed", description: "gives the wielder super-human speed") 
p4 = Power.create(name: "Lightning", description: "gives the wielder ability to summon lightning") 
p5 = Power.create(name: "Space travel", description: "gives the wielder ability to travel through space.")

#Heropower 
HeroPower.create(strength: "Strong", hero_id: h1.id, power_id: p1.id)
HeroPower.create(strength: "Strong", hero_id: h1.id, power_id: p2.id)
HeroPower.create(strength: "Strong", hero_id: h1.id, power_id: p5.id) 
HeroPower.create(strength: "Weak", hero_id: h2.id, power_id: p3.id)
HeroPower.create(strength: "Strong", hero_id: h3.id, power_id: p2.id)
HeroPower.create(strength: "Strong", hero_id: h4.id, power_id: p2.id)
HeroPower.create(strength: "Strong", hero_id: h4.id, power_id: p1.id)
HeroPower.create(strength: "Strong", hero_id: h4.id, power_id: p4.id)
HeroPower.create(strength: "Strong", hero_id: h4.id, power_id: p5.id) 
HeroPower.create(strength: "Strong", hero_id: h5.id, power_id: p2.id) 
HeroPower.create(strength: "Strong", hero_id: h3.id, power_id: p5.id)
