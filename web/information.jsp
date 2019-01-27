 <!DOCTYPE html>

<html>
    <head>
        <title>Information</title>
<link type="text/css" rel="stylesheet" href="css.css" media="screen" />
      <%@include file="header.jsp"%>
             
    </head>
    <body>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #ffffff;
    width: 30%;
    height: 800px;
}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
    border: 1px ;
    width: 70%;
    border-left: none;
    height: 800px;
}

h3
{
color:darkgreen;    
}
</style>


<div class="tab">
    <button class="tablinks" onclick="openTab(event, 'blood')" id="defaultOpen"><b>BLOOD DONATION<b></button>
                <button class="tablinks" onclick="openTab(event, 'Types')"><b>TYPES OF DONATION<b></button>
                            <button class="tablinks" onclick="openTab(event, 'Tips')"><b>TIPS ON  DONATION<b></button>
                         <button class="tablinks" onclick="openTab(event, 'bldgrp')"><b>KNOW YOUR BLOOD GROUP </b></button>
                         <button class="tablinks" onclick="openTab(event, 'prp')"><b>PREPARATION TIPS</b></button>
                         <button class="tablinks" onclick="openTab(event, 'elgb')"><b>ELIGBLITY</b></button>
                         <button class="tablinks" onclick="openTab(event, 'lic')"><b>LICENSED BLOOD BANKS</b></button>
      
                         </div>

</div>
  
<div id="blood" class="tabcontent">
  <h3>BLOOD DONATION</h3>
  <p color="black"  style="text-align:justify; font-size:20px; font-weight:500;">
 A blood donation is when a healthy person voluntarily has blood drawn. The blood is used for transfusions or made into medications
 by a process called fractionation. 
 <br>
In the developed world, most blood donors are unpaid volunteers who give blood for a community supply. 
 A donor can also have blood drawn for their own future use. Donating is relatively safe, but some donors have bruising
 where the needle is inserted or may feel faint. 
 <br><br>
Potential donors are evaluated for anything that might make their blood unsafe to use. The screening includes testing for
diseases that can be transmitted by a blood transfusion, including HIV and viral hepatitis. The donor is also asked about medical
history and given a short physical examination to make sure that the donation is not hazardous to their health.
How often a donor can give varies from days to months based on what they donate and the laws of the country where the donation 
takes place. 
<br>
Most of the components of blood used for transfusions have a short shelf life, and maintaining a constant supply is 
a persistent problem.
     
  </p>
 </div>

<div id="Types" class="tabcontent">
  <h3>TYPES OF BLOOD DONATION </h3>
 <p color="black"  style="text-align:justify; font-size:20px; font-weight:500;">Blood donations are divided into three groups based on who will receive the collected blood.
     An allogeneic (also called homologous) donation is when a donor gives blood for storage at a blood bank for transfusion to
     an unknown recipient.
     <br>
     A directed or replacement donor donation is when a person, often a family member, donates blood for transfusion to a
     specific individual. Directed donations are rare.
     <br><br>
     The third kind is when a person has blood stored that will be transfused back to the donor at a later date, usually after 
     surgery. This is called an autologous donation. Blood that is used to make medications can be made from allogeneic donations 
     or from donations exclusively used for manufacturing. 
     <br>
An event where donors come to give allogeneic blood is sometimes called a blood drive or a blood donor session.
These can occur at a blood bank but they are often set up at a location in the community such as a shopping center,
workplace, school, or house of worship.
</p>
  
</div>

<div id="Tips" class="tabcontent">
  <h3>Tips</h3>
  <p color="black"  style="text-align:justify; font-size:20px; font-weight:500;">
      1. Please have a good meal at least 3 hours before donating blood.
      <br><br>
2. Please accept the snacks offered to you after the donation, it is vital you have them. 
You are recommended to have a good meal later.
<br><br>
3. Please avoid smoking on the day before donating. You can smoke 3 hours after donation.
<br><br>
4. You will not be eligible to donate blood if you have consumed alcohol 48 hours before donation.
<br>
  </p>
</div>

<div id="bldgrp" class="tabcontent">
  <h3>BLOOD GROUPS</h3>
  <p color="black"  style="text-align:justify; font-size:20px; font-weight:500;">
      Blood is grouped into four types: A, B, AB, and O.
 Each Type is also classified by an Rh factor: Either positive (+) or negative (-). 
 <br><br>

When a blood transfusion is necessary, donor and patient blood must be compatible. 
If not, the patient's body will react to the incompatible donor cells, leading to complications, maybe even death. 
Your ABO blood grouping and Rh factor are inherited from your parents. 
<br>
 Following are the Blood Groups:
 <br>
1.O Positive
<br>
2.O Negative
<br>
3.A Positive
<br>
4.A Negative
<br>
5.B Positive
<br>
6.B Negative
<br>
7.AB Positive
<br>
8.AB Negative
<br>

<br>
Blood Group O (Universal Donor)
<br><br>
O Negative 
As an O negative donor, we have a great need for your whole blood donations. 
This type is uncommon only 6 percent of the population is O negative. 
O negative patients should receive blood only from O negative donors. 
<br><br>
O Positive 
As an O positive whole donor, it is of great help in donation. This type is the most common -
nearly 40 percent of the population is O positive. It is in greatest demand. 

  </p>
