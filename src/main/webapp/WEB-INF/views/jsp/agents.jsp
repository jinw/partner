<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:url value="/indigo/agents" var="formUrl"/>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="<spring:url value="/static/css/bootstrap.min.css"/>"/>
    <style>
        body {
            padding-top: 10px;
            padding-bottom: 20px;
        }
    </style>
    <link rel="stylesheet" href="<spring:url value="/static/css/bootstrap-theme.min.css"/>"/>
    <link rel="stylesheet" href="<spring:url value="/static/css/main.css"/>"/>

    <script src="<spring:url value="/static/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"/>"></script>
</head>
<body>
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->
<div class="navbar  ">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="<spring:url value="/static/img/logo_delmar.gif"/>" alt="Delmar International Inc" height="42" border="0" width="157" /></a>
        </div>

        <div class="navbar-header navbar-right" style="padding-top:10px">
            <form class="navbar-form navbar-right" action="${formUrl}" method="get" role="form">
                <span style="font-size:18px">Search</span>
                <div class="form-group">
                    <select class="form-control" name="mode">
                        <option value="2" <c:out value="${mode eq '2' ? 'selected' : ''}"/> >Air</option>
                        <option value="3" <c:out value="${mode eq '3' ? 'selected' : ''}"/> >Sea</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" placeholder="name" class="form-control" name="addr">
                </div>
                <div class="form-group">
                    <select class="form-control" name="country">
                    <option value="4" <c:out value="${country eq '4' ? 'selected' : ''}"/> >Afghanistan</option>
                    <option value="8" <c:out value="${country eq '8' ? 'selected' : ''}"/> >Albania</option>
                    <option value="12" <c:out value="${country eq '12' ? 'selected' : ''}"/> >Algeria</option>
                    <option value="16" <c:out value="${country eq '16' ? 'selected' : ''}"/> >American Samoa</option>
                    <option value="20" <c:out value="${country eq '20' ? 'selected' : ''}"/> >Andorra</option>
                    <option value="24" <c:out value="${country eq '24' ? 'selected' : ''}"/> >Angola</option>
                    <option value="660" <c:out value="${country eq '660' ? 'selected' : ''}"/> >Anguilla</option>
                    <option value="897" <c:out value="${country eq '897' ? 'selected' : ''}"/> >Antartica</option>
                    <option value="28" <c:out value="${country eq '28' ? 'selected' : ''}"/> >Antigua and Barbuda</option>
                    <option value="32" <c:out value="${country eq '32' ? 'selected' : ''}"/> >Argentina</option>
                    <option value="51" <c:out value="${country eq '51' ? 'selected' : ''}"/> >Armenia</option>
                    <option value="533" <c:out value="${country eq '533' ? 'selected' : ''}"/> >Aruba</option>
                    <option value="36" <c:out value="${country eq '36' ? 'selected' : ''}"/> >Australia</option>
                    <option value="40" <c:out value="${country eq '40' ? 'selected' : ''}"/> >Austria</option>
                    <option value="31" <c:out value="${country eq '31' ? 'selected' : ''}"/> >Azerbaijan</option>
                    <option value="44" <c:out value="${country eq '44' ? 'selected' : ''}"/> >Bahamas</option>
                    <option value="48" <c:out value="${country eq '48' ? 'selected' : ''}"/> >Bahrain</option>
                    <option value="50" <c:out value="${country eq '50' ? 'selected' : ''}"/> >Bangladesh</option>
                    <option value="52" <c:out value="${country eq '52' ? 'selected' : ''}"/> >Barbados</option>
                    <option value="112" <c:out value="${country eq '112' ? 'selected' : ''}"/> >Belarus</option>
                    <option value="56" <c:out value="${country eq '56' ? 'selected' : ''}"/> >Belgium</option>
                    <option value="84" <c:out value="${country eq '84' ? 'selected' : ''}"/> >Belize</option>
                    <option value="204" <c:out value="${country eq '204' ? 'selected' : ''}"/> >Benin</option>
                    <option value="60" <c:out value="${country eq '60' ? 'selected' : ''}"/> >Bermuda</option>
                    <option value="64" <c:out value="${country eq '64' ? 'selected' : ''}"/> >Bhutan</option>
                    <option value="68" <c:out value="${country eq '68' ? 'selected' : ''}"/> >Bolivia</option>
                    <option value="70" <c:out value="${country eq '70' ? 'selected' : ''}"/> >Bosnia and Herzegowina</option>
                    <option value="72" <c:out value="${country eq '72' ? 'selected' : ''}"/> >Botswana</option>
                    <option value="74" <c:out value="${country eq '74' ? 'selected' : ''}"/> >Bouvet Island</option>
                    <option value="76" <c:out value="${country eq '76' ? 'selected' : ''}"/> >Brazil</option>
                    <option value="86" <c:out value="${country eq '86' ? 'selected' : ''}"/> >British Indian Ocean Territory</option>
                    <option value="96" <c:out value="${country eq '96' ? 'selected' : ''}"/> >Brunei Darussalam</option>
                    <option value="100" <c:out value="${country eq '100' ? 'selected' : ''}"/> >Bulgaria</option>
                    <option value="854" <c:out value="${country eq '854' ? 'selected' : ''}"/> >Burkina faso</option>
                    <option value="108" <c:out value="${country eq '108' ? 'selected' : ''}"/> >Burundi</option>
                    <option value="116" <c:out value="${country eq '116' ? 'selected' : ''}"/> >Cambodia</option>
                    <option value="120" <c:out value="${country eq '120' ? 'selected' : ''}"/> >Cameroon</option>
                    <option value="124" <c:out value="${country eq '124' ? 'selected' : ''}"/> >Canada</option>
                    <option value="132" <c:out value="${country eq '132' ? 'selected' : ''}"/> >Cape verde</option>
                    <option value="136" <c:out value="${country eq '136' ? 'selected' : ''}"/> >Cayman Islands</option>
                    <option value="140" <c:out value="${country eq '140' ? 'selected' : ''}"/> >Central African Republic</option>
                    <option value="148" <c:out value="${country eq '148' ? 'selected' : ''}"/> >Chad</option>
                    <option value="152" <c:out value="${country eq '152' ? 'selected' : ''}"/> >Chile</option>
                    <option value="156" <c:out value="${country eq '156' ? 'selected' : ''}"/> >China</option>
                    <option value="162" <c:out value="${country eq '162' ? 'selected' : ''}"/> >Christmas Island</option>
                    <option value="166" <c:out value="${country eq '166' ? 'selected' : ''}"/> >Cocos (Keeling) Islands</option>
                    <option value="170" <c:out value="${country eq '170' ? 'selected' : ''}"/> >Colombia</option>
                    <option value="174" <c:out value="${country eq '174' ? 'selected' : ''}"/> >Comoros</option>
                    <option value="178" <c:out value="${country eq '178' ? 'selected' : ''}"/> >Congo</option>
                    <option value="184" <c:out value="${country eq '184' ? 'selected' : ''}"/> >Cook Islands</option>
                    <option value="188" <c:out value="${country eq '188' ? 'selected' : ''}"/> >Costa Rica</option>
                    <option value="384" <c:out value="${country eq '284' ? 'selected' : ''}"/> >Cote d'ivoire</option>
                    <option value="191" <c:out value="${country eq '191' ? 'selected' : ''}"/> >Croatia</option>
                    <option value="192" <c:out value="${country eq '192' ? 'selected' : ''}"/> >Cuba</option>
                    <option value="196" <c:out value="${country eq '196' ? 'selected' : ''}"/> >Cyprus</option>
                    <option value="203" <c:out value="${country eq '203' ? 'selected' : ''}"/> >Czech Republic</option>
                    <option value="180" <c:out value="${country eq '180' ? 'selected' : ''}"/> >Democratic Republic of the Congo</option>
                    <option value="208" <c:out value="${country eq '208' ? 'selected' : ''}"/> >Denmark</option>
                    <option value="262" <c:out value="${country eq '262' ? 'selected' : ''}"/> >Djibouti</option>
                    <option value="212" <c:out value="${country eq '212' ? 'selected' : ''}"/> >Dominica</option>
                    <option value="214" <c:out value="${country eq '214' ? 'selected' : ''}"/> >Dominican Republic</option>
                    <option value="626" <c:out value="${country eq '626' ? 'selected' : ''}"/> >East Timor</option>
                    <option value="218" <c:out value="${country eq '218' ? 'selected' : ''}"/> >Ecuador</option>
                    <option value="818" <c:out value="${country eq '818' ? 'selected' : ''}"/> >Egypt</option>
                    <option value="222" <c:out value="${country eq '222' ? 'selected' : ''}"/> >El Salvador</option>
                    <option value="226" <c:out value="${country eq '226' ? 'selected' : ''}"/> >Equatorial guinea</option>
                    <option value="232" <c:out value="${country eq '232' ? 'selected' : ''}"/> >Eritrea</option>
                    <option value="233" <c:out value="${country eq '233' ? 'selected' : ''}"/> >Estonia</option>
                    <option value="231" <c:out value="${country eq '231' ? 'selected' : ''}"/> >Ethiopia</option>
                    <option value="238" <c:out value="${country eq '238' ? 'selected' : ''}"/> >Falkland Islands (Malvinas)</option>
                    <option value="234" <c:out value="${country eq '234' ? 'selected' : ''}"/> >Faroe Islands</option>
                    <option value="242" <c:out value="${country eq '242' ? 'selected' : ''}"/> >Fiji</option>
                    <option value="246" <c:out value="${country eq '246' ? 'selected' : ''}"/> >Finland</option>
                    <option value="250" <c:out value="${country eq '250' ? 'selected' : ''}"/> >France</option>
                    <option value="254" <c:out value="${country eq '254' ? 'selected' : ''}"/> >French Guiana</option>
                    <option value="258" <c:out value="${country eq '258' ? 'selected' : ''}"/> >French Polynesia</option>
                    <option value="260" <c:out value="${country eq '260' ? 'selected' : ''}"/> >French Southern Territories</option>
                    <option value="266" <c:out value="${country eq '266' ? 'selected' : ''}"/> >Gabon</option>
                    <option value="270" <c:out value="${country eq '270' ? 'selected' : ''}"/> >Gambia</option>
                    <option value="268" <c:out value="${country eq '268' ? 'selected' : ''}"/> >Georgia</option>
                    <option value="898" <c:out value="${country eq '898' ? 'selected' : ''}"/> >German Democratic</option>
                    <option value="276" <c:out value="${country eq '276' ? 'selected' : ''}"/> >Germany</option>
                    <option value="288" <c:out value="${country eq '288' ? 'selected' : ''}"/> >Ghana</option>
                    <option value="292" <c:out value="${country eq '292' ? 'selected' : ''}"/> >Gibraltar</option>
                    <option value="300" <c:out value="${country eq '300' ? 'selected' : ''}"/> >Greece</option>
                    <option value="304" <c:out value="${country eq '304' ? 'selected' : ''}"/> >Greenland</option>
                    <option value="308" <c:out value="${country eq '308' ? 'selected' : ''}"/> >Grenada</option>
                    <option value="312" <c:out value="${country eq '312' ? 'selected' : ''}"/> >Guadeloupe</option>
                    <option value="316" <c:out value="${country eq '316' ? 'selected' : ''}"/> >Guam</option>
                    <option value="320" <c:out value="${country eq '320' ? 'selected' : ''}"/> >Guatemala</option>
                    <option value="324" <c:out value="${country eq '324' ? 'selected' : ''}"/> >Guinea</option>
                    <option value="624" <c:out value="${country eq '624' ? 'selected' : ''}"/> >Guinea-Bissau</option>
                    <option value="328" <c:out value="${country eq '328' ? 'selected' : ''}"/> >Guyana</option>
                    <option value="332" <c:out value="${country eq '332' ? 'selected' : ''}"/> >Haiti</option>
                    <option value="334" <c:out value="${country eq '334' ? 'selected' : ''}"/> >Heard and McDonald Islands</option>
                    <option value="340" <c:out value="${country eq '340' ? 'selected' : ''}"/> >Honduras</option>
                    <option value="348" <c:out value="${country eq '348' ? 'selected' : ''}"/> >Hungary</option>
                    <option value="352" <c:out value="${country eq '352' ? 'selected' : ''}"/> >Iceland</option>
                    <option value="356" <c:out value="${country eq '356' ? 'selected' : ''}"/> >India</option>
                    <option value="360" <c:out value="${country eq '360' ? 'selected' : ''}"/> >Indonesia</option>
                    <option value="364" <c:out value="${country eq '364' ? 'selected' : ''}"/> >Iran</option>
                    <option value="368" <c:out value="${country eq '368' ? 'selected' : ''}"/> >Iraq</option>
                    <option value="372" <c:out value="${country eq '372' ? 'selected' : ''}"/> >Ireland</option>
                    <option value="376" <c:out value="${country eq '376' ? 'selected' : ''}"/> >Israel</option>
                    <option value="380" <c:out value="${country eq '380' ? 'selected' : ''}"/> >Italy</option>
                    <option value="388" <c:out value="${country eq '388' ? 'selected' : ''}"/> >Jamaica</option>
                    <option value="392" <c:out value="${country eq '392' ? 'selected' : ''}"/> >Japan</option>
                    <option value="400" <c:out value="${country eq '400' ? 'selected' : ''}"/> >Jordan</option>
                    <option value="398" <c:out value="${country eq '398' ? 'selected' : ''}"/> >Kazakhstan</option>
                    <option value="404" <c:out value="${country eq '404' ? 'selected' : ''}"/> >Kenya</option>
                    <option value="296" <c:out value="${country eq '296' ? 'selected' : ''}"/> >Kiribati</option>
                    <option value="408" <c:out value="${country eq '408' ? 'selected' : ''}"/> >Korea, Democratic People's Republic of</option>
                    <option value="410" <c:out value="${country eq '410' ? 'selected' : ''}"/> >Korea, Republic of</option>
                    <option value="414" <c:out value="${country eq '414' ? 'selected' : ''}"/> >Kuwait</option>
                    <option value="417" <c:out value="${country eq '417' ? 'selected' : ''}"/> >Kyrgyzstan</option>
                    <option value="418" <c:out value="${country eq '418' ? 'selected' : ''}"/> >Lao people's Democratic Republic</option>
                    <option value="428" <c:out value="${country eq '428' ? 'selected' : ''}"/> >Latvia</option>
                    <option value="422" <c:out value="${country eq '422' ? 'selected' : ''}"/> >Lebanon</option>
                    <option value="426" <c:out value="${country eq '426' ? 'selected' : ''}"/> >Lesotho</option>
                    <option value="430" <c:out value="${country eq '430' ? 'selected' : ''}"/> >Liberia</option>
                    <option value="434" <c:out value="${country eq '434' ? 'selected' : ''}"/> >Libyan Arab Jamahiriya</option>
                    <option value="438" <c:out value="${country eq '438' ? 'selected' : ''}"/> >Liechtenstein</option>
                    <option value="440" <c:out value="${country eq '440' ? 'selected' : ''}"/> >Lithuania</option>
                    <option value="442" <c:out value="${country eq '442' ? 'selected' : ''}"/> >Luxembourg</option>
                    <option value="446" <c:out value="${country eq '446' ? 'selected' : ''}"/> >Macau</option>
                    <option value="807" <c:out value="${country eq '807' ? 'selected' : ''}"/> >Macedonia</option>
                    <option value="450" <c:out value="${country eq '450' ? 'selected' : ''}"/> >Madagascar</option>
                    <option value="454" <c:out value="${country eq '454' ? 'selected' : ''}"/> >Malawi</option>
                    <option value="458" <c:out value="${country eq '458' ? 'selected' : ''}"/> >Malaysia</option>
                    <option value="462" <c:out value="${country eq '462' ? 'selected' : ''}"/> >Maldives</option>
                    <option value="466" <c:out value="${country eq '466' ? 'selected' : ''}"/> >Mali</option>
                    <option value="470" <c:out value="${country eq '470' ? 'selected' : ''}"/> >Malta</option>
                    <option value="584" <c:out value="${country eq '584' ? 'selected' : ''}"/> >Marshall Islands</option>
                    <option value="474" <c:out value="${country eq '474' ? 'selected' : ''}"/> >Martinique</option>
                    <option value="478" <c:out value="${country eq '478' ? 'selected' : ''}"/> >Mauritania</option>
                    <option value="480" <c:out value="${country eq '480' ? 'selected' : ''}"/> >Mauritius</option>
                    <option value="175" <c:out value="${country eq '175' ? 'selected' : ''}"/> >Mayotte</option>
                    <option value="484" <c:out value="${country eq '484' ? 'selected' : ''}"/> >Mexico</option>
                    <option value="583" <c:out value="${country eq '583' ? 'selected' : ''}"/> >Micronesia, Federated States of</option>
                    <option value="899" <c:out value="${country eq '899' ? 'selected' : ''}"/> >Midway Islands</option>
                    <option value="498" <c:out value="${country eq '498' ? 'selected' : ''}"/> >Moldova, Republic of</option>
                    <option value="492" <c:out value="${country eq '492' ? 'selected' : ''}"/> >Monaco</option>
                    <option value="496" <c:out value="${country eq '496' ? 'selected' : ''}"/> >Mongolia</option>
                    <option value="902" <c:out value="${country eq '902' ? 'selected' : ''}"/> >Montenegro</option>
                    <option value="500" <c:out value="${country eq '500' ? 'selected' : ''}"/> >Montserrat</option>
                    <option value="504" <c:out value="${country eq '504' ? 'selected' : ''}"/> >Morocco</option>
                    <option value="508" <c:out value="${country eq '508' ? 'selected' : ''}"/> >Mozambique</option>
                    <option value="104" <c:out value="${country eq '104' ? 'selected' : ''}"/> >Myanmar</option>
                    <option value="516" <c:out value="${country eq '516' ? 'selected' : ''}"/> >Namibia</option>
                    <option value="520" <c:out value="${country eq '520' ? 'selected' : ''}"/> >Nauru</option>
                    <option value="524" <c:out value="${country eq '524' ? 'selected' : ''}"/> >Nepal</option>
                    <option value="528" <c:out value="${country eq '528' ? 'selected' : ''}"/> >Netherlands</option>
                    <option value="530" <c:out value="${country eq '530' ? 'selected' : ''}"/> >Netherlands Antilles</option>
                    <option value="900" <c:out value="${country eq '900' ? 'selected' : ''}"/> >Neutral Zone</option>
                    <option value="540" <c:out value="${country eq '540' ? 'selected' : ''}"/> >New Caledonia</option>
                    <option value="554" <c:out value="${country eq '554' ? 'selected' : ''}"/> >New Zealand</option>
                    <option value="558" <c:out value="${country eq '558' ? 'selected' : ''}"/> >Nicaragua</option>
                    <option value="562" <c:out value="${country eq '562' ? 'selected' : ''}"/> >Niger</option>
                    <option value="566" <c:out value="${country eq '566' ? 'selected' : ''}"/> >Nigeria</option>
                    <option value="570" <c:out value="${country eq '570' ? 'selected' : ''}"/> >Niue</option>
                    <option value="574" <c:out value="${country eq '574' ? 'selected' : ''}"/> >Norfolk Island</option>
                    <option value="580" <c:out value="${country eq '580' ? 'selected' : ''}"/> >Northern Mariana Islands</option>
                    <option value="578" <c:out value="${country eq '578' ? 'selected' : ''}"/> >Norway</option>
                    <option value="512" <c:out value="${country eq '512' ? 'selected' : ''}"/> >Oman</option>
                    <option value="586" <c:out value="${country eq '586' ? 'selected' : ''}"/> >Pakistan</option>
                    <option value="585" <c:out value="${country eq '585' ? 'selected' : ''}"/> >Palau</option>
                    <option value="591" <c:out value="${country eq '591' ? 'selected' : ''}"/> >Panama</option>
                    <option value="598" <c:out value="${country eq '598' ? 'selected' : ''}"/> >Papua New Guinea</option>
                    <option value="600" <c:out value="${country eq '600' ? 'selected' : ''}"/> >Paraguay</option>
                    <option value="604" <c:out value="${country eq '604' ? 'selected' : ''}"/> >Peru</option>
                    <option value="608" <c:out value="${country eq '608' ? 'selected' : ''}"/> >Philippines</option>
                    <option value="612" <c:out value="${country eq '612' ? 'selected' : ''}"/> >Pitcairn</option>
                    <option value="616" <c:out value="${country eq '616' ? 'selected' : ''}"/> >Poland</option>
                    <option value="620" <c:out value="${country eq '620' ? 'selected' : ''}"/> >Portugal</option>
                    <option value="630" <c:out value="${country eq '630' ? 'selected' : ''}"/> >Puerto Rico</option>
                    <option value="634" <c:out value="${country eq '634' ? 'selected' : ''}"/> >Qatar</option>
                    <option value="638" <c:out value="${country eq '638' ? 'selected' : ''}"/> >Reunion</option>
                    <option value="642" <c:out value="${country eq '642' ? 'selected' : ''}"/> >Romania</option>
                    <option value="643" <c:out value="${country eq '643' ? 'selected' : ''}"/> >Russian Federation</option>
                    <option value="646" <c:out value="${country eq '646' ? 'selected' : ''}"/> >Rwanda</option>
                    <option value="659" <c:out value="${country eq '659' ? 'selected' : ''}"/> >Saint Kitts and Nevis</option>
                    <option value="662" <c:out value="${country eq '662' ? 'selected' : ''}"/> >Saint Lucia</option>
                    <option value="670" <c:out value="${country eq '670' ? 'selected' : ''}"/> >Saint Vincent and the Grenadines</option>
                    <option value="674" <c:out value="${country eq '674' ? 'selected' : ''}"/> >San Marino</option>
                    <option value="678" <c:out value="${country eq '678' ? 'selected' : ''}"/> >Sao Tome and Principe</option>
                    <option value="682" <c:out value="${country eq '682' ? 'selected' : ''}"/> >Saudi Arabia</option>
                    <option value="686" <c:out value="${country eq '686' ? 'selected' : ''}"/> >Senegal</option>
                    <option value="903" <c:out value="${country eq '903' ? 'selected' : ''}"/> >Serbia</option>
                    <option value="690" <c:out value="${country eq '690' ? 'selected' : ''}"/> >Seychelles</option>
                    <option value="694" <c:out value="${country eq '694' ? 'selected' : ''}"/> >Sierra Leone</option>
                    <option value="702" <c:out value="${country eq '702' ? 'selected' : ''}"/> >Singapore</option>
                    <option value="703" <c:out value="${country eq '703' ? 'selected' : ''}"/> >Slovakia</option>
                    <option value="705" <c:out value="${country eq '705' ? 'selected' : ''}"/> >Slovenia</option>
                    <option value="90" <c:out value="${country eq '90' ? 'selected' : ''}"/> >Solomon Islands</option>
                    <option value="706" <c:out value="${country eq '706' ? 'selected' : ''}"/> >Somalia</option>
                    <option value="710" <c:out value="${country eq '710' ? 'selected' : ''}"/> >South Africa</option>
                    <option value="724" <c:out value="${country eq '724' ? 'selected' : ''}"/> >Spain</option>
                    <option value="144" <c:out value="${country eq '144' ? 'selected' : ''}"/> >Sri Lanka</option>
                    <option value="654" <c:out value="${country eq '654' ? 'selected' : ''}"/> >St. Helena</option>
                    <option value="666" <c:out value="${country eq '666' ? 'selected' : ''}"/> >St. Pierre and Miquelon</option>
                    <option value="736" <c:out value="${country eq '736' ? 'selected' : ''}"/> >Sudan</option>
                    <option value="740" <c:out value="${country eq '740' ? 'selected' : ''}"/> >Suriname</option>
                    <option value="744" <c:out value="${country eq '744' ? 'selected' : ''}"/> >Svalbard and Jan Mayen Islands</option>
                    <option value="748" <c:out value="${country eq '748' ? 'selected' : ''}"/> >Swaziland</option>
                    <option value="752" <c:out value="${country eq '752' ? 'selected' : ''}"/> >Sweden</option>
                    <option value="756" <c:out value="${country eq '756' ? 'selected' : ''}"/> >Switzerland</option>
                    <option value="760" <c:out value="${country eq '760' ? 'selected' : ''}"/> >Syrian Arab Republic</option>
                    <option value="158" <c:out value="${country eq '158' ? 'selected' : ''}"/> >Taiwan</option>
                    <option value="762" <c:out value="${country eq '762' ? 'selected' : ''}"/> >Tajikistan</option>
                    <option value="834" <c:out value="${country eq '834' ? 'selected' : ''}"/> >Tanzania</option>
                    <option value="764" <c:out value="${country eq '764' ? 'selected' : ''}"/> >Thailand</option>
                    <option value="768" <c:out value="${country eq '768' ? 'selected' : ''}"/> >Togo</option>
                    <option value="772" <c:out value="${country eq '772' ? 'selected' : ''}"/> >Tokelau</option>
                    <option value="776" <c:out value="${country eq '776' ? 'selected' : ''}"/> >Tonga</option>
                    <option value="780" <c:out value="${country eq '780' ? 'selected' : ''}"/> >Trinidad and Tobago</option>
                    <option value="788" <c:out value="${country eq '788' ? 'selected' : ''}"/> >Tunisia</option>
                    <option value="792" <c:out value="${country eq '792' ? 'selected' : ''}"/> >Turkey</option>
                    <option value="795" <c:out value="${country eq '795' ? 'selected' : ''}"/> >Turkmenistan</option>
                    <option value="796" <c:out value="${country eq '796' ? 'selected' : ''}"/> >Turks and Caicos Islands</option>
                    <option value="798" <c:out value="${country eq '798' ? 'selected' : ''}"/> >Tuvalu</option>
                    <option value="800" <c:out value="${country eq '800' ? 'selected' : ''}"/> >Uganda</option>
                    <option value="804" <c:out value="${country eq '804' ? 'selected' : ''}"/> >Ukraine</option>
                    <option value="784" <c:out value="${country eq '784' ? 'selected' : ''}"/> >United Arab Emirates</option>
                    <option value="826" <c:out value="${country eq '826' ? 'selected' : ''}"/> >United Kingdom</option>
                    <option value="840" <c:out value="${country eq '840' ? 'selected' : ''}"/> >United States</option>
                    <option value="581" <c:out value="${country eq '581' ? 'selected' : ''}"/> >United States Minor Outlying Islands</option>
                    <option value="858" <c:out value="${country eq '858' ? 'selected' : ''}"/> >Uruguay</option>
                    <option value="860" <c:out value="${country eq '860' ? 'selected' : ''}"/> >Uzbekistan</option>
                    <option value="548" <c:out value="${country eq '548' ? 'selected' : ''}"/> >Vanuatu</option>
                    <option value="336" <c:out value="${country eq '336' ? 'selected' : ''}"/> >Vatican City State</option>
                    <option value="862" <c:out value="${country eq '862' ? 'selected' : ''}"/> >Venezuela</option>
                    <option value="704" <c:out value="${country eq '704' ? 'selected' : ''}"/> >Vietnam</option>
                    <option value="92" <c:out value="${country eq '92' ? 'selected' : ''}"/> >Virgin Islands (British)</option>
                    <option value="850" <c:out value="${country eq '850' ? 'selected' : ''}"/> >Virgin Islands (U.S.)</option>
                    <option value="901" <c:out value="${country eq '901' ? 'selected' : ''}"/> >Wake Islands</option>
                    <option value="876" <c:out value="${country eq '876' ? 'selected' : ''}"/> >Wallis and Futuna Islands</option>
                    <option value="732" <c:out value="${country eq '732' ? 'selected' : ''}"/> >Western Sahara</option>
                    <option value="882" <c:out value="${country eq '882' ? 'selected' : ''}"/> >Western Samoa</option>
                    <option value="887" <c:out value="${country eq '887' ? 'selected' : ''}"/> >Yemen</option>
                    <option value="894" <c:out value="${country eq '894' ? 'selected' : ''}"/> >Zambia</option>
                    <option value="716" <c:out value="${country eq '716' ? 'selected' : ''}"/> >Zimbabwe</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>

    </div>
