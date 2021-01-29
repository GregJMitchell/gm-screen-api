# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(username: 'test_user', email: 'test_email@email.com', password: 'password',
                   password_confirmation: 'password')

Campaign.create(title: 'Vox Machina', description: 'Legendary Heroes', user_id: user.id,
                image: 'https://i.pinimg.com/originals/78/64/7c/78647c68fb642ad23d3f0fb9cbc55bda.jpg')
m9 = Campaign.create(title: 'Mighty Nien', description: 'Legendary Heroes', user_id: user.id,
                     image: 'https://i.pinimg.com/originals/78/64/7c/78647c68fb642ad23d3f0fb9cbc55bda.jpg')
Campaign.create(title: 'Black Goats', description: 'Legendary Heroes', user_id: user.id,
                image: 'https://i.pinimg.com/originals/78/64/7c/78647c68fb642ad23d3f0fb9cbc55bda.jpg')
dw_empire = m9.factions.create(name: 'Dwendalian Empire', description: 'The Dwendalian Empire is a nation on the continent of Wildemount, dominating the western half of the region of Wynandir. Founded thirteen generations before the events of Campaign 2, the Empire has slowly encompassed territory of the continent and now mainly minds itself. The capital of the Dwendalian Empire is Rexxentrum, a massive city more than twice the size of Emon.',
                               capitol: 'Rexxentrum')
rex = m9.cities.create(faction_id: dw_empire.id, name: 'Rexxentrum', gov_type: 'Empire', population: 205_200,
                       description: 'Rexxentrum is a huge, sprawling metropolis of multitudes of towers and chimneys of all heights and sizes, built on rolling hills still visible under the buildings covering them.')
m9.npcs.create(name: 'Trent Ikithon', backstory: 'Trent Ikithon was formerly an instructor at the Soltryce Academy. He is now the Archmage of Civil Influence for the Cerberus Assembly, in charge of propaganda for the Dwendalian Empire. Less publicly, he is the head of the Volstrucker, or "Scourgers", the secret arcane assassins of the Assembly.',
               alignment: 'Chaotic Evil')
               
# PlayerCharacter.create(name: 'Caleb Widowgast', backstory: "When Bren was around 17, as a test of his three students' loyalty, Trent modified their memories so they believed that their parents had betrayed the empire. The three killed their parents, but Bren 'broke' when he heard his parents' screams from inside their burning house. Bren spent the next eleven years in the Vergesson Sanatorium until a woman whom he believed to be a fellow patient touched him, removing both his madness and his fake memories. After that, he killed one of the guards, took a necklace to hide from Ikithon, and escaped. He started going by multiple aliases and hid from Trent for the next five years. During this time, Caleb discovered that people didn't pay attention to poor, dirty wanderers and maintained a disheveled appearance to escape notice. While he still has hopes not to let his parents down, Bren considers murdering them to be an unforgivable act on his part.",
#                        race: 'Human', class: 'Wizard', level: 13, character_sheet_url: 'https://www.dropbox.com/sh/gu1g0u2zp8amcno/AADUDG3fDejLBOFt6DIipuWaa?dl=0&preview=Caleb_L13.pdf',
#                        campaign_id: m9.id)

luxon = m9.storylines.create(name: 'Missing Luxon Beacon',
                             description: "Empress Kryn revealed that two Beacons were lost when they were stolen by the Dwendalian Empire. Thanks to Caleb returning the Mighty Nein's beacon, the Kryn Dynasty now has three Beacons in their possession. Skysybil Abrianna Mirimm emphasized that the loss of a Beacon is a loss of a source of the Kryn cycle of rebirth.")
Quest.create(name: 'Punishment and Politics', description: "The Mighty Nein appeared before King Bertrand Dwendal and his council, Trent among them. When talking about the Luxon Beacon, Ludinus Da'leth said that Trent recently 'uncovered' this relic, and that perhaps by using the Nein as a mediation tool, they could bring the conflict to an end by returning the beacon, since it didn't serve any purpose of the Empire's. After the meeting was adjourned, Trent approached the Mighty Nein, congratulating them and recognizing both Yasha and Caleb.",
             rewards: 'Missing Luxon Beacon',
             storyline_id: luxon.id, city_id: rex.id, campaign_id: m9.id)
