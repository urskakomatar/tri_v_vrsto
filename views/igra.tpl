%import tri_v_vrsto_model
%rebase('base.tpl')


<style type="text/css">
    .spodnja_crta {
        border-bottom: 5px black solid;
    }

    .desna_crta {
        border-right: 5px black solid;
    }

    table {
        width: 100%;
        height: 100%;
    }

    #igra td {
        text-align: center;
        width: 33%;
        height: 33%;
    }

    #igra {
        width: 50vh;
        height: 50vh;
    }

    #legenda,
    #legenda td {
        border: 1px black solid;
        margin-top: 10px;
        margin-right: none;
        width: 30vh;
        text-align: center;
    }
</style>

<!DOCTYPE html>

<html lang="sl">

<body>

    <h4> {{sporocilo}} </h4>
    <h7>Potezo s pomočjo spodnje tabele vpišite v spodnjo vrstico.Srečno!</h7>

    <form action="/nova_igra/" , method="POST">
        <input type="submit" value="Nova igra">
    </form>


    <table id="igra">
        <tr class="spodnja_crta">
            <td class="desna_crta">
                %if plosca[0] != '-':
                <img src="/img/{{plosca[0]}}-cutout.jpg">
                %end
            </td>
            <td class="desna_crta">
                %if plosca[1] != '-':
                <img src="/img/{{plosca[1]}}-cutout.jpg">
                %end
            </td>
            <td>
                %if plosca[2] != '-':
                <img src="/img/{{plosca[2]}}-cutout.jpg">
                %end
            </td>
        </tr>

        <tr class="spodnja_crta">
            <td class="desna_crta">
                %if plosca[3] != '-':
                <img src="/img/{{plosca[3]}}-cutout.jpg">
                %end
            </td>
            <td class="desna_crta">
                %if plosca[4] != '-':
                <img src="/img/{{plosca[4]}}-cutout.jpg">
                %end
            </td>
            <td>
                %if plosca[5] != '-':
                <img src="/img/{{plosca[5]}}-cutout.jpg">
                %end
            </td>
        </tr>

        <tr>
            <td class="desna_crta">
                %if plosca[6] != '-':
                <img src="/img/{{plosca[6]}}-cutout.jpg">
                %end
            </td>
            <td class="desna_crta">
                %if plosca[7] != '-':
                <img src="/img/{{plosca[7]}}-cutout.jpg">
                %end
            </td>
            <td>
                %if plosca[8] != '-':
                <img src="/img/{{plosca[8]}}-cutout.jpg">
                %end
            </td>
        </tr>

    </table>
    <table id="legenda">
        <tr>
            <td> 1 </td>
            <td> 2 </td>
            <td> 3 </td>
        </tr>

        <tr>
            <td> 4 </td>
            <td> 5 </td>
            <td> 6 </td>
        </tr>

        <tr>
            <td> 7 </td>
            <td> 8 </td>
            <td> 9 </td>
        </tr>
    </table>
    <form action="/poteza/" method="POST">
        <label>Vnesi potezo:</label>
        %if konec != "Konec":
        <input type="number" name="polje" autofocus="autofocus">
        <input type="submit" value="potrdi">
        %else:
        <input type="number" name="polje" autofocus="autofocus" disabled>
        %end
    </form>
</body>