</div>

<div class="visible-print pull-right clearfix" ><img src="<spring:url value="/static/img/logo_delmar.gif"/>" alt="Delmar International Inc" height="42" border="0" width="157" />

</div>

<c:if test="${fn:length(agents) == 0}">
  <div class="container">
    <p>A default Delmar Agent is not currently listed, please contact us at info@delmarcargo.com, Thank you.</p>
  </div>
</c:if>

<c:forEach var="row" items="${agents}" varStatus="status">
<div class="container">
    <h4>Delmar agent in <c:out value="${pageScope.row.cityName}"/>, <c:out value="${pageScope.row.countryName}"/></h4>
    <div class="row">
        <div class="col-md-6">
          <address>
            <c:out value="${row.addressName}"/><br/>
            <c:out value="${row.address1}"/><br/>
            <c:out value="${row.address2}"/><br/>
            <c:out value="${row.cityName}"/><br/>
            <c:out value="${row.provStateName}"/><br/>
            <c:out value="${row.zipCode}"/><br/>
            <c:out value="${row.countryName}"/><br/>
            Tel.: <c:out value="${row.tel}"/><br/>
            Fax: <c:out value="${row.fax}"/><br/>
          </address>
        </div>
        <div class="col-md-6">
          <p><b>Contacts</b></p>
            <p>
              <c:forEach var="contact" items="${row.contacts}">
                Name: <c:out value="${contact.name}"/><br/>
                Email: <a href="mailto:<c:out value="${contact.email}"/>"><c:out value="${contact.email}"/></a><br/>
              </c:forEach>
            </p>
        </div>
    </div>
</div>
</c:forEach>

<div class="container">
    <footer>
        <p>&copy; Delmar International Inc, 2014</p>
    </footer>
</div> <!-- /container -->
<script>window.jQuery || document.write('<script src="<spring:url value="/static/js/vendor/jquery-1.10.1.min.js"/>"><\/script>')</script>

<script src="<spring:url value="/static/js/vendor/bootstrap.min.js"/>"></script>
<script src="<spring:url value="/static/js/plugins.js"/>"></script>
<script src="<spring:url value="/static/js/main.js"/>"></script>

</body>
</html>
