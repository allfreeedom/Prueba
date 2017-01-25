<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PruebaSignature.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/signature-pad.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<asp:Image ID="Image1" runat="server" BorderStyle="Solid" BorderWidth="1" BorderColor="Black" Width="30%" Height="30%" />--%>

            <div id="signature-pad" class="m-signature-pad">
                <div class="m-signature-pad--body">
                    <canvas></canvas>
                </div>
                <%--<div class="m-signature-pad--footer">
                    <button type="button" class="button clear" id="clearbtn" data-action="clear" onclick="clearSignature()">Clear</button>
                    <button type="button" class="button clear" id="clearbtn" data-action="clear">Clear</button>
                    <button type="button" class="button save" id="savebtn" data-action="save">Save</button>
                </div>--%>
                <button type="button" class="button clear" id="clearbtn" data-action="clear" onclick="clearSignature()">Clear</button>
            </div>
        </div>
    </form>

    <script src="js/signature_pad.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <script type="text/javascript">
        var wrapper = document.getElementById("signature-pad"),
        //clearButton = wrapper.querySelector("[data-action=clear]"),     
        //saveButton = wrapper.querySelector("[data-action=save]"),
        canvas = wrapper.querySelector("canvas"),
        signaturePad;

        function resizeCanvas() {
            // When zoomed out to less than 100%, for some very strange reason,
            // some browsers report devicePixelRatio as less than 1
            // and only part of the canvas is cleared then.
            var ratio = Math.max(window.devicePixelRatio || 1, 1);
            canvas.width = canvas.offsetWidth * ratio;
            canvas.height = canvas.offsetHeight * ratio;
            canvas.getContext("2d").scale(ratio, ratio);
        }

        window.onresize = resizeCanvas;
        resizeCanvas();

        signaturePad = new SignaturePad(canvas);


        function clearSignature() {
            signaturePad.clear();
        }

    </script>

</body>
</html>
