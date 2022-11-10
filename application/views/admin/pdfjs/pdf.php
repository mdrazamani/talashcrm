<?php $this->load->view('admin/pdfjs/js/main');?>

<script>
    function onClick778() {
        var pdf = new jsPDF("p", "pt", "letter");
        //pdf.setFont('Helvetica');
        pdf.canvas.height = 72 * 11;
        pdf.canvas.width = 72 * 8.5;
        pdf.fromHTML(document.getElementById("<?php echo $pdfId;?>"),30,30);
        pdf.setFontSize(40);


        //pdf.setLanguage("fa-IR")

        //pdf.addFont('C:/wamp64/www/talash_crm/application/views/admin/pdfjs/fonts/iranyekan/ttf/iranyekanwebbold(fanum).ttf', 'iranyrkan', 'bold');
        //pdf.setFont('tahoma');

        //pdf.output('dataurlnewwindow');
        window.open(pdf.output("bloburl"), "_blank");
        //pdf.save();
    }

    var element = document.getElementById("<?php echo $btnId;?>");
    //element.addEventListener("click", ()=>{
    //    console.log(document.getElementById("<?php //echo $pdfId;?>//"));
    //});
    element.addEventListener("click", onClick778);




</script>