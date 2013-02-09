//	@file Version: 1.0
//	@file Name: advertise.sqf
//	@file Author: Zuen
//	@file Created: 26/01/2013 14:51
//	@file Args:

//Create an innitial sleep time of 5 min to pass the starting hint messages.
sleep 300;

_AddvertiseArray = [
	["Donation", "Help keep these servers up by sending a donation to tkgaming.com"],
	["Servers", "We have 2 DayZ servers, 4 Wasteland servers and 4 Minecraft servers."],
	["Website", "Come join us on the forums and be part of the next decision that TKG is making!"],
	["Join TKG", "TKG is a community and not a clan. Come join us on TeamSpeak and become part of the great community."],
	["YouTube", "TKG has some awesome YouTubers out there making videos for the community. Make sure to go check out <t color='#9482C9'>iZuen</t> on YouTube!"],
	["Live Stream", "TKG has live streamers for your entertainment. Make sure to check them out on twitch. <t color='#9482C9'>leavaris</t>, <t color='#9482C9'>Peewpew</t>, <t color='#9482C9'>tkglive</t>."]
];

while {true} do
{
	sleep 1800; //Every 30 Min
	
	// Get random Advertise message from the array
	_message = _AddvertiseArray select (random (count _AddvertiseArray - 1));
	
	
	hint parseText format ["
		<t align='center' color='#99aa00' shadow='2' size='1.75'>%1</t>
		<br/>
		<t align='center' color='#fbb100'>______________________________</t>
		<br/>
		<t align='center' color='#FFFFCC' size='1.25'>%2</t>
	", (_message select 0), (_message select 1)];
};