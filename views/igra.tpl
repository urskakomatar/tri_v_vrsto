
%import tri_v_vrsto_model
%rebase('base.tpl')


<style type="text/css">
    table, td, tr {
        border: 1px solid black;
    }
    td {
        height: 33%;
    } 
    #igra {
        table-layout: initial;
        margin-top: 10px;
        width: 50vh;
        height: 50vh;
    }
    #legenda {
        margin-top: 10px;
        width: 15vh;
        height: 15vh;
    }
        
</style>

<!DOCTYPE html>

<html lang="sl">

<body>

    <h4> {{sporocilo}} </h4>
    
    <form action="/nova_igra/", method="POST">
        <input type="submit" value="Nova igra">
    </form>
    

    <table id="igra">
        <tr>
            <td> 
                %if plosca[0] != '-':
                    <img src="/img/{{plosca[0]}}.jpg" style="display: block;">
                %end
             </td>
            <td> 
                %if plosca[1] != '-':
                    <img src="/img/{{plosca[1]}}.jpg">
                %end    
            </td>
            <td>  
                %if plosca[2] != '-':
                    <img src="/img/{{plosca[2]}}.jpg">
                %end    
            </td>
        </tr>

        <tr>
            <td> 
                %if plosca[3] != '-':
                    <img src="/img/{{plosca[3]}}.jpg">
                %end
            </td>
            <td> 
                %if plosca[4] != '-':
                    <img src="/img/{{plosca[4]}}.jpg">
                %end
            </td>
            <td> 
                %if plosca[5] != '-':
                    <img src="/img/{{plosca[5]}}.jpg">
                %end
            </td>
        </tr>

        <tr>
            <td> 
                %if plosca[6] != '-':
                    <img src="/img/{{plosca[6]}}.jpg">
                %end
            </td>
            <td> 
                %if plosca[7] != '-':
                    <img src="/img/{{plosca[7]}}.jpg">
                %end
            </td>
            <td> 
                %if plosca[8] != '-':
                    <img src="/img/{{plosca[8]}}.jpg">
                %end
            </td>
        </tr>

    </table>

    <table id="legenda">
        <tr>
            <td> 1  </td>
            <td> 2  </td>
            <td> 3 </td>
        </tr>

        <tr>
            <td> 4  </td>
            <td> 5  </td>
            <td> 6  </td>
        </tr>

        <tr>
            <td> 7  </td>
            <td> 8  </td>
            <td> 9  </td>
        </tr>
    </table>

    <form action="/poteza/" method="POST">
        <label>Vnesi potezo:</label>
        <input type="number" name="polje">
        <input type="submit" value="potrdi">
    </form>
</body>