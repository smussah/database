
;when user chose wrong numer 
(defrule warn
 ?c<- (category $?)
      =>
 (printout t crlf 
	"  You must select correct category otherwis we will not be abe to serve you:"crlf)
	(retract ?c)
 (assert (category-manue)))

;**********

;exit 
(defrule exitss
 (declare (salience 500))
(category 6)
      =>
 (printout t crlf 
	"  Thank you for visiting our Clinic we hope see you soon in a good health "crlf)
 (exit)
 )
   
   (defrule start-up
   ?ma <-(initial-fact)
  =>        
(printout t ""crlf)
(printout t "          						  Hello there!!!!" crlf)
(printout t "          Wecome to our virtual clinic designed by UVM students" crlf)
	  (printout t "          which taughed and sponsored by " crlf)
	  (printout t"           Dr. Xindong Wu, Professor," crlf)
          (printout t "          Department of Computer Science,"crlf)
          (printout t "          University of Vermont," crlf )

	  (retract ?ma)
	(assert(category-manue));call personal info manu

;here
	 )


;******
(defrule categoryies
	?yup <- (category-manue)
	=>
	  (printout t "Please select appropriate symptom from thi list:" crlf)
	  (printout t  "     * * * * * * * * * * * * * *"crlf)
          (printout t  "1: Tooth Problem"crlf)
	  (printout t  "2: Leg Problems"crlf)
	  (printout t  "3: Neck Pain"crlf)
	  (printout t  "4: Knee Problems"crlf)
	  (printout t  "5: Headaches"crlf)
          (printout t  "6: Exit the program"crlf)
          (printout t ""crlf)
	  (printout t "Please choose an option by typing corresponding number: "crlf)
	(retract ?yup)
 (bind ?input (read))
 (assert( category ?input))
;***
)

;personal info 

;category goes herer 


;;************************************************************



(defrule leg-poblems
(declare (salience 9980))
(category 2)
=>
(printout t " **     Doctor Sadik Mussah " crlf)
(printout t " 		Please answer the following questions carefuly" crlf)
(printout t " 		by typing 'yes' OR 'no' only otherwis specified" crlf)
(printout t " 		Do you have pain in your leg or ankle after a fall or injury? " crlf)(bind ?input0 (read))
(assert (legpro1 ?input0)))


(defrule leg-poblems1
(legpro1 no)
=>
(printout t "" crlf)
(printout t "	Do you have pain or mild swelling in the front  " crlf)
(printout t "	or inner part of your lower leg that may have started " crlf)
(printout t "	after physical activity such as running or jumping? " crlf)

(bind ?input5 (read))
(assert (legpro5 ?input5)))


(defrule legpro1no
(legpro1 yes)
=>
(printout t "Is there a deformity of your leg, or are you unable to stand or put pressure on your leg?" crlf)
(bind ?input2 (read))
(assert (legpro2 ?input2)))

