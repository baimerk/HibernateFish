<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>User Management Application</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        <%@ include file="/css/styles.css" %>
    </style>
</head>
<body>
<%@ include file="/WEB-INF/fragments/navigation.jsp" %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="https://lh3.googleusercontent.com/u2S_Kz0F3FxpqQX6jPg8S2NRQzPCXo8dxllepVyGXZLcM_Ap9ehT1o69D67PqfyFPY0Th9eQUpbTZeLTokghRu9yc-meW5SomEpbcIp2xeCAQm2H9PiiCVSLHsIMAb3e2AXyxonkFTSmlbHRSWba6RZrO-NobZ94U_S08unJhFbNIb9Str_in9xkj8FZZo_rZc1q_Abr7heRdZorp4PAdvRE44TJlY24KUCeJH5dw4mBWqtF4Igu76lDK9tgPPG5mU75ZnSt14VSpjioZaKrIXiGspmBb_ZaZHqfI7I91HFWwLGKI3RV-0NopT00cC3vlT6FAfm9J7YzVLDAxigYa54lAMPTmbaUNG9JHEyMQ-dyrPsdCgu0wacwMaODhoooZS_UJuK3c7HZojiFoVz2IFzbQthLoSs5Syp7jpEODT3YQY9uOJ_odKIHf8fXangcYVlXt5do0iwV9k0MPFxV_bqDQWavFx5fq2Xmv0d4ajCHhOufXOINBjFYOmoiDvwte7alxot_KBt3Yth9Md2vU1ssa3AsgvVxb9dLI-AuNl2OQvD_RG3tbCMWOF3Jw3-TeYCJZpHTzCnmgkyG1zEDu6MKvY8VVV8PQO1GXMLmOOchC6DY9FUvq8JBgzetX1jPXkv2956GLQ-8gbbNl7jzZzj21zH7fD8ap5nfTAJ8zRBUwObI6eDQ83xwRgpIN2Z-yHDrqgeBLjLYq1-0CvdZqA2i=w1920-h865-no?authuser=0" width="714" height="322" alt="Neman River">
            <div class="carousel-caption">
                <h3>Rising Sun</h3>
                <p>About our team.</p>
            </div>
        </div>

        <div class="item">
            <img src="https://lh3.googleusercontent.com/bjn03EeMHMEXkibKQJ1mfmU_sGGgcDs3cxLdpHpjxkdV-s-VGQ_Xm31ZdI7sYFZwRyj3SMu2s-xGW2qEOMjuTSsYJ1usssvHVSfqSYhb_Zy8ktK7TEsRv9MEm7LDutl7Gsa4LzRajuUATVe8idGeObEsM99nIY8uiyUdZuna11xQMXb2guGSPwd7DCCuKLz12aTK207-IFbHQ36R3me3SViPqSo9LM655booZuq8Q0G0XELxm2n0AbqH9CVpSVEoPmQDOqMeL379S41ZJnrIsjc0jQCvAeBIgRHMHZZpE5yBiXOxUEhF5dWHf6gZluPsueRiF_SMokTrfjJHO5yiUY7UBYDrOduLJ09DVloUmRjOy4Trfyt2DlsJdb9d6SOGFZN2LqGiLSvXgzUlq0crhrVVdjnHyZJJ7XRl0Bp87zfpQdU8aL191SFIQyjmfAZFC5Wb7gf5kwtewE3Fxfw-PTtWqTxTM6-G-L4WYsnOmMpXVaVffgQ3i_XDeiL4Bo831d6YMYDWvIULHI41qGARRaxr3me0JCiHhdypeSFtRs9h74yfduC6CAqaeG1xv8Nucz-XLN9p4e5CChghJHRKjHskX4Xca-nT_Fwk-BVGxauCM_dWMn0Sor1ZV5i2iIxQ2iL1OUzZi7qQJwWSOtquX35S8rvR9m_bsisYMt_OovWGAytKfokUfQw3_cmwR0BOqUL_C0k34pkWbUNv7lfCZ1mE=w1920-h865-no?authuser=0" width="714" height="322" alt="Neman River near Mogilno">
            <div class="carousel-caption">
                <h3>The Neman River</h3>
                <p>Maybe will be you project.</p>
            </div>
        </div>

        <div class="item">
            <img src="https://lh3.googleusercontent.com/GTTVqZhKEBISVeKxDHD4PuEgBKIwEBS-WpBn4CM22InMz2Alocx8_cBzK1mrTI92lbqLi0D-CGO-pFh5gF4hWBZYw1JaWZYMzOi8aULycCkhowlnQGsKylCsxTdK-mBot40RZisY8moTcjgqaNAezPV4rDlICWbpz18qhX6KdzhiA-W5e1RGu60H0M_3hjDZR6xU0n9W65Wuv1Ls7as83HmsabburtREXqGA6K4iEQ30M3N4D0a_tQVQU_2MgP25jWkRFUEsgBCMmpMnayA417yZnK-vR8-6uGrRoqyCM86XQ6qeGEpCxVMiOcZkum3VTG86PtBeLa2ZIBEpV4ObK3xmyQmeSLVcsUdr4cAwrc8dgWfGgndNOQvMPbyD_BmPPGanF3ga9mxF6M571qBQsBi0_76voW4eTDf1H-zajrpLl7lu3tewRiqQT3PwXgTe-0wL3jcMJgZR8arkx0-wju-dHqzxkAJt6MhiJ5gbhsZ-YaPtRUKPfrYiV-5LDJ4PB26jUQyeG2JtTT5ON6KZYP9VeJAjABb7_AwjtrY-HfUrw3N5rFSQBzxu0_ikRCQHiMmHOlgJfP0-vjLyL4oIVW3uAqxMDKssNNPs4u3W7rq_jCAqYXayUb_8h4IgFkdjlU_42cCotxrUEUtG7c8fH_NnxN8vmjeDSVpiCitcpcNM3n4D1bnEDSgSY1CJMjlOrYE42HOdIrRm-Iiraj0UCtfd=w1920-h865-no?authuser=0" width="714" height="322" alt="Rising Sun">
            <div class="carousel-caption">
                <h3>The Neman River Back</h3>
                <p>Maybe will be you project.</p>
            </div>
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<div class="container text-center">
    <h3>THE FISHING MAN</h3>
    <p>We love FISHING!</p>
    <p>About Us. We are a very cool, creative and successful group of professional fishermen. We know and know how to navigate the terrain, we understand the nuances of fishing, we know how to read places. In addition, our team has specialists in different types of fishing, but mostly we love spinning, discovering new places, picking up keys to fish. With our team, you will not only pick up the tackle you need, you will be able to take part in travels and catch the coveted trophies...</p>
    <br>
    <div class="row">
        <div class="col-sm-3">
            <p class="text-center"><strong>Sano</strong></p><br>
            <a href="#demo" data-toggle="collapse">
                <img src="https://lh3.googleusercontent.com/gRRlKGW5WLHnvok4thFwFdx-0Sbd61Pche9eFmDLqYG_N29-FPUWEqYe8xuikGHLOF8xJyCaNT8MPOghHH1EoqY0hiECzonEme-sjViFZb56rTuZ1KejYQBmrChf3EnEDu_Ui_geoAwp_O7Qs7QnoS8Bg2ZmBH6ZoY0_KV6XGFVZwAcqVaBUFrO7L1RXwK31xinnLb9XlInLsDLEhnAFhn3ge6zbgkBpl6KlZjxuh0YiGgkppZ4LG5kUK1gi7w7HBpu9hnGZCat6xvEOGemduMnIqrh6AdHkgPxqSRzu3G-aU9mPTat9ARnupG7MVBPCwEwRtngd8fZl-fl8KthUpJhO6iwfpD7ADc0qXYdnZV-HHlIz0DnGcZC7wPTfjqRsiF1STz_cnNPtTy7duV3-NbZDiCMbtHi9l1bhVSADGUVwWKJIFblC02pHA63CO0JcVFLgwGZlQcMsZ8xlTwtDar0oNnZs3XHFL4JSc-QM8azt2Y2zgAinYxtaY81Xo8pL2RBnIRpj23jsaiBIiMmlFSnd4jq1g1mZDaJXEJVibB8hWk-bF7glb5cBP4WVcQwEYrxHklXaQMQkbTt-YjcotMDsvREawvob4HvZm1J9SYsdIwe3uGxjnjGwmd-f_vV55NpdPPhL1zXfrqKRR4hUYhK377VqZnOntXQNzZnqphujjxw3xVGOTPswRLdoEDSl50P6w2IPJJbvtbWfrHTZg_nx=s640-no?authuser=0" class="img-circle person" alt="Sano" width="255" height="255">
            </a>
            <div id="demo" class="collapse">
                <p>Technologist and cool Polish man</p>
                <p>Loves long</p>
                <p>Member since 2019</p>
                <a href="/jobs/allusers">Information this man</a>
            </div>
        </div>
        <div class="col-sm-3">
            <p class="text-center"><strong>Kira</strong></p><br>
            <a href="#demo2" data-toggle="collapse">
                <img src="https://lh3.googleusercontent.com/pj38p7N9a26FiDQiCH9x1M_vCZlOyV5bMxcdEoDCr5cDkuQ1sTqvwS0QFtgXfhXBUybb7ynLKrL27r9nGBtCG07hFm76DCGymxBoaOHl0uqdv4OPn5o1Vvcu1Af1dZf7NUFJTQCo_HO7J74ucOd1Cm6oxBRec6-aQaDl8oqHWXeJTpPT8lrXiAi4QLEviVd5GXwTy1cW7eS9AdU-_TJB-ZyUjY9tAg7djYpa9D2yvsad0NkTDO7VcVNlOHyRHeIJRm2dTShPFQXQpjnb0lPQYhqkbeKZbZ0Bk-ieOQtufL8U1bPG8wgP1tF6RKhgsUL-0_UT9TJ0584HqcIH4TG-CiZuMRgeou8VHrh6xmS5raBb-z8PPkHs87Rb-NzmTbl858lPz6QiWEV9mdnpSS1cxkUuZRYNhcOQYjRVsiRmaY-aZdHHxfR6rKirSP83DSn8f53GIErOarGD_5ScMRmlu7N0eWAHkJmQcePUnJlJ6CIX881-WPcBInPpPxv52Ffen871FPcgAwnQPOyvptspPub5_Rr6nkfLrYZdAEOeAa-BREPCwTebg-QEDaKW-S4v8nEf7fFAyxxwWcDxXbtLCO1ldBro6WE7Mh3VafKfnhaK2F-x8betU2_37VcP7eTTzeJNx9Ku8k3ygXTcTr0Xdz0K-y-VBjWvdtutEsgdaVJYZppKzXAn8lBQpQEdBt4iVlPwDTieEr-EK5gGGwK8gM3PHQ=s640-no?authuser=0" class="img-circle person" alt="Kira" width="255" height="255">
            </a>
            <div id="demo2" class="collapse">
                <p>Specialist, Agile-man, SMART -Hren</p>
                <p>Loves toxic people</p>
                <p>Member since 2020</p>
                <a href="/jobs/allusers">Information this man</a>
            </div>
        </div>
        <div class="col-sm-3">
            <p class="text-center"><strong>Maksa</strong></p><br>
            <a href="#demo3" data-toggle="collapse">
                <img src="https://lh3.googleusercontent.com/fife/AAWUweUHaM-nNGQqb9GUNmPYlzdRFeu5kBTBBXGHK_N-nt78g7oRxEJdNfpAb5Gzr76F64b6J66srmWINUqcUYA28bas9QstMHgEE-gyXO5hEyNcvi9M1a9CyGI_dBaRRRTVLGPqSOYwmyGnTVUiISeZ_bTaut4H9_zpR3OEhvib2Ps96OgbUUkc-0BXSkJkH0n4tAogYcwwG9Ns1WAxSmiKd6kUSR6XftXXFLuKWsVKhxMAiZ3XMU5TIoSZTEBd7zSYe26gXS0h9D1tWS4E8rnJoTdV_kwRo9A5GztwfFflFz-3r9NOI_1UV8phb4dY8g1mjx--srO7QeLrosT78E8I9-t_1pE7jBfa-HIEhVRLJUUvcWVqqPt8OtpVQD_seqkYx6Bj6NIMQTXz_Sv7w3rx1AjQ33jOFz3gyRY8JbTz70o-CT6rr96UhsdFnaPoWRvITusY6rYRmpmhyEVHroznZ9Zqb6fyfvdXw8f4U-48gIIgL-o3juGP9lCLBKeT_aIP31Ch2RM5F9HbWHOFURr_3xBmiwzHmWka7VqbFGXFun7InBNjKqHpFC7Wl8tz_f-KsTn1tdZiM_JJedNQzq5ximMdG5z319pmtieHpS7GYDrTEwy3g4vK5F4CyDow6A1eDgYwUGbRnoGy1gyqZcosii-L57jguqK1kFhEVHejuu8x-8GgGywdVMWuW-EDkHF0hQAwL5IaxisAKSs-fHnh3wq2_mnitcv982RTOBNfCxhk_6LcWlMY_S3_W1YIwfPWjikHMXlTAoxeXquzCPQId90WiRUx14xm_wYPCVbtTI9BzCWS6CrVjqUixV1AXtlXuI_93VOUWEA0Gyuvs-Z2KEODsIBcE0egLjgs8aq4rkrPC6pPtOugZ-VAlnL5I9_6UaD4ZY9m_nk8Xiz9ROdTVE46JUfszuESBek_1SqIClZ5p0KSInWNm10yxmXxpLNWjV4ihqNTtj8N95CxVEQ0uXLd0Ouc03NjwZIPO14-aU5ODdEfHdE6ZwLl7foh4i_KEpB4V0MGnflZqQmgPjHgBCHhGsjJJindKZfvm0a5rDB-NHxOTorwviY2uHYbfB2Oik9UohXeTNjlFom1IUwqSMrpK16LaPiQ5sQYLnUzYEJuJzEHJl_S0yo2U_iQ9XLG0atNFGIOwQJ1Gru26n5WrSggOKagw83J_SZ4YA1kw-VTRgyrCKsOitcv_akqMyLLAnvdOAMCZT9cvn7pXJc-koYbVxkAqH-iG4i_7r_ehVS2ZwIXTpvLNuqqgoK1-DSnkGt_UVBZciYsG4j-R_s01CJSbfpgVR-YnDnviOOymCcameQCleclKc3zTbXW0HRzgjVnUpBq4tJBO0azPLaTEpUZuIzG7qf2_ZSQC2FhCaC8PphuPHCR54KOLDGCG5M78UDr3MkdAWGEjo6X4Y2YaUZ0Gzedy56Rdgv3FdTS3d4uYWC-NhEwCuUnTII1iuKBRZhbTH7pE4OlY44YjEDIHx4odH-bKUsm52NEZDgd8g2hRemPA7I9gCWdz0TwRr3Npk5lqhDuOAM_xSvoMwyzGIufk2JrOQ32oq5eoViu3vw8BXc4uYZPK0bun7nozT7S6dOd5Qqc5Ha8m1S4qMVXBc0zKwbXAKeJQ0vGXepjKVkvdLbDIg5vEWOiV4we04UHfHcFZoBD0jLPt4pVzTrtboa4fzs74BljSt9hEPGfB9O925GJytNT62WT9l42AtOMBE_z9lw8o5xpOMx7c_atdcMs_GZTOSOuW6JD1HUfcHvNlNhd-VmrwRcKSdgsUMIxOsC9NCCF1MKElR1wVqyIVCZgPfyNTftNn3ciev3OwfTKp9lZaZiGV9c4HfZ3V-S2C0KqQ_cPw3WJmy-2tGcY3YairAAOZjl49stCKIKIRXDgufop0OEJLGsJR0jVcOZ-bfq6EkUGoQ7sd0orNM70PwWNUfZqwaM37yLlHvL6HxiI8y_kEenuyTQAdhgx5hYggGD3X0E5x-iRWptIxHMTYF4I2MW5PbJs0ujvt2VLu_js64Sd4lPyYS_SxZusF5het_jheJ7jcF5eESPodjmTq8XImD7L_wtV_hVwJNZ-F1l6rWtoILcZBuJhsbgCyOoo6uJBruk6o0e_jBtkUTDij4Q4Y8YGyLNEJqJK5i0P-2In-BSIbfTqQgO3wH9ONXTXAugxX4gW3EQzFWjooWznVqqee6YJ9cRoLLLwT6eyM3F1nW_shQKhVjW2Ma6k7kFvnK-s46CzwzN515LQuLCsKpy0DOERFm1eoSJ2Pwn4Gp1FWgcPJkUXRU2qF3ClIglr4HTdUdPLl8UsarMqH4J29FS9mMOINttIclvbgPE0wX8GngGvwz9Uw-aFd7R6LtmnDu3Yq7NxGJ6LkTBF3MtSazz0OqyWth9J7wy_gHYN4A8NZJGNwlWifKdueGfvrIkqZ-qIYEZ2XzjOEIGH9ljjzx9yYZTfDVtVaLM04bLSOh0AeZQBVS1HMfWdlect_az8c1920QkcYVCnbW0NhnRU-kza7FHZd3wMBGyiZggcXGCKAV280cxWAV4q0hxKeStVLBR1j9V9BNK-phaWTkzVDrKNbhPaVw-Z0FSZTgu3m9ASp8Q130hOPDqsWOq6T3TAmN7PSlDadhgjc5w_D_Nqz5N-Hlepi6F--P3og-Y5Vd_dFCSrdNA1l6vHVAurErAOEgv_vXKVKXAeH5ltghhFqv9EwL4TmMaDQ38_X9aWS2_JyUYTQDfu22hbf_fbPActkuXJ0fmfHKmo7PABO7pS20iWTA-z0TVl1PUuVSWx9EFzNbu-BFw8rt1bfL_NpJBIPeO8z1JEPgWQcZjgHsHSJ2_qvS4w_Z7uPWnChSfEwkPP3JqdnB7v2mORWM8LCquftku02yuhkBfSF_yJgnZCpRbGmEUwxPcgA11NhpSb4AZPxeJFHO0htokCJof53dakNyOHqIVLEP7zgNXZDAYLX8LDGTJpdfSr3vfHWw7Hw-HKcWpHFA8Mq-tGgwP2wJKtThd9VnQIgfv2xgZBTIKPqokdhckfeQCb2KQXsUDbG-S7ESErdepBByPQ_x7ECwhvg6Cm0cDgUiYg93rVwicnmRjm0zc1wP94UHEeFod8IOEfDl1HzQyIxCZnBnsSS_36YG-yeLOnI6DyX5cN1FbAqY-B6VySTJouHfRq_Xnv1-nw0cvuzT99d7JBxMcttMbqHZYLQUSKM9zvTKGhdLe7X65_MUKHaTjvvhCF4oQkFIsqWZpjjN7u7fkJhk71E8ml0vPDLjO0pCpUBug-2vHb9jMmOE7U0iMbcEkE1glwdEAmfCT1I-JnA1pkrhszL_z9eEy5i_hXVHb9anClxNN-vilIsVWrevG0qmcKpUugzq5lIA8sqcczbqK2kw99-JFzO78cnzJnsmB99DQaQWqCz8W_6AQHjgIzE26oiE3Dew2KbLoRGrOP4uUxLaEJGWaLMxvNbLCxc1VPTJ39Q2Tj73IIits-PPCWEhKKnfivQbV6_sHcKYVPAR4QnveniCyl8nD33B2IJHpi36n974IednKeQBpHD87ISSt60EQ5IR38OYAh75zK2e4gyMt5hxPmSM5mqnbEQlgUCR2w1S3AF6CALQMhcebgz1STEEb8xhxa7Cs8erP4ItL6plQv7-d7uc8l_Ocl2VvHxwh3xiDTHpjwDhrlrSCJ8lI5E3o9GHa1GMcDOIG92LEO60hanGA3fcB4upZMsnDc3bCDnw-1EVEdvn3TuYKi=s328-no?authuser=0" class="img-circle person" alt="Maksa" width="255" height="255">
            </a>
            <div id="demo3" class="collapse">
                <p>PLM MAN, fucking technologist</p>
                <p>Loves all about PLM/CAx</p>
                <p>Member since 2018</p>
                <a href="/jobs/allusers">Information this man</a>
            </div>
        </div>
        <div class="col-sm-3">
            <p class="text-center"><strong><q lang="ru">Kolesnikov</q></strong></p><br>
            <a href="#demo4" data-toggle="collapse">
                <img src="https://lh3.googleusercontent.com/gRRlKGW5WLHnvok4thFwFdx-0Sbd61Pche9eFmDLqYG_N29-FPUWEqYe8xuikGHLOF8xJyCaNT8MPOghHH1EoqY0hiECzonEme-sjViFZb56rTuZ1KejYQBmrChf3EnEDu_Ui_geoAwp_O7Qs7QnoS8Bg2ZmBH6ZoY0_KV6XGFVZwAcqVaBUFrO7L1RXwK31xinnLb9XlInLsDLEhnAFhn3ge6zbgkBpl6KlZjxuh0YiGgkppZ4LG5kUK1gi7w7HBpu9hnGZCat6xvEOGemduMnIqrh6AdHkgPxqSRzu3G-aU9mPTat9ARnupG7MVBPCwEwRtngd8fZl-fl8KthUpJhO6iwfpD7ADc0qXYdnZV-HHlIz0DnGcZC7wPTfjqRsiF1STz_cnNPtTy7duV3-NbZDiCMbtHi9l1bhVSADGUVwWKJIFblC02pHA63CO0JcVFLgwGZlQcMsZ8xlTwtDar0oNnZs3XHFL4JSc-QM8azt2Y2zgAinYxtaY81Xo8pL2RBnIRpj23jsaiBIiMmlFSnd4jq1g1mZDaJXEJVibB8hWk-bF7glb5cBP4WVcQwEYrxHklXaQMQkbTt-YjcotMDsvREawvob4HvZm1J9SYsdIwe3uGxjnjGwmd-f_vV55NpdPPhL1zXfrqKRR4hUYhK377VqZnOntXQNzZnqphujjxw3xVGOTPswRLdoEDSl50P6w2IPJJbvtbWfrHTZg_nx=s640-no?authuser=0" class="img-circle person" alt="Sano" width="255" height="255">
            </a>
            <div id="demo4" class="collapse">
                <p>Technologist and cool Polish man</p>
                <p>Loves long techprocess</p>
                <p>Member since 2019</p>
                <a href="/jobs/allusers">Information this man</a>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    Username from session:<c:out value="${sessionScope.user.role}"/>
        <%System.out.println("Who is am"); %>
</div>
</body>
</html>

