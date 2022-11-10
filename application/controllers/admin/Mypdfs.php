<?php

use app\services\imap\Imap;
use app\services\LeadProfileBadges;
use app\services\leads\LeadsKanban;
use app\services\imap\ConnectionErrorException;
use Ddeboer\Imap\Exception\MailboxDoesNotExistException;

defined('BASEPATH') OR exit('No direct script access allowed');
class Mypdfs extends AdminController {

    public $mpdf;

    public function __construct() {
        $this->mpdf = new \Mpdf\Mpdf(array('mode' => 'utf-8'));

        $this->mpdf->allow_charset_conversion=true;  // Set by default to TRUE
        $this->mpdf->charset_in='windows-1252';

        //$this->mpdf->autoScriptToLang = true;
        $this->mpdf->autoLangToFont   = true;
        $this->mpdf->SetFont('iranyekan');
    }

    public function index($html,$css = '')
    {



        //file_get_contents('C:\wamp64\www\talash_crm\pdfStyles\leads\lead_C.php')
        //file_get_contents('C:\wamp64\www\talash_crm\pdfStyles\leads\lead_H.php')


        //$this->mpdf->default_available_fonts = 'iranyekan';
        //$html = $this->load->view('admin/pdfStyles/leads/lead_H',[],true);
        //$css = $this->load->view('admin/pdfStyles/leads/lead_C',[],true);
        $this->mpdf->SetTitle('talashPdf');
        //$this->mpdf->WriteHTML(file_get_contents('C:\wamp64\www\talash_crm\assets\css\style.min.css'),1);
        //$this->mpdf->WriteHTML(file_get_contents('C:\wamp64\www\talash_crm\assets\css\style.css'),1);
       if(!empty($css)) $this->mpdf->WriteHTML($css,1);

      //$this->mpdf->style;


        $this->mpdf->WriteHTML($html);
        $this->mpdf->Output();
    }





//    public function htmlPdfs($title_key){
//        return $this->load->view('admin/pdfStyles/'.$title_key.'/'.substr($title_key,0,strlen($title_key)-1).'_H',[],true);
//    }
//    public function cssPdfs($title_key){
//        return $this->load->view('admin/pdfStyles/'.$title_key.'/'.substr($title_key,0,strlen($title_key)-1).'_C',[],true);
//    }

//    public function set_data($title_key,$data){
//        $curl = curl_init('admin/pdfStyles/'.$title_key.'/'.substr($title_key,0,strlen($title_key)-1).'_H.php');
//
//        curl_setopt($curl, CURLOPT_POST, 1);
//        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
//        curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
//        $result = curl_exec($curl);
//        curl_close($curl);
//    }
//    public function get_dataHTml($title_key){
//        return file_get_contents('C:\wamp64\www\talash_crm\application\views\admin\pdfStyles\leads\lead_H.php');
//    }
//    public function get_dataCss($title_key){
//        return file_get_contents('C:\wamp64\www\talash_crm\pdfStyles\leads\lead_C.css');
//        //return file_get_contents('admin/pdfStyles/'.$title_key.'/'.substr($title_key,0,strlen($title_key)-1).'_C.css');
//    }
//
//    public function index($title_key,$data = [])
//    {
//
//        $html = $this->get_dataHTml($title_key);
//        $css  = $this->get_dataCss($title_key);
//        $this->mpdf->SetTitle($title_key);
//        if(!empty($css)) $this->mpdf->WriteHTML($css,1);
//        if(!empty($html)) $this->mpdf->WriteHTML($html);
//        $this->mpdf->Output();
//
//    }


//    function file_get_contents_utf8($content) {
//        //$content = file_get_contents($fn);
//        return mb_convert_encoding($content, 'utf-8', mb_detect_encoding($content, 'utf-8, ISO-8859-1', true));
//    }

    //$mpdf->WriteHTML(utf8_encode($html));
    //$mpdf->Output('arjun.pdf','D'); // it downloads the file into the user system, with give name
//$html = $this->load->view('admin/leads/test',[],true);
    //$html2 = $this->file_get_contents_utf8('<h1>hello </h1><h2>محمدرضا</h2>');
    //$html = file_get_contents('http://localhost/talash_crm/admin/le>>ads/test.php');
    //$html = mb_convert_encoding($text, 'UTF-8', 'UTF-8');


