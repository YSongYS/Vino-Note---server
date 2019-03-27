Log.destroy_all
Look.destroy_all
Smell.destroy_all
Taste.destroy_all
User.destroy_all
Smell.destroy_all
Wine.destroy_all


############################################################
# CREATE COLORS WITH CALRITY AND VISCOSITY PROFILE         #
############################################################
colors = Look.color_names
clarity = [1,2,3,4,5]
viscosity = [1,2,3,4,5]

looks = colors.keys.map {|col| clarity.map {|cla| viscosity.map {|vis| {color: col, clarity: cla, viscosity: vis}}}}.flatten
Look.create(looks)


############################################################
# SMELL !!!!!!#ditched, due to over>30.000 possibilities   #
# creating only 50 sample smells                           #
############################################################
smellPri = Smell.categories['Primary']
smellSec = Smell.categories['Secondary']
smellTer = Smell.categories['Tertiary']
smellFla = Smell.categories['Flaws']
smells = []
smells = smellPri.keys.map {|plt| smellSec.keys.map {|slt| smellTer.keys.map {|tlt| smellFla.keys.map {|flt| { primary_level_two: plt, primary_level_three: smellPri[plt][0], secondary_level_two: slt, secondary_level_three: smellSec[slt][0], tertiary_level_two: tlt, tertiary_level_three: smellTer[tlt][0], flaw_level_two: flt, flaw_level_three: smellFla[flt][0]}}}}}.flatten
Smell.create(smells)

############################################################
# CREATE Taste PROFILE                                     #
############################################################

scale = [1,2,3,4,5]
tastes = scale.map{|l1| scale.map{|l2| scale.map{|l3| scale.map{|l4| scale.map{|l5| {sweetness: l1, acidity: l2, tannin: l3, alcohol: l4, body: l5} }}}}}.flatten
Taste.create(tastes)

users = [
  {email: "song@gmail.com", nickname: "Song", password: "cici<3wine"},
  {email: "minha@gmail.com", nickname: "Minha", password: "minha<3wine"}
]
User.create(users)


#Half random seed data ###################################

############################################################
# CREATE Wine (base on top 50 wines of 2018)               #
############################################################

## retrieved from https://vinepair.com/articles/best-wines-2018/
images = ["https://static.vinepair.com/wp-content/uploads/2018/11/Wine1.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine2.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine3.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine4.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine5.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine6.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine7.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine8.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine9.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine10.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine11.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine12.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine13.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine14.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine15.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine16.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine17.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine18.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine19.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine20.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine21.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine22.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine23.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine24.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine25.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine26.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine27.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine28.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine29.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine30.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine31.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine32.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine33-1.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine34.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine35.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine36.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine37.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine38.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine39.png", "https://static.vinepair.com/wp-content/uploads/2018/11/wine40.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine41.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine42.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine43.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine44.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine45.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine46.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine47.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine48.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine49.png", "https://static.vinepair.com/wp-content/uploads/2018/11/Wine50.png"]