</div>

<div id="prp" class="tabcontent">
  <h3>PREPARATION TIPS</h3>
  <p color="black"  style="text-align:justify; font-size:20px; font-weight:500;">
      Preparation for giving blood

Please be sure to eat at your regular mealtime and drink plenty of fluids.
We recommend that you not take aspirin, or products containing aspirin, for at least 72 hours before you are donating blood. 
<br>

<b>The Procedure</b>

<br>
Before donating blood some basic information such as your name, address and age is recorded.
A medical checkup is done, where your pulse, blood pressure and temperature is also checked.
Blood is analyzed for hemoglobin content. 

<br>
The procedure is done by a skilled, specially trained technician and takes seven to ten minutes. 
There may be a little sting when the needle is inserted, but there should be no pain during the donation.
The materials, including the needle used for your donation, should be new, sterile, disposable and used only once by you 
for your blood donation. 
<br>


<br>
<b>After Donating Blood</b>

<br>
You can resume full activity as long as you feel well.
Just avoid lifting, pushing or picking up heavy objects for at least four or five hours after giving blood.
After donating, drink lots of fluids for the next 48 hours. 

<br>
Your body replaces blood volume or plasma within 24 hours. Red cells need about four to eight weeks for complete replacement.
You can donate whole blood every 90 days and you can also donate specific life?saving blood components besides whole blood. 

<br><br>
After donation, your blood will be tested for blood type, hepatitis, HIV (the AIDS virus), HTLV (Human T-cell Lymphotropic Virus),
and Syphilis. Then it can be used either as whole blood for one patient or, after separation into components,
to help several patients. 
  </p>
</div>
  
<div id="elgb" class="tabcontent">
  <h3>ELIGIBLITY CRITERIA </h3>
 <p color="black"  style="text-align:justify; font-size:20px; font-weight:500;">
     You should not be suffering from any of the following diseases or taking medicines for them :
     <br>    
1.Hepatitis B, C
<br>
2.AIDS
<br>
3.Diabetes (are you under medication currently?)
<br>
4.Fits/ Convulsions (are you under medication currently?)
<br>
5.Cancer
<br>
6.Leprosy or any other infectious diseases
<br>
7.Any allergies (Only if you are suffering from severe symptoms)
<br>
8.Hemophilia/ Bleeding problems
<br>
9.Kidney disease
<br>
10.Heart disease
<br>
11.Hormonal disorders
<br>
12.Any other type of Jaundice (within 5 years)
<br>
13.Tuberculosis (within 2 years)
<br>
14.Chicken Pox (within 1 year)
<br>
15.Malaria (within 1 year)
<br>
16.Organ Transplant (within one year)
<br>
17.Blood Transfusion (within the last 6 months)
<br>
18.Pregnancy (within the last 6 months)
<br>
19.Blood Donation (within the last 3 months)
<br>
20.Major Surgery (within the last 3 months)
<br>
21.Small Pox Vaccination (within the last 3weeks)
<br>
22.Hemoglobin deficiency / Anemia (recently)
<br>
23.Drastic weight loss (recently)
<br>

 </p>
</div>

<div id="lic" class="tabcontent">
  <h3>BLOOD DONATION</h3>
  <p color="black"  style="text-align:justify; font-size:20px; font-weight:500;">
      
      <br>
1 Blood Bank,A.I.I.M.S New Delhi-110029 
<br><br>
2 Blood Bank,Armed Forces Transfusion Centre Contonment,New Delhi-110010 