    //$mpdf->allow_charset_conversion = true;
    //$mpdf->charset_in = 'iso-8859-4';
    //$mpdf->allow_charset_conversion=true;
    //$mpdf->charset_in='UTF-8';
    // $mpdf->WriteHTML($html);
//    public $mpdf;
//
//    function __construct(){
//
//        $this->mpdf = new \Mpdf\Mpdf([
//            'mode' => 'utf-8',
//            'format' => 'A4',
//            'margin_left' => 10,
//            'margin_top' => 10,
//            'margin_right' => 10,
//            'margin_bottom' => 1,
//            'orientation' => 'P'
//        ]);
//
//    }
//
//    public function create($html)
//    {
//       // $html = $this->load->view('html_convert_pdf',[],true);
//        //$this->mpdf->WriteHTML($css,1);
//        $this->mpdf->WriteHTML($html);
//        $this->mpdf->Output(); // opens in browser
//        //$mpdf->Output('test.pdf','D'); // it downloads the file into the user system.
//    }

}





/*
* Author: onlinecode
* start tcpdfexample.php file
* Location: ./application/controllers/tcpdfexample.php

class tcpdfexample extends CI_Controller { function __construct() { parent::__construct(); // add library of Pdf $this->load->library('Pdf');
}
function index()
{
// coder for CodeIgniter TCPDF Integration
$tcpdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);
// Set Title
$tcpdf->SetTitle('Pdf Example onlinecode');
// Set Header Margin
$tcpdf->SetHeaderMargin(30);
// Set Top Margin
$tcpdf->SetTopMargin(20);
// set Footer Margin
$tcpdf->setFooterMargin(20);
// Set Auto Page Break
$tcpdf->SetAutoPageBreak(true);
// Set Author
$tcpdf->SetAuthor('onlinecode');
// Set Display Mode
$tcpdf->SetDisplayMode('real', 'default');
// Set Write text
$tcpdf->Write(5, 'CodeIgniter TCPDF Integration - onlinecode');
// Set Output and file name
$tcpdf->Output('tcpdfexample-onlinecode.pdf', 'I');
}
public function advancetcpdf_example()
{
// coder for CodeIgniter TCPDF Integration
// make new advance pdf document
$tcpdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$tcpdf->SetCreator(PDF_CREATOR);
$tcpdf->SetAuthor('Muhammad Saqlain Arif');
$tcpdf->SetTitle('TCPDF Example 001');
$tcpdf->SetSubject('TCPDF Tutorial');
$tcpdf->SetKeywords('TCPDF, PDF, example, test, guide');

//set default header information

$tcpdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,65,256), array(0,65,127));
$tcpdf->setFooterData(array(0,65,0), array(0,65,127));

//set header  textual styles
$tcpdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
//set footer textual styles
$tcpdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

//set default monospaced textual style
$tcpdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set default margins
$tcpdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
// Set Header Margin
$tcpdf->SetHeaderMargin(PDF_MARGIN_HEADER);
// Set Footer Margin
$tcpdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto for page breaks
$tcpdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image for scale factor
$tcpdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// it is optional :: set some language-dependent strings
if (@file_exists(dirname(__FILE__).'/lang/eng.php'))
{
// optional
require_once(dirname(__FILE__).'/lang/eng.php');
// optional
$tcpdf->setLanguageArray($l);
}

// set default font for subsetting mode
$tcpdf->setFontSubsetting(true);

// Set textual style
// dejavusans is an UTF-8 Unicode textual style, on the off chance that you just need to
// print standard ASCII roasts, you can utilize center text styles like
// helvetica or times to lessen record estimate.
$tcpdf->SetFont('dejavusans', '', 14, '', true);

// Add a new page
// This technique has a few choices, check the source code documentation for more data.
$tcpdf->AddPage();

// set text shadow for effect
$tcpdf->setTextShadow(array('enabled'=>true, 'depth_w'=>0.2, 'depth_h'=>0.2, 'color'=>array(196,197,198), 'opacity'=>1, 'blend_mode'=>'Normal'));

/Set some substance to print

$set_html = <<<EOD


<h1>Welcome to <a href="http://www.tcpdf.org" style="text-decoration:none;background-color:#CC0001;color:black;">&nbsp;<span style="color:black;">TC</span><span style="color:white;">PDF Example</span>&nbsp;</a>!</h1>

<i>This is the principal case of TCPDF library.</i>


This content is printed utilizing the <i>writeHTMLCell()</i> strategy however you can likewise utilize: <i>Multicell(), writeHTML(), Write(), Cell() and Text()</i>.



Please check the source code documentation and different cases for further information.


EOD;

//Print content utilizing writeHTMLCell()
$tcpdf->writeHTMLCell(0, 0, '', '', $set_html, 0, 1, 0, true, '', true);

// Close and yield PDF record
// This technique has a few choices, check the source code documentation for more data.
$tcpdf->Output('tcpdfexample-onlinecode.pdf', 'I');
// successfully created CodeIgniter TCPDF Integration
}
}
 end tcpdfexample.php file for CodeIgniter TCPDF Integration */