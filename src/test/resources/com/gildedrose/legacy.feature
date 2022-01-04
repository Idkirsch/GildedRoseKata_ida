Feature: Gilded Rose behaviour of the legacy code

// Example of a scenario
Scenario: Aged Brie increases in quality the older it gets
	Given an item named "Aged Brie" with quality 9 and which has to be sold in 11 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 10

Scenario: An item decreases in quality every day
	Given an item named "Elixir of the Mongoose" with quality 5 and which has to be sold in 5 days
	When a day has passed
	Then it has to be sold in 4 days
	And its quality is 4

Scenario: An item decreases in quality every day
	Given an item named "+5 Dexterity Vest" with quality 5 and which has to be sold in 5 days
	When a day has passed
	Then it has to be sold in 4 days
	And its quality is 4



Scenario: Elixir of the Mongoose decreases twice as fast when the sell by date has passed 
	Given an item named "Elixir of the Mongoose" with quality 13 and which has to be sold in 0 days
	When a day has passed
	Then its quality is 11

Scenario: +5 Dexterity Vest decreases twice as fast when the sell by date has passed
	Given an item named "+5 Dexterity Vest" with quality 13 and which has to be sold in 0 days
	When a day has passed
	Then its quality is 11


Scenario: A quality of an item never decreases below 0
	Given an item named "Elixir of the Mongoose" with quality 0 and which has to be sold in 0 days
	When a day has passed
	Then its quality is 0

Scenario: The quality of a backstage pass is never above 50
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 49 and which has to be sold in 10 days
	When a day has passed
	Then its quality is 50

Scenario: The quality of a brie is never above 50
	Given an item named "Aged Brie" with quality 50 and which has to be sold in 0 days
	When a day has passed
	Then its quality is 50
	
Scenario: Sulfuras never decreases in quality 
	Given an item named "Sulfuras, Hand of Ragnaros" with quality 80 and which has to be sold in 0 days
	When a day has passed
	Then its quality is 80

Scenario: Sulfuras never decreases in sell by date
	Given an item named "Sulfuras, Hand of Ragnaros" with quality 80 and which has to be sold in 1 days
	When a day has passed
	Then it has to be sold in 1 days

Scenario: Backstage passes increases by 2 when there are 10 days or less
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 15 and which has to be sold in 10 days
	When a day has passed
	Then it has to be sold in 9 days
	And its quality is 17

Scenario: Backstage passes increases by 3 when there are 5 days or less
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 10 and which has to be sold in 5 days
	When a day has passed
	Then it has to be sold in 4 days
	And its quality is 13

Scenario: The backstage pass quality drops to 0 after concert
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 10 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 0

Scenario: A conjured item decreases in quality twice as fast as any other item
	Given an item named "Conjured Mana Cake" with quality 8 and which has to be sold in 3 days
	When a day has passed
	Then it has to be sold in 2 days
	And its quality is 6