names = ["mayacamas vineyards cabernet sauvignon", "hermann j. wiemer hjw vineyard riesling", "viña vik millahue", "kir-yianni estate ramnista", "tablas creek vineyard esprit de tablas blanc", "delamotte blanc de blancs brut", "azienda agricola arianna occhipinti sp68 sicilia rosso igt", "damilano barolo lecinquevigne", "r. lópez de heredia rioja viña tondonia reserva", "poliziano vino nobile di montepulciano", "flâneur la belle promenade chardonnay", "matthiasson cabernet sauvignon", "rené-jean dard & francois ribo crozes-hermitage", "clos mogador priorat", "charles heidsieck vintage brut", "château la gordonne côtes de provence la chapelle gordonne", "cvne ‘monopole clasico’ blanco", "billecart-salmon brut reserve", "domaine carneros by taittinger brut cuvée", "bernard baudry chinon le clos guillot", "fontanafredda serralunga d’alba", "g.b. burlotto verduno pelaverga", "schramsberg blanc de blancs brut", "brandlin estate cabernet sauvignon", "maeli rosso infinito veneto igt", "domaine de la grande courraye", "santa rita triple c", "barone ricasoli castello di brolio gran selezione", "royal tokaji ‘the oddity’", "domaine des malandes chablis", "fullerton three otters pinot noir", "e. sklavos sclavus ‘metagitnion’", "laurent-perrier brut rosé", "ken wright celilo vineyard chardonnay", "smith-madrone riesling", "phelps creek sauvignon blanc", "fattoria di petroio chianti classico riserva", "nino franco faive vino spumante rosé brut", "campo alle comete cabernet sauvignon toscana igt", "early mountain rosé", "ovum “memorista” riesling", "justin dutraive beaujolais villages ‘les tours’", "castell d’encus taleia", "bodega amalaya", "trimbach riesling réserve", "tasca d’almerita grillo di mozia", "viña ventisquero ‘grey’ glacier trinidad vineyard", "château puech-haut la closerie du pic", "malene rosé", "domaine de fontsainte corbières ‘reserve la demoiselle’"]

vinetage = [2014, 2016, 2013, 2013, 2015, 2008, 2017, 2013, 2005, 2015, 2016, 2015, 2015, 2015, 2005, 2017, 2015, 2017, 2014, 2015, 2014, 2016, 2015, 2014, 2015, 2014, 2014, 2013, 2015, 2016, 2015, 2016, 2017, 2014, 2015, 2016, 2014, 2017, 2015, 2017, 2017, 2017, 2016, 2016, 2015, 2017, 2014, 2014, 2017, 2015]

priceR = [125, 40, 126, 29, 43, 90, 30, 43, 40, 29, 50, 72, 50, 100, 110, 26, 30, 60, 29, 35, 49, 25, 34, 70, 21, 16, 45, 50, 19, 25, 20, 34, 70, 33, 32, 17, 33, 19, 20, 22, 25, 31, 25, 15, 23, 20, 20, 26, 17, 17]
price = [4, 3, 4, 2, 3, 3, 3, 3, 3, 2, 3, 3, 3, 4, 4, 2, 3, 3, 2, 3, 3, 2, 3, 3, 2, 2, 3, 3, 2, 2, 2, 3, 3, 3, 3, 2, 3, 2, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2]

countries = ['France', 'Spain', 'Italy', 'United States', 'Australia', 'Portugal', 'South Africa', 'Argentina', 'Chile', 'Germany', 'Austria']
variety = ["Cabernet Sauvignon", "Chardonnay", "Chenin Blanc", "Gewürztraminer", "Glera (Prosecco)", "Grenache", "Malbec", "Merlot", "Muscat", "Petit Verdot", "Pinot Blanc", "Pinot Grigio", "Pinot Gris", "Pinot Noir", "Pinotage", "Riesling", "Sauvignon Blanc", "Syrah/Shiraz", "Zinfandel" ]

wines = []
i=0
while i<50
  wines.push({
    name: names[i],
    variety: variety.sample,
    vintage: vinetage[i],
    winery: 'unclear',
    region: 'unclear',
    country: countries.sample,
    price_range: price[i],
    image: images[i]
    })
  i+=1
end
Wine.create(wines)


############################################################
# CREATE Log Random                                     #
############################################################
ratingS = [1,2,3,4,5]
starredS = [true, false]
concluding_noteS = ["It was a great wine","I enjoy the smell","I like the taste","I like the winery","Had some flaws","Overall very balanced","Amazingly smooth","Good table wine","It was disgusting"]

lookS = Look.all.map{|el| el.id}
tasteS = Taste.all.map{|el| el.id}
smellS = Smell.all.map{|el| el.id}
wineS = Wine.all.map{|el| el.id}
userS = User.all.map{|el| el.id}

logs = wineS.map {|wine_id| {rating: ratingS.sample, starred: starredS.sample, concluding_note: concluding_noteS.sample, user_id: userS.sample, wine_id: wine_id, look_id: lookS.sample, smell_id: smellS.sample, taste_id: tasteS.sample}}.flatten
Log.create(logs)
