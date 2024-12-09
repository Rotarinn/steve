# Pakkar
library(shiny)
library(tidyverse)
library(lubridate)
library(reactable)
library(readxl)
library(writexl)
library(janitor)

brandarar <- tibble(
  brandari = {c(
    "Hvernig veiðir maður flugfisk? <br/>
—Nú, í loftnet. <br/>
En á hvað veiðir maður saltfisk? <br/>
—Auðvitað á saltstöng.",
    "Ég gleymdi að taka með mér
gsm-símann þegar ég fór á
salernið og komst þá að því að það
eru 245 flísar á baðherberginu.",
    "Gerviblómin mín dóu af því að ég
gleymdi að þykjast vökva þau.",
    "Af hverju fenguð þið ykkur
langhund?<br/>
—Svo allir krakkarnir gætu
klappað honum í einu.",
    "Oh! Ég steingleymdi að fara
í ræktina í morgun.<br/>
Fimmta árið í röð!",
    "Maður um tvítugt kemur inn á
heilsugæslustöð í Árbænum.
Á höfðinu á honum er áfastur
froskur og læknaritaranum verður
starsýnt á þetta.<br/>
„Hvernig gerðist þetta eiginlega?“<br/>
spurði læknaritarinn loksins.<br/>
„Þetta byrjaði nú bara sem varta
á annarri rasskinninni á mér,“<br/>
svaraði froskurinn.",
    "Menn frá Öryggiseftirliti ríkisins
komu inn á ónefnt verkstæði í
höfuðborginni. Þeim fannst einn
starfsmannanna fara heldur
óvarlega með suðutæki.<br/>
„Heyrðu vinur,“ sögðu þeir við
hann. „Þú verður að fara varlega
með þetta verkfæri. Það er ekki
langt síðan að stórslys hlaust af
rangri meðferð suðutækja.
Tólf manns slösuðust.“<br/>
„Það gæti ekki átt sér stað hér,“
svaraði sá glannalegi snúðugt.<br/>
„Nú, því segir þú það?“<br/>
„Við erum ekki nema átta
á verkstæðinu.“",
    "Hvað gera köngulærnar þegar
þeim leiðist?<br/>
—Hanga á netinu.",
    "Amma hóf að ganga 10 kílómetra
á dag þegar hún varð sextug. Í
dag höfum við ekki hugmynd um
hvar hún er.",
    "Á milli tveggja spákvenna:<br/>
„Þetta er nú meiri kuldinn,“ segir
önnur.<br/>
„Já,“ segir hin. „Hann minnir mig á
frostaveturinn mikla árið 2031.“",
    "Torfi var handtekinn í bankanum
fyrir það eitt að kynna dóttur sína
fyrir gjaldkeranum.<br/>
—Nú, hvað sagði hann eiginlega?<br/>
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
frá stjórnendum æfingarinnar:<br/>
„Allir sem eru dauðir eru beðnir að
þjappa sér saman til að halda á sér
hita!“",
    "„Hvað segirðu um að skreppa í
smá göngutúr, elskan mín?“<br/>
„Mér líst vel á það.“<br/>
„Fínt! Myndirðu þá ekki koma við í
sjoppunni á leiðinni heim og
kaupa fyrir mig einn lakkríspoka?“",
    "Það eru svo fáar bækur til heima
hjá okkur að ef sjónvarpið bilar þá
verðum við bara að tala saman.",
    "Hvað varð um strákinn sem var
svo flinkur að herma eftir fuglum?<br/>
—Kötturinn át hann.",
    "„Í nótt,“ sagði hann, „dreymdi mig
að ég væri að ganga um á þessari
líka fallegu sandströnd.“<br/>
„Einmitt!“ stundi hún. „Þá er komin
skýringin á fótsporunum í
kattarkassanum.“",
    "Hvað borða vegan vampírur?<br/>
—Blóðappelsínur",
    "Ég keypti mér nýtt boomerang um
daginn og ætlaði því að losa mig
við það gamla, en það tókst bara
ekki. <br/> Það kom alltaf til baka.",
    "Hafnfirðingar sögðu einu sinni
Kína stríð á hendur. Tilkynning
þeirra var svohljóðandi:
„Við erum með tvo sérsmíðaða
fjallajeppa og 150 FH-inga með
riffla.“<br/>
Svar Kína: „Meðtekið. Við mætum
með 20.000 skriðdreka og
2.500.000 hermenn.“<br/>
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
á nefið á mér. <br/> Foreldrar mínir geta
verið svo ruddalegir!",
    "Englendingurinn Jimmy, Skotinn
Angus og Írinn Murphy voru
staðnir að því að spila póker fyrir
peninga – kolólöglegt athæfi. Þeir
voru fyrir rétti og dómarinn spurði
Jimmy, sem sagði:<br/>
„Nei, nei, ég var bara að sýna
þeim nokkra spilagaldra.“<br/>
Dómarinn lét mál hans þá niður
falla en sneri sér að Angus sem
sagði:<br/>
„Ég var bara að sýna þeim nokkrar
reikningsþrautir sem hægt er að
gera með spilum.“<br/>
Dómarinn lét það gott heita og
spurði Murphy:<br/>
„Varst þú að spila póker?“<br/>
Murphy yppti öxlum og svaraði:<br/>
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
sagði:<br/>
„Ertu ekki að draga menn upp úr
leðjunni allan sólarhringinn fyrst
þú getur grætt svona á því?“<br/>
„Nei, alls ekki,“ svaraði bóndinn.
„Á nóttunni loka ég veginum á
meðan ég sprauta á hann vatni.“",
    "Kona kom inn á hundasnyrtistofuna ásamt manninum sínum
og púðluhundi og sagði við
hundasnyrtinn:<br/>
„Getur þú þjálfað hann, þvegið
honum, rakað hann og snyrt
fyrir mig?“<br/>
„Já, ekkert mál,“ svaraði
hundasnyrtirinn.<br/>
„Frábært,“ sagði konan. „Svo
ætla ég að fá sömu meðferð
fyrir hundinn.“",
    "Hvað verður um ís sem er búinn að
vera lengi í boxi?<br/>
—Hann kemst á endanum í form.",
    "Lögreglumaður við vegaeftirlit í
Hafnarfirði stöðvaði bíl. Þegar
bílstjórinn hafði skrúfað niður
rúðuna sagði lögreglumaðurinn:<br/>
„Ég verð að sekta þig. Þú ókst á 80
kílómetra hraða á klukkustund.“<br/>
„Hvaða vitleysa er þetta í þér,“
sagði ökumaðurinn argur. „Ég er
ekki búinn að keyra nema 10
mínútur í þetta skiptið.“",
    "Lögreglan: „Af hverju stalstu
fólksbílnum?“<br/>
Guðmundur: „Ég þurfti að komast
í vinnuna.“<br/>
Lögreglan: „Af hverju tókstu ekki
strætó?“<br/>
Guðmundur: „Ég er ekki með
meirapróf.“",
    "Æskuvinirnir Nonni og Nanni
hittust á förnum vegi. Nonni horfði
á vin sinn drykklanga stund áður
en hann sagði:<br/>
„Nonni minn, þú lítur alveg
hræðilega illa út. Hvað er
eiginlega að?“<br/>
„Ég er búinn að vera veikur
nokkuð lengi,“ sagði Nanni. „Ég
fór svo til læknis um daginn og
hann sagði mér að drekka
gulrótarsafa eftir heitt bað.“<br/>
„Ég býst ekki við að það hafi nú
gert mikið gagn, eða hvað?“<br/>
„Ég verð bara að viðurkenna að ég
veit það ekki,“ sagði Nanni. „Ég
gat að minnstak kosti ekki klárað
baðvatnið.“",
    "Stína kemur inn í matvörubúðina
og segir við kaupmanninn:
„Þú gafst mér vitlaust til baka í
gær.“<br/>
„Það er of seint að tala um það
núna,“ segir kaupmaðurinn
snúðugt. „Þú hefðir átt að koma
strax í gær og láta mig vita af
þessu.“<br/>
„Ok,“ stundi Stína. „Ég held þá
bara þúsundkallinum.“",
    "Fullorðinn maður var að keyra upp
Ártúnsbrekkuna, áleiðis til síns
heima í Mosfellsbænum, þegar
konan hans hringdi í hann og sagði
áhyggjufull:<br/>
„Jónas minn, vertu varkár á
heimleiðinni! Ég heyrði í útvarpinu
fyrir augnabliki síðan að einhver
vitleysingur væri að keyra öfugu
megin í Ártúnsbrekkunni.“<br/>
„Já, ég veit,“ sagði Jónas, „en það
er ekki bara einn. Þeir eru margir
sem koma þjótandi á móti mér.“",
    "Gísli, Eiríkur og Helgi unnu hjá
Garðyrkjustjóra Reykjavíkurborgar
og voru alltaf saman í hóp.<br/>
Einn daginn áttu tvær konur leið
um Miklatún og dokuðu aðeins við
þegar þær sáu mann grafa holu af
miklum krafti og annan standa þar
hjá og moka svo ofan í holuna
aftur. Loks gátu þær ekki hamið
sig og gengu til mannanna og
spurðu hvað þeir væru að gera?<br/>
„Við vinnum við að gróðursetja
tré,“ sagði annar þeirra.<br/>
„Já, já, en hvar er tréð?“<br/>
„Við vinnum þrír saman í hóp og
sá sem lætur trén í holuna er
veikur í dag.“"
  )}
)