(defrule legpro2yes
(legpro2 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	You may have BROKEN BONE such as the TIBIA or FIBULA in the lower leg.," crlf)

(printout t "            EMERGENCY" crlf)
(printout t "	See your doctor or go to the emergency room right away. Apply ice to the affected area." crlf)
(printout t " *******" crlf)
(printout t "	Thank you and take care! " crlf))

(defrule legpro2no
(legpro2 no)
=>
(printout t " 	Did you hear a popping or grinding sound at the time of the injury? " crlf)
(bind ?input3(read))
(assert (legpro3 ?input3)))

(defrule legpro3yes
(legpro3 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend!" crlf)
(printout t "" crlf)
(printout t " 	You may have a SPRAINED ankle, but it's possible to break" crlf)
(printout t "	bone of the lower leg and still be able to stand on it." crlf)
(printout t "***** EMERGENCY  *******" crlf)
(printout t "	See your doctor or go to the emergency room right away. Apply ice to the affected area.  " crlf)

(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))


(defrule legpro3no
(legpro3 no)
=>
(printout t " 	Is there bruising or swelling of your calf or ankle?" crlf)
(bind ?input4(read))
(assert (legpro4 ?input4)))

(defrule legpro4yes

(legpro4yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have a partial or complete TEAR of the ACHILLES " crlf)
(printout t "    TENDON that attaches the calf muscle to the heel. "crlf)
(printout t "    This injury will cause pain and difficulty pointing the foot down. "crlf)
(printout t "	A TORN CALF MUSCLE will be painful and might produce bruises." crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "	See your doctor as soon as possible. Apply ice and use an anti-inflammatory " crlf)
(printout t "    medicine such as ibuprofen. Avoid activities that cause pain." crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))


(defrule legpro4no
(legpro4 no)
=>
(printout t "  	Do you have pain or mild swelling in the front or inner part of your lower leg that may " crlf)
(printout t "    have started after physical activity such as running or jumping?" crlf)
(bind ?input5(read))
(assert (legpro5 ?input5)))


(defrule legpro5yes

(legpro5 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have SHIN SPLINTS, inflammation of the ligaments and " crlf)
(printout t "    other connective tissue along your TIBIA bone, " crlf)
(printout t "   or a STRESS FRACTURE, a tiny crack in the bone. " crlf)
 (printout t "   These injuries are often caused by overuse during physical activity. " crlf)
 (printout t ""crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "   Get plenty of rest and avoid activities that cause pain.	" crlf)
(printout t "	Use an anti-inflammatory medicine such as ibuprofen and apply ice to the area" crlf)
(printout t "	See your doctor if pain or swelling gets worse or doesn't get better" crlf)
(printout t "	" crlf)
(printout t " " crlf)(printout t "Thank you and take care! " crlf)))

(defrule legpro5no
(legpro5 no)
=>
(printout t " 	Do you have pain, swelling, redness or warmth in your calf? " crlf)
(bind ?input6(read))
(assert (legpro6 ?input6)))



(defrule legpro6yes

(legpro6 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have DEEP VENOUS THROMBOSIS, " crlf)
(printout t "a clot in the veins of the calf muscles," crlf)
(printout t  "often caused by prolonged inactivity."crlf)
(printout t "	****EMERGENCY****  " crlf)
(printout t "	See your doctor or go to the emergency room right away. " crlf)
(printout t "	A blood clot in the legs could break away and block an artery" crlf)
(printout t "in the lungs, causing pulmonary embolism."crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

(defrule legpro6no
(legpro6 no)
=>
(printout t "  Do you have twisted dark blue or purple veins near the surface of the skin of your calf,  " crlf)
(printout t " and do you have pain or cramping in your calf or leg"crlf)
(printout t  "that is worse after standing or sitting for a long time?"crlf)
(bind ?input7(read))
(assert (legpro7 ?input7)))



(defrule legpro7yes
(legpro7 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have VARICOSE VEINS, swollen veins caused by weak valves and vein walls" crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	Wear support stockings or hose. Alternate periods of standing with sitting.  " crlf)
(printout t "	See your doctor if the varicose veins are very prominent,  " crlf)
(printout t "	or if they become painful and red." crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

(defrule legpro7no
(legpro7 no)
=>
(printout t " 	Do you have a tender red area or a red streak anywhere on your leg? " crlf)
(bind ?input8(read))
(assert (legpro8 ?input8)))


(defrule legpro8yes

(legpro8  yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have an infection such as CELLULITIS (infection of the skin), LYMPHANGITIS " crlf)
(printout t "   (infection of the lymph channels leading to lymph nodes) or OSTEOMYELITIS (infection of the bone)."crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	Apply mild heat and an antibiotic ointment.  " crlf)
(printout t "	Call your doctor if you have a fever or if the red areas or pain get worse or do not go away.." crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

(defrule legpro8no
(legpro8 no)
=>
(printout t ".  Do your calves ache after walking, and is the pain relieved with rest? " crlf)
(bind ?input9(read))
(assert (legpro9 ?input9)))

(defrule legpro9yes
(legpro9 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	The pain may be caused by CLAUDICATION caused by" crlf)
(printout t " PERIPHERAL ARTERIAL DISEASE (PAD), narrowing of the arteries that carry blood to your leg muscles."crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	See your doctor as soon as possible.  " crlf)
(printout t " " crlf)(printout t "Thank you and take care! " crlf)))



(defrule legpro9no
(legpro9 no)
=>
(printout t "	Do you have swelling in both of your feet or lower legs? " crlf)
(bind ?input10(read))
(assert (legpro10 ?input10)))

(defrule legpro10yes
(legpro10 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have EDEMA, a build-up of fluids that may be caused from" crlf)
(printout t " HEART FAILURE, KIDNEY DISEASE or blockage of blood returning to the heart."crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	See your doctor as soon as possible." crlf)

(printout t " " crlf)(printout t "Thank you and take care! " crlf)))


(defrule legpro10no
(legpro10 no)
=>
(printout t "	For more information, please talk to your doctor. If you think the problem is serious, call your doctor right away. " crlf)
)

;the end




(defrule headach_consl
(declare (salience 9970))
(category 5)
=>
(printout t "        patient name address age ect shout go here: by telling them to double this your inforamton? before start!" crlf)
(printout t " **     Doctor Sadik Mussah " crlf)
(printout t " 		Please answer the following questions carefuly" crlf)
(printout t " 		by typing 'yes' OR 'no' only otherwis specified" crlf)
(printout t " 		Do you have a fever, cold symptoms, nausea, vomiting or diarrhea? " crlf)
(bind ?input0 (read))
(assert (symptom1 ?input0)))


(defrule symptom1yes
(symptom1 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	You may have the FLU or a COLD or GASTROENTERITIS, the stomach flu." crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "	Get plenty of rest and drink plenty of fluids. " crlf)
(printout t "	Use over-the-counter medicine to relieve cold and flu symptoms and for diarrhea. " crlf)
(printout t " " crlf)(printout t "Thank you and take care! " crlf)))


(defrule symptom1no
(symptom1 no)
=>
(printout t "	Do you have a severe headache, stiff neck and vomiting, and does normal light hurt your eyes? " crlf)
(bind ?input2 (read))
(assert (symptom2 ?input2)))

(defrule symptom2yes
(symptom2 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	You may have MENINGITIS, a serious infection of the fluid around your brain and spinal cord," crlf)
(printout t "	or INTRACRANIAL HEMORRHAGE, bleeding inside the brain. " crlf)
(printout t "	we highly recommand that you should:  " crlf)
(printout t "             EMERGENCY" crlf)
(printout t "	See your doctor or go to the emergency room right away. " crlf)
(printout t " *******" crlf)
(printout t "	Thank you and take care! " crlf))

(defrule symptom2no
(symptom2 no)
=>
(printout t " 	Have you injured your head or been knocked out recently? " crlf)
(bind ?input3(read))
(assert (symptom3 ?input3)))

(defrule symptom3yes
(symptom3 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "" crlf)
(printout t " 	You may have a CONCUSSION, or a SUBDURAL HEMATOMA" crlf)
(printout t "	a serious condition caused by blood pushing on your brain." crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "*****  URGENT  *******" crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))


(defrule symptom3no
(symptom3 no)
=>
(printout t " 	Do you have numbness, tingling or weakness in the arms and legs? " crlf)
(bind ?input4(read))
(assert (symptom4 ?input4)))

(defrule symptom4yes

(symptom4 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may be having a STROKE." crlf)
(printout t "	q*******  EMERGENCY *********" crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "	See your doctor or go to the emergency room right away." crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))


(defrule symptom4no
(symptom4 no)
=>
(printout t "  	Do you have pressure around your eyes, or do you have yellowish-green nasal discharge with a sore throat and a fever? " crlf)
(bind ?input5(read))
(assert (symptom5 ?input5)))

(defrule symptom5yes

(symptom5 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have a SINUS INFECTION." crlf)
(printout t "*******        *********" crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "	Treat fever, headache and sore throat with over-the-counter medicines, such as ibuprofen or acetaminophen." crlf)
(printout t "	over-the-counter decongestant and saline nasal spray may help relieve other symptoms. See your doctor if the pain becomes severe or your fever persists. " crlf)
(printout t " " crlf)(printout t "Thank you and take care! " crlf)))

(defrule symptom5no
(symptom5 no)
=>
(printout t " 	Do you have mild to moderate pain around your temples and does the pain occur during times of stress or after you have been sitting in one position for a long time? " crlf)
(bind ?input6(read))
(assert (symptom6 ?input6)))



(defrule symptom6yes

(symptom6 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have a TENSION HEADACHE." crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	Use over-the-counter medicine, such as ibuprofen or acetaminophen, to relieve pain. " crlf)
(printout t "	Getting plenty of rest, taking a hot shower and applying ice packs to painful areas may also help." crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

(defrule symptom6no
(symptom6 no)
=>
(printout t "  	Do you have intense, throbbing pain, often with nausea or vomiting, and is the pain sometimes preceded by seeing flashing lights or spots? " crlf)
(bind ?input7(read))
(assert (symptom7 ?input7)))



(defrule symptom7yes
(symptom7 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may suffer from MIGRAINE headaches." crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	See your doctor. He or she can diagnose your problem and may prescribe prescription medicine for migraines. " crlf)
(printout t "	In the meantime, use over-the-counter medicine, " crlf)
(printout t "	such as ibuprofen or acetaminophen, to relieve pain. " crlf)
(printout t " 	You can also rest in a dark room and apply ice packs and gentle pressure to painful areas." crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

(defrule symptom7no
(symptom7 no)
=>
(printout t " 	Do your headaches occur after you read, watch TV or use a computer? " crlf)
(bind ?input8(read))
(assert (symptom8 ?input8)))


(defrule symptom8yes

(symptom8 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	Your headaches may be due to VISION PROBLEMS." crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	See an optometrist or ophthalmologist for an eye exam to see  " crlf)
(printout t "	if you need glasses or contacts to correct your vision." crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

(defrule symptom8no
(symptom8 no)
=>
(printout t ". 	Do you get headaches and do you feel shaky and weak if you miss a meal? " crlf)
(bind ?input9(read))
(assert (symptom9 ?input9)))

(defrule symptom9yes
(symptom9 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	Your headaches may be from HYPOGLYCEMIA, or low blood sugar." crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	See your doctor. You can also try eating six small meals a day  " crlf)
(printout t "	rather than three large meals. This may regulate your blood sugar." crlf)
(printout t " " crlf)(printout t "Thank you and take care! " crlf)))



(defrule symptom9no
(symptom9 no)
=>
(printout t "	Are you trying to cut down on caffeine, alcohol or some other drug? " crlf)
(bind ?input10(read))
(assert (symptom10 ?input10)))

(defrule symptom10yes
(symptom10 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may be suffering from WITHDRAWAL" crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	Use over-the-counter medicine, such as ibuprofen  " crlf)
(printout t " 	or acetaminophen, to relieve pain and discomfort" crlf)
(printout t " 	The symptoms should fade after a few days. Don't restart your habit." crlf)
(printout t " " crlf)(printout t "Thank you and take care! " crlf)))


(defrule symptom10no
(symptom10 no)
=>
(printout t "	For more information, please talk to your doctor. " crlf)
(printout t "	If you think the problem is serious, call your doctor right away." crlf)
)

;the end









(defrule toot-poblems-1
(category  1)
=>
(printout t " **     Doctor Sadik Mussah " crlf)
(printout t " 		Please answer the following questions carefuly" crlf)
(printout t " 		by typing 'yes' OR 'no' only otherwis specified" crlf)
(printout t " 		 Did you have an injury that knocked out a tooth? " crlf)(bind ?input0 (read))
(assert (tootpro0 ?input0)))


(defrule ltoot-poblems1
(tootpro1 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend!   " crlf)
(printout t "	You have TOOTH LOSS.  " crlf)
(printout t "	we highly recommand that:  " crlf)

(printout t "	**** DENTAL EMERGENCY  **** " crlf)
(printout t "	See your dentist or go to the emergency room right away. Keep the tooth moist.  " crlf)
(printout t "	It's best to keep the tooth in your mouth until you get to the dentist or emergency room. The tooth may be saved.  " crlf)

(bind ?input1 (read))
(assert (tootpro1 ?input1))
)


(defrule tootpro1no
(tootpro1 no)
=>
(printout t " Do you have pain that is specific to one tooth?" crlf)
(bind ?input2 (read))
(assert (tootpro2 ?input2)))

(defrule tootpro2no
(tootpro2 no)
=>
(printout t "" crlf)
(printout t "	Do you have redness or swelling around one or more teeth, in your gums or in your face?   " crlf)
(bind ?input5 (read))
(assert (tootpro5 ?input5))))

(defrule toopro2yes
(tootpro2 yes)
=>
(printout t " 	Have you broken or chipped a tooth, or is the tooth loose in its socket? " crlf)
(bind ?input3(read))
(assert (tootpro3 ?input3)))

(defrule legpro3yes
(legpro3 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend!" crlf)
(printout t "" crlf)
(printout t " 	Your pain may be from a FRACTURED, CRACKED or LOOSE TOOTH." crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	 Save any pieces of the tooth, wrap them in a cool, moist cloth and see your dentist as soon as possible. " crlf)

(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))


(defrule tootpro3no
(tootpro3 no)
=>
(printout t " 	 Do you feel pain when you eat cold foods or liquids?" crlf)
(bind ?input4(read))
(assert (tootpro4 ?input4)))

(defrule tootpro4yes

(tootpro4yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! " crlf)
(printout t "	We are sorry but" crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "	Make an appointment to see your dentist. Proper brushing and flossing along with fluoride rinses and  " crlf)
(printout t "    coatings, as suggested by your dentist, may prevent tooth decay." crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))


(defrule tootpro4no
(tootpro4 no)
=>
(printout t "  	Do you have redness or swelling around one or more teeth, in your gums or in your face? " crlf)

(bind ?input5(read))
(assert (tootpro5 ?input5)))


(defrule tootpro5yes

(tootpro5 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have a dental ABSCESS or an INFECTION in a tooth, gums or other tissues." crlf)
(printout t "    ***** URGENT *** " crlf)
 (printout t " See your dentist or doctor right away."crlf)

(printout t "	" crlf)
(printout t " " crlf)(printout t "Thank you and take care! " crlf)))

(defrule tootpro5no
(tootpro5 no)
=>
(printout t " 	 Do you have redness and swelling in large areas of your gums, or is the skin inside your mouth peeling? " crlf)
(bind ?input6(read))
(assert (tootpro6 ?input6)))



(defrule tootpro6yes

(tootpro6 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have an infection such as TRENCH MOUTH, GINGIVITIS or  " crlf)
(printout t "PERIODONTITIS. A rare drug reaction, STEVENS-JOHNSON REACTION, may also cause this" crlf)
(printout t  ""crlf)
(printout t "	****ADVICE****  " crlf)
(printout t "	See your dentist or doctor right away. You may be given antibiotics to stop the infection. " crlf)
(printout t "	Over-the-counter pain relievers, such as acetaminophen, may relieve discomfort. " crlf)
(printout t "Many of these infections can be prevented with proper dental care,"crlf)
(printout t "such as brushing and flossing regularly. " crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

(defrule tootpro6no
(tootpro6 no)
=>
(printout t "  Do you have headaches, pain near your ear, headaches, or do you hear a cracking sound when you bite?  " crlf)

(bind ?input7(read))
(assert (tootpro7 ?input7)))



(defrule tootpro7yes
(tootpro7 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	Your pain may be from TEMPOROMANDIBULAR JOINT (TMJ) syndrome, a condition that affects the jaw." crlf)

(printout t "	we highly recommand that:  " crlf)
(printout t "	Try relaxing your jaw when you are tense or nervous. Stop chewing gum.  " crlf)
(printout t "	Try a mild anti-inflammatory medicine, such as ibuprofen. If you don't get better, see your dentist. " crlf))



(defrule toopro7no
(tootpro7 no)
=>
(printout t " 	For more information, please talk to your doctor or your dentist. If you think the problem is serious,  " crlf)
(printout t " call your doctor or your dentist right away." crlf)
(printout t "	For more information, please talk to your doctor. If you think the problem is serious, call your doctor right away. " crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf))
;the end 

(defrule neg-poblems


(declare (salience 9940))
?v <- (category 3)
=>
(printout t " **     Doctor Sadik Mussah " crlf)
(printout t " 		Please answer the following questions carefuly" crlf)
(printout t " " crlf)
(printout t "       Have you been involved in an accident that involved your neck?" crlf)

(retract ?v)
(assert (negpro1 ?input0)))


(defrule neg-poblems1
(negpro1 no)
=>
(printout t "" crlf)
(printout t "	 Do you have a fever, stiff neck, vomiting, and does light hurt your eyes?" crlf)

(bind ?input5 (read))
(assert (negpro4 ?input4)))


(defrule negpro1no
(negpro1 yes)
=>
(printout t " Are you having pain or numbness down your shoulder, arms or legs?" crlf)
(bind ?input2 (read))
(assert (negpro2 ?input2)))

(defrule negpro2yes
(negpro2 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t " "crlf)
(printout t "					**** URGENT ******* "crlf)
(printout t "	        See your doctor or go to the emergency room right away. If your doctor diagnoses your problem as muscle " crlf)
(printout t "           to relieve pain, and apply heat to the sore area, as recommended by the doctor." crlf)
(printout t " *******" crlf)
(printout t "	Thank you and take care! " crlf))

(defrule negpro2no
(negpro2 no)
=>
(printout t " 	Has pain come on slowly over a few hours after the accident? " crlf)
(bind ?input3(read))
(assert (negpro3 ?input3)))

(defrule negpro3yes
(negpro3 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend!" crlf)
(printout t "" crlf)
(printout t " 	MUSCLE ACHES and SPASMS usually develop minutes to hours after an injury." crlf)
(printout t "	  ****   we highly recommand that:  " crlf)
(printout t "     Use anti-inflammatory medicines, such as ibuprofen and aspirin, to relieve pain and discomfort" crlf)
(printout t "	 and apply heat to the sore area. See your doctor if your pain gets worse or lasts for several days without getting better. " crlf)

(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))


(defrule negpro3no
(negpro3 no)
=>
(printout t " 	Do you have a fever, stiff neck, vomiting, and does light hurt your eyes?" crlf)
(bind ?input4(read))
(assert (negpro4 ?input4)))


(defrule negpro4yes
(neegpro4 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	Your symptoms may be from a simple viral illness or from  " crlf)
(printout t "    MENINGITIS, a more serious infection around the brain. "crlf)
(printout t "  "crlf)
(printout t "      ******* EMERGENCY ******* "crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "	See your doctor or go to the emergency room right away." crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))


(defrule negpro4no
(negpro4 no)
=>
(printout t "  	Do you have throbbing pain or numbness down your shoulder or into your arm? " crlf)

(bind ?input5(read))
(assert (negpro5 ?input5)))


(defrule negpro5yes
(negpro5 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	You may have a HERNIATED CERVICAL DISK, " crlf)
(printout t "   when part of the center portion of the spine presses against a nerve. " crlf)
(printout t "   It may also be from MUSCLE SPASM." crlf)
 (printout t "                   "crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "   See your doctor. Use over-the-counter medicine, such as acetaminophen 	" crlf)
(printout t "	ibuprofen, to relieve pain, and apply heat to the sore area." crlf)
(printout t "	If your symptoms came on suddenly, see your doctor right away." crlf)
(printout t "	" crlf)
(printout t " " crlf)(printout t "Thank you and take care! " crlf)))

(defrule negpro5no
(negpro5 no)
=>
(printout t " 	Do you have a stiff neck or are you having trouble moving your neck without pain? " crlf)
(bind ?input6(read))
(assert (negpro6 ?input6)))



(defrule negpro6yes

(negpro6 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	Your pain is probably from MUSCLE SPASM, but also may be from " crlf)
(printout t "   RHEUMATOID ARTHRITIS, an inflammatory joint disease," crlf)
(printout t  "   FIBROMYALGIA, a chronic condition affecting muscles and tendons."crlf)
(printout t "	 " crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "	Use anti-inflammatory medicines, such as ibuprofen or aspirin, and apply heat to the sore area." crlf)
(printout t "See your doctor if the pain or stiffness gets worse or doesn't get better."crlf)
(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

(defrule negpro6no
(negpro6 no)
=>
(printout t "  Did you have a whiplash-type injury in the past,  " crlf)
(printout t " or do you have pain and/or stiffness every day in your neck,"crlf)
(printout t  "hands, knees, hips or other joints?"crlf)
(bind ?input7(read))
(assert (negpro7 ?input7)))



(defrule negpro7yes
(negpro7 yes)
=>
(printout t "" crlf)
(printout t "	we have diagonised your symptoms my friend! *** name of the person  " crlf)
(printout t "	We are sorry but" crlf)
(printout t " 	Your pain may be from DEGENERATIVE CERVICAL " crlf)
(printout t "   ARTHRITIS, a disorder that affects the bones and cartilage in the neck." crlf)
(printout t "	" crlf)
(printout t "	we highly recommand that:  " crlf)
(printout t "	Use anti-inflammatory medicines, such as ibuprofen or aspirin.   " crlf)
(printout t "	See your doctor if the pain or stiffness gets worse or doesn't get better. " crlf)

(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

(defrule negpro7no
(negpro7 no)
=>
(printout t " 	For more information, please talk to your doctor. " crlf)
(printout t "   If you think the problem is serious, call your doctor right away."crlf)
(printout t "	For more information, please talk to your doctor. If you think the problem is serious, call your doctor right away. " crlf)
)

(printout t " " crlf)(printout t "	Thank you and take care! " crlf)))

