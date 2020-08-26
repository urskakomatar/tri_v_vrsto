import tri_v_vrsto_model
import bottle

tri_v_vrsto = tri_v_vrsto_model.Tri_v_vrsto()

@bottle.get('/')
def index():
    return bottle.template('index.tpl')

@bottle.post('/nova_igra/')
def nova_igra():
    tri_v_vrsto.nova_igra()
    return bottle.redirect('/igra/')

@bottle.get('/igra/')
def pokazi_igro():
    return bottle.template('igra.tpl',
                            plosca=tri_v_vrsto.plosca,
                            sporocilo=tri_v_vrsto.sporocilo)


@bottle.post("/poteza/")
def poteza():
    stevilka = (bottle.request.forms.getunicode('polje'))

    if stevilka == "":
        tri_v_vrsto.sporocilo = "Vstavi številko!!!"
        return bottle.redirect("/igra/")

    stevilka = int(stevilka)
    print(stevilka)

    if tri_v_vrsto.napacna_poteza(stevilka):
        tri_v_vrsto.sporocilo = "Napačna poteza!!!"
        return bottle.redirect("/igra/")
    if tri_v_vrsto.ponovljena_poteza(stevilka - 1):
        tri_v_vrsto.sporocilo = "To polje je že zasedeno!!!"
        return bottle.redirect("/igra/")
    tri_v_vrsto.plosca[stevilka - 1] = tri_v_vrsto.igralec
    if tri_v_vrsto.zmaga():
        tri_v_vrsto.sporocilo = "Bravo! Zmagal je " + tri_v_vrsto.igralec
        return bottle.redirect("/igra/")
    if tri_v_vrsto.neodloceno():
        tri_v_vrsto.sporocilo = "Neodločeno"
        return bottle.redirect("/igra/")
    tri_v_vrsto.menjava_igralcev()
    tri_v_vrsto.sporocilo = "Na vrsti je " + tri_v_vrsto.igralec
    return bottle.redirect("/igra/")

@bottle.get('/img/<picture>')
def serve_pictures(picture):
    return bottle.static_file(picture, root='img')

bottle.run(reloader=True, debug=True)