# Workaround for Chromium Issue 468227
downloadButton <- function(...) {
  tag <- shiny::downloadButton(...)
  tag$attribs$download <- NULL
  tag
}

# Viðmót sett upp
ui <- fluidPage(
  
  titlePanel("Orkustöff"),
  
  br(),
  
  h3("Brandari"),
  
  htmlOutput("brandari_out"),
  
  br(),
  
  fileInput("upload", "Hlaða upp skrá"),
  
  reactableOutput("preview"),
  
  br(),
  
  downloadButton("download", "Sækja .xlsx skrá"),
  
  br()
)

# Bakendi
server <- function(input, output) {
  gogn <- reactive({
    req(input$upload)
    skjal <- read_excel(input$upload$datapath)
    
    tafla <- skjal |> 
      pivot_longer(
        !1:10,
        names_to = "dags",
        values_to = "magn"
      ) |> 
      mutate(dags = excel_numeric_to_date(as.numeric(dags)))
    
    tafla
  })
  
  output$preview <- renderReactable({
    reactable(
      head(gogn(), n = 10L),
      columns = list(
        dags = colDef(format = colFormat(date = TRUE))
      )
    )
  })
  
  output$brandari_out <- renderUI(
    HTML(paste0(slice_sample(brandarar, n = 1)[[1]]))
  )
  
  output$download <- downloadHandler(
    filename = function() {
      paste0(str_split_i(input$upload$name, "\\.", 1), "_clean.xlsx")
    },
    content = function(file) {
      write_xlsx(gogn(), file)
    }
  )
}

# Keyrsla á appi
shinyApp(ui = ui, server = server)