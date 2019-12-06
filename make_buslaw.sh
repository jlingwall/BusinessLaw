## Shell script to compile buslaw book and all chapters

# Change the files in the Pre-script directory, which will then compile as a whole in the BusinessLaw directory

# Loops through the section and pulls out the body of each section text
for myfile in *-0*; do
   echo "File -> $myfile"
	sed '1,26d;$d' $myfile > thetop
	tail -r thetop | tail -n +25 | tail -r > ./temp/thebody_$myfile
done
rm thetop

# Compile all the body files into the chapter files

mychapter=s04-introduction-to-law-and-legal-.html
head -26 $mychapter > ./temp/thetop.html
tail -n 23 $mychapter > ./temp/thebottom
cd temp
for myfile in thebody_s04*; do
	echo "Appending $myfile"
	cat $myfile >> thetop.html
done
	cat thebottom >> thetop.html
mv thetop.html ../$mychapter
rm thetop.html thebottom
cd ../


mychapter=s05-corporate-social-responsibilit.html
head -26 $mychapter > ./temp/thetop.html
tail -n 23 $mychapter > ./temp/thebottom
cd temp
for myfile in thebody_s05*; do
	echo "Appending $myfile"
	cat $myfile >> thetop.html
done
	cat thebottom >> thetop.html
mv thetop.html ../$mychapter
rm thetop.html thebottom
cd ../



mychapter=s06-courts-and-the-legal-process.html
head -26 $mychapter > ./temp/thetop.html
tail -n 23 $mychapter > ./temp/thebottom
cd temp
for myfile in thebody_s06*; do
	echo "Appending $myfile"
	cat $myfile >> thetop.html
done
	cat thebottom >> thetop.html
mv thetop.html ../$mychapter
rm thetop.html thebottom
cd ../


mychapter=s07-constitutional-law-and-us-comm.html
head -26 $mychapter > ./temp/thetop.html
tail -n 23 $mychapter > ./temp/thebottom
cd temp
for myfile in thebody_s07*; do
	echo "Appending $myfile"
	cat $myfile >> thetop.html
done
	cat thebottom >> thetop.html
mv thetop.html ../$mychapter
rm thetop.html thebottom
cd ../







    # s08-administrative-law.html s09-criminal-law.html s10-introduction-to-tort-law.html s11-introduction-to-sales-and-leas.html s12-title-and-risk-of-loss.html s13-performance-and-remedies.html s14-products-liability.html s15-bailments-and-the-storage-ship.html s16-nature-and-form-of-commercial-.html s17-negotiation-of-commercial-pape.html s18-holder-in-due-course-and-defen.html s19-liability-and-discharge.html s20-legal-aspects-of-banking.html s21-consumer-credit-transactions.html s22-secured-transactions-and-suret.html s23-mortgages-and-nonconsensual-li.html s24-bankruptcy.html s25-introduction-to-property-perso.html s26-intellectual-property.html s27-the-nature-and-regulation-of-r.html s28-the-transfer-of-real-estate-by.html s29-landlord-and-tenant-law.html s30-estate-planning-wills-estates-.html s31-insurance.html