<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditordeTxt.aspx.cs" Inherits="EditordeTxt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href= "https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" integrity="sha512-PgQMlq+nqFLV4ylk1gwUOgm6CtIIXkKwaIHp/PAIWHzig/lKZSEGKEysh0TCVbHJXCLN7WetD8TFecIky75ZfQ==" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="css/theme.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Editor de Texto</title>
</head>
<body style="background-color:black;">
    <style>
         h1 {
         padding-top: 40px;
         padding-bottom: 45px;
         text-align: center;
         color: white;
         font-family: revert;
         margin-left: -88px;
         }
         /*section {
         padding: 5%;
         padding-top: 0;
         height: 100vh;
         }*/
         /*.side {
         margin-left: 0;
         }*/
         button {
         background: #fdfdfd !important;
         margin: 10px;
         border-color: #808080 !important;
         color: black !important;
         margin-bottom: 25px;
         font-size:13px;
         font-family:system-ui;
         font-weight:500;
         border:#ca71e6 3px solid !important;
         }
         button:hover {
         background-color: #5d12a1 !important;
         text-decoration:overline !important;
         color: white !important;

         }
         .wrapper {
  
    /* Keeping the Text in the 
       center of the Screen */
    display: flex;
    justify-content: center;

}
   #Enviar{
        border-radius: 12px;
         text-decoration:none !important;
    }
   #Enviar:hover{
        border-radius: 12px;
         text-decoration:none !important;
         background-color: mediumpurple !important;
    }
.typewriter h1 {
    /* Content is not revealed 
       until the animation */
    overflow: hidden;
  
    /* Keeps the content on a single line */
    white-space: nowrap;
  
    /* Gives that scrolling effect 
       as the typing happens */
    margin: 0 auto;
  
    /* Typing Effect Animation */
    animation: typing 1.0s steps(20, end)
}
  
/* Typing Effect on Website Loading */
@keyframes typing {
    from {
        width: 0
    }
    to {
        width: 100%
    }
}
/*/*#bolha{
   max-width: 100%;
    -moz-transition: all 0.3s;
    -webkit-transition: all 0.3s;
    transition: all 0.3s;


}
#bolha:hover{

}*/*/

      </style>

    <form id="form1" runat="server">
      
    <h1 id="effect"></h1>
    <!-- Loading External index.js file -->
    <script src="index.js"></script>
        <div class="container col-12" style="background:top; padding: 168px;">
             <div class="wrapper">
        <div class="typewriter">
            <h1>Editor de Texto </h1>
        </div>
    </div>
        <button type="button"
                onclick="Bold()"
                class="btn shadow-sm btn-outline-secondary"
                data-toggle="tooltip"
                data-placement="top">
           <i class="fa fa-bold"></i>
        </button>

       <button type="button"
               onclick="Italic()"
               class="btn shadow-sm btn-outline-secondary"
               data-toggle="tooltip"
               data-placement="top">
          <i class="fa fa-italic"></i>
      </button>

      <button type="button"
               onclick="Underline()"
               class="btn shadow-sm btn-outline-secondary"
               data-toggle="tooltip"
               data-placement="top">
         <i class="fa fa-underline"></i>
     </button>

     
     <button type="button"
             onclick="Unorderedlist()"
             class="btn shadow-sm btn-outline-secondary"
             data-toggle="tooltip"
             data-placement="top">
       <i class="fa fa-list-ul"></i>
    </button>

     <button type="button"
             onclick="JustifyRight()"
             class="btn shadow-sm btn-outline-secondary"
             data-toggle="tooltip"
             data-placement="top">
       <i class="fa fa-align-right"></i>
     </button>

     <button type="button"
             onclick="JustifyCenter()"
             class="btn shadow-sm btn-outline-secondary"
             data-toggle="tooltip"
             data-placement="top">
      <i class="fa fa-align-center"></i>
    </button>

     <button type="button"
             onclick="JustifyLeft()"
             class="btn shadow-sm btn-outline-secondary"
             data-toggle="tooltip"
             data-placement="top">
        <i class="fa fa-align-left"></i>
    </button>

            <button type="button"
                onclick="enviar()"
                class="btn shadow-sm btn-outline-secondary"
                data-toggle="tooltip"
                data-placement="top"
                id="Enviar">
                 <b>ENVIAR</b>
        </button>
                                   
                                                         
   <div class="col-md-6 col-sm-9">
   <div class="content"  id="Content" contenteditable="true" style=" position: absolute; min-height: 127px; border: 1px solid; padding-left: 10px; margin-right: auto; margin-left: auto; max-inline-size: fit-content; max-width: 105%;
                                                                                                    min-width: 87%;color:black !important; font-weight:normal; font-size:13px;background: #fdfdfd !important; border: #ca71e6 2px solid !important;"></div>
   </div>

   </div>

        <%-- <div class="container">
              <img src="img/bolha.png" id="bolha"/>
         -</div>  --%>       
                                                          
         <script>

            function Bold() {
                var bold = document.execCommand("Bold", false, null);

            }
            function Italic() {
                var italic = document.execCommand("Italic", false, null);
            }
            function Underline() {
                var underline = document.execCommand("underline", false, null);
            }
            function Unorderedlist() {
                var insertOrderedList = document.execCommand("insertOrderedList", false, null);
            }
            function JustifyRight() {
                var Justifyright = document.execCommand("justifyright", false, null);
            }
            function JustifyCenter() {
                var Justifycenter = document.execCommand("justifycenter", false, null);
            }
            function JustifyLeft() {
                var Justifyleft = document.execCommand("justifyleft", false, null);
             }
             function enviar() {
                 Swal.fire({
                     position: 'center',
                     icon: 'success',
                     title: 'Texto enviado com sucesso!',
                     showConfirmButton: true,
                     timer: 1500

                 }
             )}
        </script>

        <script>
            //Creditos ao @sujeitoprogramador no Efeito texto digitando em Javascript";
            var index = 0;
            var speed = 50;
  
            function textEffect() {
                if (index < text.length) {
                    document.getElementById("effect")
                            .innerHTML += text.charAt(index);
                    index++;
                    setTimeout(textEffect, speed);
                }
            }
        </script>
    </form>
</body>
</html>



      
 