<br><br>
3 Blood Bank,C.N. Centre,A.I.I.M.S. New Delhi-110029 
<br><br>
4 Blood Bank, Dr.R.M.L. Hospital New Delhi-110001 
<br><br>
5 Blood Bank E.S.I. Hospital New Delhi-110015 
<br><br>
6 Blood Bank, Northern Railway Centre Basant Lane, New Delhi 
<br><br>
7 Blood Bank ,Safdajang Hospital New Delhi-110029 
<br><br>
8 Blood Bank, Sucheta Kriplani Hospital New Delhi-110001 
<br><br>
<br><br>
(B). Blood Banks Under Government of Delhi : 
<br><br>
9 Blood Bank,D.D.U. Hospital Hari Nagar, New Delhi-110069 
<br><br>
10 Blood Bank,G.B. Pant Hospital New Delhi-110002 
<br><br>
11 Blood Bank,G.T.B. Hospital Shahdra,Delhi-110029 
<br><br>
12 Blood Bank, L.N.J.P. Hospital New Delhi-110002 
<br><br>
13 Blood Bank Sushrut Trauma Centre Metcalf House, Delhi-110054
<br><br>
14 Blood Bank, Sanjay Gandhi Memorial Hospital, Mangolpuri,Delhi-110083
<br><br>
15 Blood Bank, Saheb ambedkar Hospital Sector-6,Rohini, Delhi 
<br><br>
16 Dr. Hedgewar Arogya Sansthan, F-18, Kakardooma, Shahadara Delhi-32 
<br><br>
<br><br>
(C). Blood Banks Under Muncipal Corporation of Delhi : 
<br><br>
17 Blood Bank, Hindu Rao Hospital Delhi-110007 
<br><br>
18 Blood Bank, Kasturba Hospital Daryaganj, New Delhi-110002
<br><br>
19 Blood Bank, Swami Dayanand Hospital Delhi-110095 
<br><br>
<br><br>
(D). Blood Banks Under Voluntary Organisation : 
<br><br>
20 Blood Bank,Indian Red Cross Society New Delhi 
<br><br>
21 Rotary Blood Bank,56-57,Tuglaguabad, Institutional Area, Mehrauli Badarpur Road, New Delhi 
<br><br>
22 Loins Blood Bank AK-100, Shalimar Bagh,New Delhi-88 
<br><br>
<br><br>
(E). Registration Trust Operator Blood Bank: 
<br><br>
23 Emergency Blood Bank 4858/2a, Ansari Road, Darayaganj,New Delhi-02 
<br><br>
24 Blood Bank Organisation 11/6-B, Pusa Road,New Delhi-110008 
<br><br>
<br><br>
(F).Blood Banks Under Private Hospitals: 
<br><br>
25 Blood Bank Jaipur Golden Hospital 2, Institutional Area ,Rohini,New Delhi-110085 
<br><br>
26 Blood Bank,Batra Hospital New Delhi-110062 
<br><br>
27 Blood Bank,Dharmashila Cancer Hospital Vasundra Enclave,Delhi-110096 
<br><br>
28 Blood Bank, Escort Heart Institute Okhla, New Delhi-110044 
<br><br>
29 Blood Bank Ganga Ram Hospital New Delhi-110060 
<br><br>
30 Blood Bank, Holy Family Hospital Okhla,New Delhi-110020 
<br><br>
31 Blood Bank ,Mata Chanan Devi Hospital A-2D,Janak Puri,New Delhi-110058
<br><br>
32 Blood Bank, Mool chand Hospital Lajpat Nagar,New Delhi-110024 
<br><br>
33 Blood Bank, National Heart Institute East of Kailash,New Delhi-110065 
<br><br>
34 Blood Bank, Rajiv Gandhi Cancer Hospital Rohini,Delhi-110085 
<br><br>
35 Blood Bank,Indra Parstha Medical Corporation Sarita Vihar,New Delhi-110085 
<br><br>
36 Blood Bank, St. Stephens Hospital Delhi-110054 
<br><br>
37 Blood Bank, Sundar Lal Jain Hospital Ashok Vihar,Delhi-110052 
<br><br>
38 Pushpawati Singhania Research Inst. for Liver Renal & Digestive, Press Enclave Marg, Shaikh Sarai,New Delhi-17
<br><br>
39 Blood Bank, Maharaja Aagrasen Hospital Punjabi Bagh,New Delhi-110026 
<br><br>
40 Blood Bank, Delhi Heart & Lungs Institute, 3MM-11,Ansari Road,Daryaganj,New Delhi-02 
<br><br>
41 Brahm Shakti Hospital & Research Centre, U-1/78, Budh Vihar,New Delhi-110041 
<br><br>
42 Shri Balaji Action Medical Institure FC-34,A/4, Paschim Vihar,New Delhi-63 
<br><br>
43 Max Devki Devi, Heart & Vascular Institute,(A Unit Of Devki Devi foundation Institute), 2,Press Enclave,Saket,New Delhi-110017 
<br><br>
44 Max Balaji Hospital(Balaji Medical and Diagnostic Centre) 108 A,Indraprastha Extn., Samachar Apartment,Patparganj,New Delhi-110017 
<br><br>
45 Sant Parmanand Hospital,(A Unit of Sant Parmanand Blind Relief Mission),Blood Bank, Sucheta Kriplani Hospital 18,Sham Nath Marg,Civil Lines,Delhi-54 
<br><br>
46 Blood Bank,Saroj Hospital & Heart Institute, Sector -14 Rohini,Madhuban Chowk,New Delhi-110085 
<br><br>
47 Fortis Flt. Lt. Rajan Dhall Hospital Sector-B, Pkt.1,Aruna Asaf Ali Marg, Vasant Kunj,New Delhi-110017 

<br><br><br><br>
(G).Private Blood Banks : 
<br><br>
48 Bajaj Blood Bank,I-C/3, Guru Gobind Singh Marg, New Rohtak Road,New Delhi-110005 
<br><br>
49 Blood Bank,Central Polyclinic 03, Gagan Vihar, Delhi 
<br><br>
50 Blood Organisation 36, Vijay Block, Laxmi Nagar,Delhi-110092 
<br><br>
51 Central Ployclinic Blood Bank 11-J/36, Lajpat Nagar,New Delhi-110024 
<br><br>
52 Sunil Blood Bank 806, Arjun Nagar,Kotla Mubarakpur,New Delhi-110003 

<br><br>
53 White Cross Blood Bank, A-60,East Of Kailash, New Delhi-110065 

  </p>
</div>


<script>
function openTab(evt, tName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
 
</body>
 </html>
   
