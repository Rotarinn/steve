# Byrjum á að keyra þetta skjal
library(usethis)
use_github()
use_github_action(url="https://github.com/posit-dev/r-shinylive/blob/actions-v1/examples/deploy-app.yaml")



brandarar <- tibble(
  brandari = {c(
  "Hvernig veiðir maður flugfisk?
—Nú, í loftnet.
En á hvað veiðir maður saltfisk?
—Auðvitað á saltstöng.",
  "Ég gleymdi að taka með mér
gsm-símann þegar ég fór á
salernið og komst þá að því að það
eru 245 flísar á baðherberginu.",
  "Gerviblómin mín dóu af því að ég
gleymdi að þykjast vökva þau.",
  "Af hverju fenguð þið ykkur
langhund?
—Svo allir krakkarnir gætu
klappað honum í einu.",
  "Oh! Ég steingleymdi að fara
í ræktina í morgun.
Fimmta árið í röð!",
  "Maður um tvítugt kemur inn á
heilsugæslustöð í Árbænum.
Á höfðinu á honum er áfastur
froskur og læknaritaranum verður
starsýnt á þetta.
„Hvernig gerðist þetta eiginlega?“
spurði læknaritarinn loksins.
„Þetta byrjaði nú bara sem varta
á annarri rasskinninni á mér,“
svaraði froskurinn.",
  "Menn frá Öryggiseftirliti ríkisins
komu inn á ónefnt verkstæði í
höfuðborginni. Þeim fannst einn
starfsmannanna fara heldur
óvarlega með suðutæki.
„Heyrðu vinur,“ sögðu þeir við
hann. „Þú verður að fara varlega
með þetta verkfæri. Það er ekki
langt síðan að stórslys hlaust af
rangri meðferð suðutækja.
Tólf manns slösuðust.“
„Það gæti ekki átt sér stað hér,“
svaraði sá glannalegi snúðugt.
„Nú, því segir þú það?“
„Við erum ekki nema átta
á verkstæðinu.“",
  "Hvað gera köngulærnar þegar
þeim leiðist?
—Hanga á netinu.",
  "Amma hóf að ganga 10 kílómetra
á dag þegar hún varð sextug. Í
dag höfum við ekki hugmynd um
hvar hún er.",
  "Á milli tveggja spákvenna:
„Þetta er nú meiri kuldinn,“ segir
önnur.
„Já,“ segir hin. „Hann minnir mig á
frostaveturinn mikla árið 2031.“",
  "Torfi var handtekinn í bankanum
fyrir það eitt að kynna dóttur sína
fyrir gjaldkeranum.
—Nú, hvað sagði hann eiginlega?
Þetta er Rán.",
  "Ingi gamli átti að kaupa kjúklinga
í Bónus, en gleymdi gjörsamlega
heiti þeirra. Hann dó þó ekki
ráðalaus, náði í eggjabakka,
opnaði hann, benti á eggin og
spurði einn af starfsmönnum
verslunarinnar: „Veistu hvar ég get
fundið mömmu þeirra?“",
  "Á stórslysaæfingu í hráslagalegu
veðri í Keflavík heyrðist
eftirfarandi skipun fara út í loftið
frá stjórnendum æfingarinnar:
„Allir sem eru dauðir eru beðnir að
þjappa sér saman til að halda á sér
hita!“",
  "„Hvað segirðu um að skreppa í
smá göngutúr, elskan mín?“
„Mér líst vel á það.“
„Fínt! Myndirðu þá ekki koma við í
sjoppunni á leiðinni heim og
kaupa fyrir mig einn lakkríspoka?“",
  "Það eru svo fáar bækur til heima
hjá okkur að ef sjónvarpið bilar þá
verðum við bara að tala saman",
  "Hvað varð um strákinn sem var
svo flinkur að herma eftir fuglum?
—Kötturinn át hann.",
  "„Í nótt,“ sagði hann, „dreymdi mig
að ég væri að ganga um á þessari
líka fallegu sandströnd.“
„Einmitt!“ stundi hún. „Þá er komin
skýringin á fótsporunum í
kattarkassanum.“",
  "Hvað borða vegan vampírur?
—Blóðappelsínur",
  "Ég keypti mér nýtt boomerang um
daginn og ætlaði því að losa mig
við það gamla, en það tókst bara
ekki. Það kom alltaf til baka.",
  "Hafnfirðingar sögðu einu sinni
Kína stríð á hendur. Tilkynning
þeirra var svohljóðandi:
„Við erum með tvo sérsmíðaða
fjallajeppa og 150 FH-inga með
riffla.“
Svar Kína: „Meðtekið. Við mætum
með 20.000 skriðdreka og
2.500.000 hermenn.“
Næsti póstur Hafnfirðinga:
„Við erum hættir við, höfum alls
ekki pláss fyrir svo marga
stríðsfanga!“",
  "Þegar ég gekk framhjá húsinu sem
ég ólst upp í langaði mig allt í einu
til að fá að skoða gamla herbergið
mitt. Ég hafði ekki séð það í 30 ár
og bankaði því upp á og spurði,
hvort það væri mögulegt. Mér var
ekki svarað og hurðinni bara skellt
á nefið á mér. Foreldrar mínir geta
verið svo ruddalegir!",
  "Englendingurinn Jimmy, Skotinn
Angus og Írinn Murphy voru
staðnir að því að spila póker fyrir
peninga – kolólöglegt athæfi. Þeir
voru fyrir rétti og dómarinn spurði
Jimmy, sem sagði:
„Nei, nei, ég var bara að sýna
þeim nokkra spilagaldra.“
Dómarinn lét mál hans þá niður
falla en sneri sér að Angus sem
sagði:
„Ég var bara að sýna þeim nokkrar
reikningsþrautir sem hægt er að
gera með spilum.“
Dómarinn lét það gott heita og
spurði Murphy:
„Varst þú að spila póker?“
Murphy yppti öxlum og svaraði:
„Við hvern?“",
  "Reykvíkingurinn var búinn að
kolfesta bílinn sinn í leðju á
sveitaveginum þegar bónda
nokkurn bar það að á jeppa.
Bóndinn bauðst til að kippa í bílinn
fyrir fimmþúsundkall og vesalings
borgarbarnið, sem átti ekki
annarra kosta völ, þáði það.
Þegar bíllinn var kominn upp úr
drullunni rétti bílstjórinn
bóndanum fimmþúsundkallinn og
sagði:
„Ertu ekki að draga menn upp úr
leðjunni allan sólarhringinn fyrst
þú getur grætt svona á því?“
„Nei, alls ekki,“ svaraði bóndinn.
„Á nóttunni loka ég veginum á
meðan ég sprauta á hann vatni.“",
  "Kona kom inn á hundasnyrtistofuna ásamt manninum sínum
og púðluhundi og sagði við
hundasnyrtinn:
„Getur þú þjálfað hann, þvegið
honum, rakað hann og snyrt
fyrir mig?“
„Já, ekkert mál,“ svaraði
hundasnyrtirinn.
„Frábært,“ sagði konan. „Svo
ætla ég að fá sömu meðferð
fyrir hundinn.“",
  "Hvað verður um ís sem er búinn að
vera lengi í boxi?
—Hann kemst á endanum í form.",
  "Lögreglumaður við vegaeftirlit í
Hafnarfirði stöðvaði bíl. Þegar
bílstjórinn hafði skrúfað niður
rúðuna sagði lögreglumaðurinn:
„Ég verð að sekta þig. Þú ókst á 80
kílómetra hraða á klukkustund.“
„Hvaða vitleysa er þetta í þér,“
sagði ökumaðurinn argur. „Ég er
ekki búinn að keyra nema 10
mínútur í þetta skiptið.“",
  "Lögreglan: „Af hverju stalstu
fólksbílnum?“
Guðmundur: „Ég þurfti að komast
í vinnuna.“
Lögreglan: „Af hverju tókstu ekki
strætó?“
Guðmundur: „Ég er ekki með
meirapróf.“",
  "Æskuvinirnir Nonni og Nanni
hittust á förnum vegi. Nonni horfði
á vin sinn drykklanga stund áður
en hann sagði:
„Nonni minn, þú lítur alveg
hræðilega illa út. Hvað er
eiginlega að?“
„Ég er búinn að vera veikur
nokkuð lengi,“ sagði Nanni. „Ég
fór svo til læknis um daginn og
hann sagði mér að drekka
gulrótarsafa eftir heitt bað.“
„Ég býst ekki við að það hafi nú
gert mikið gagn, eða hvað?“
„Ég verð bara að viðurkenna að ég
veit það ekki,“ sagði Nanni. „Ég
gat að minnstak kosti ekki klárað
baðvatnið.“",
  "Stína kemur inn í matvörubúðina
og segir við kaupmanninn:
„Þú gafst mér vitlaust til baka í
gær.“
„Það er of seint að tala um það
núna,“ segir kaupmaðurinn
snúðugt. „Þú hefðir átt að koma
strax í gær og láta mig vita af
þessu.“
„Ok,“ stundi Stína. „Ég held þá
bara þúsundkallinum.“",
  "Fullorðinn maður var að keyra upp
Ártúnsbrekkuna, áleiðis til síns
heima í Mosfellsbænum, þegar
konan hans hringdi í hann og sagði
áhyggjufull:
„Jónas minn, vertu varkár á
heimleiðinni! Ég heyrði í útvarpinu
fyrir augnabliki síðan að einhver
vitleysingur væri að keyra öfugu
megin í Ártúnsbrekkunni.“
„Já, ég veit,“ sagði Jónas, „en það
er ekki bara einn. Þeir eru margir
sem koma þjótandi á móti mér.“",
  "Gísli, Eiríkur og Helgi unnu hjá
Garðyrkjustjóra Reykjavíkurborgar
og voru alltaf saman í hóp.
Einn daginn áttu tvær konur leið
um Miklatún og dokuðu aðeins við
þegar þær sáu mann grafa holu af
miklum krafti og annan standa þar
hjá og moka svo ofan í holuna
aftur. Loks gátu þær ekki hamið
sig og gengu til mannanna og
spurðu hvað þeir væru að gera?
„Við vinnum við að gróðursetja
tré,“ sagði annar þeirra.
„Já, já, en hvar er tréð?“
„Við vinnum þrír saman í hóp og
sá sem lætur trén í holuna er
veikur í dag.“"
  )}
)
