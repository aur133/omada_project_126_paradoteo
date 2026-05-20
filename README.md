README.md

Ομάδα project 126

Τσακαλίδου Μαρία, 09122438, ΣΕΜΦΕ

Χατζηιωάννου Μαρία Αυρηλία, 09122341, ΣΕΜΦΕ

i. Yποθέσεις/παραδοχές που έγιναν κατά την υλοποίηση της βάσης.

1. Ένας ασθενής μπορεί να αξιολογήσει τους γιατρούς που συνταγογράφησαν αγωγή σε αυτόν για κάθε συνταγογράφηση ξεχωριστά, ακόμη και αν δύο συνταγογραφήσεις έγιναν κατά τη διάρκεια της ίδιας νοσηλείας.
2. Ένας διευθυντής μπορεί να διευθύνει ένα μόνο τμήμα.
3. Ένας γιατρός μπορεί να επιβλέπει μέχρι 5 άτομα.
5. Ένας ειδικευμένος ιατρός δεν μπορεί να είναι επόπτης.
7. Υπάρχει μια ιεραρχία στους επόπτες: ένας επόπτης που είναι επιμελητής Β μπορεί να εποπτεύει μόνο έναν ειδικευόμενο, ένας επόπτης Α μπορεί να εποπτεύει έναν επιμελητή Β και έναν ειδικευόμενο, ενώ ένας διευθυντής μπορεί να είναι επόπτης όλων και ο ίδιος δεν διαθέτει κάποιον επόπτη.
8. Ένας εργαζόμενος δεν μπορεί να έχει βάρδια σε δύο τμήματα. Αυτός ο περιορισμός αφορά όλο το προσωπικό και ειδικά τους ιατρούς, οι οποίοι μπορούν να ανήκουν σε πολλά τμήματα, όμως έχουμε κάνει την παραδοχή σε κάθε βάρδια να εργάζονται σε ένα τμήμα.
9. Ένας ασθενής μπορεί να έχει πάνω από μία επαφή για επικοινωνία σε περίπτωση ανάγκης.
10. Αν κάποιος ασθενής παραπέμπεται σε νοσηλεία, τότε η ημέρα που ολοκληρώνεται η διαλογή καταγράφεται και ως ημέρα έναρξης της νοσηλείας του ασθενή.
11. Ένας ασθενής δεν νοσηλεύεται σε δύο νοσηλείες ταυτόχρονα.
12. Ο ασθενής μπορεί να δεχτεί συνταγογράφηση από ιατρό μόνο στην περίπτωση που νοσηλεύεται στο νοσοκομείο.
13. Οι βοηθοί στα χειρουργεία δεν μπορούν να συμμετέχουν σε δύο επεμβάσεις.

    

   

ii. Υποθέσεις που έγιναν σχετικά με τα δεδομένα.
1. Σχετικά με τα δεδομένα απο το link της παραπομπής 7 της εκφώνησης, που αφορά τα εγκεκριμένα φάρμακα, δεν φορτώθηκαν όλα τα δεδομένα στη βάση εξαιτίας του μεγάλου όγκου τους (χρησιμοποιήθηκαν ενδεικτικά 5000 κωδικοί).
2. Οι πληροφορίες του link της παραπομπής 2 (Στατιστική Ταξινόμηση Νόσων και Σχετικών Προβλημάτων Υγείας ICD-10) της εκφώνησης χρησιμοποιήθηκαν για την ταξινόμηση των ICD-10 διαγνώσεων σε κατηγορίες, οι οποίες χρησιμοποιήθηκαν και στην απάντηση του ερωτήματος 14.
3. Θεωρούμε ότι ο χρήστης εισάγει τις βάρδιες με την σειρά και δεν πάει να κάνει αλλαγή ενδίαμεσα.


iii. Yποθέσεις/παραδοχές που έγιναν κατά την απάντηση των ερωτημάτων.
Τα ερωτήματα ερμηνεύτηκαν και απαντήθηκαν ως εξής:
1. Ομαδοποιήσαμε τα δεδομένα ανα τμήμα, ανά έτος, ανά ΚΕΝ και ανά ασφαλιστικό φορέα και για κάθε τέτοια ομάδα καταγράψαμε τα συνολικά έσοδα που αντιστοιχούν στον ΚΕΝ κωδικό , τα συνολικά εσόδα απο πρόσθετη χρέωση και τέλος τα συνολικα έσοδα που προκύπτουν απο το άθροισμα των παραπάνω. 
2. Για μια ειδικότητα γιατρού την οποία επιλέγουμε (εδώ med_specialty='Pathology'), κάνουμε visualise όλους τους γιατρούς με αυτή την ειδικότητα, αν είχαν βάρδια φέτος και μετράμε τα medical procedures όπου το id τους συμπίπτει με το id του main surgeon.
3. Σκοπός να εντόπήσουμε τους ασθενείς  που έχουν νοσηλευτεί περισσότερες απο 3 φορες στο ίδιο τμήμα και το κόστος νοσηλείας τους σε αυτό το τμήμα. Κάνουμε τα απαραίτητα join ετσι ώστε να εντοπίσουμε σε ποιο τμήμα νοσηλεύτηκαν και πόσο τους κόστισε η αντίστοιχη νοσηλεία. Το τελικό αποτελεσμα περιλαμβάνει βασικα στοιχεί του ασθενή, το τμήμα και το συνολικό αριθμό νοσηλειών, υπολογισμένο με την συνάρτησ count().
4. Για έναν γιατρό που επιλέγουμε (εδώ, doctor_id=42) θα βρούμε το average των αξιολογήσεων του απο ασθενείς στους οποίους συνταγογράφησε φάρμακα, και το average της συνολικής εντύπωσης νοσηλείας των ίδιων ασθενών (για τις ίδιες νοσηλείες κατά τις οποίες ο συγκεκριμένος γιατρός τους συνταγογράφησε φάρμακα).
5. Για απλοποίηση του κώδικα, γράψαμε ένα ερώτημα CTE, στο οποίο αρχικά, για κάθε χειρουργό, υπολογίζουμε όλα τα χειρουργεία που έχει εκτελέσει και, με το απαραίτητο φίλτρο, κρατάμε αυτούς που είναι μικρότεροι των 35 ετών. Αυτό γίνεται μέσω του πίνακα medical_procedures (ο οποίος περιλαμβάνει τα IDs των χειρουργών), με INNER JOIN στον πίνακα faculty, που περιλαμβάνει όλα τα στοιχεία του προσωπικού. Έπειτα, επιστρέφουμε το μέγιστο από τον προσωρινό πίνακα που δημιουργήσαμε με το ερώτημα CTE.
6. Θα επιλέξουμε έναν ασθενή και θα βρούμε όλες τις νοσηλείες που τον αφορούν, όλες τις αντίστοιχες διαγνώσεiς απο τις νοσηλείες, το συνολικό κόστος ανά νοσηλεία, και τον μέσο όρο αξιολόγησης του ανά νοσηλεία (τον μέσο όρο όλων των πεδίων στην αξιολόγηση).
7. Υπολογίζουμε για κάθε δραστική ουσία τον αριθμό των ασθενών που έχουν δηλώσει αλλεργία και τον αριθμό φαρμάκων που την περιέχουν. Επομένως με left join (θελουμε να έχουμε κάνει τον υπολογισμό για όλες τις δραστηκές ουσίες) στου πίνακες substance_in_drug  και allergic_to_Substance και ομαδοποίηση  με βάση την δραστική ουσία υπολογίζουμε το ζητούμενο με την συνάρτηση count(distinct...). 
8. Θα επιλέξουμε κάποια μέρα και κάποιο τμήμα και θα επιλέξουμε τα μέλη του faculty δεν είναι καταγεγραμμένα εκείνη την ημέρα και για εκείνο το τμήμα.
9. Για απλοποίηση του κώδικα, γράψαμε ένα ερώτημα CTE, το οποίο περιέχει για κάθε χρόνο το συνολικό διάστημα ημερών που νοσηλεύτηκε ο ασθενής  και με φίλτρο κρατάμε αυτους που έχουν νοσηλευτεί συνολικά τον χρόνο πάνω απο 15 ημέρες. Τελος, με self join του CTE, το τελικο αποτελεσμα περιλαμβάνει τους ασθενείς με τον ίδιο αριθμό ημερών.
10. Βρίσκουμε τις δραστικές ουσίες που δόθηκαν στους ασθενείς μέσω της συνταγογράφησης φαρμάκου, εντοπίζουμε τα ζευγάρια και επιλέγουμε τα 3 που εμφανίζονται συχνότερα.
11. Με subquery βρίσκουμε τον αριθμό που αντιστοιχεί στον ιατρό με τα περισσότερα χειρουργεία, αφαιρούμε το 5 και φιλτράρουμε με βάση αυτόν τον τελικό αριθμό που επιστρέφει το εμφωλευμένο ερώτημα τους ιατρούς που έχουν εκτελέσει λιγότερες επεμβάσεις από αυτόν (<=). Το τελικό αποτέλεσμα είναι κενό διότι είναι λίγα τα δεδομένα μας και αυτο μπορεί να επιβεβαιωθεί και απο το ερώτημα :select mainSurgeon_id,YEAR(procedure_date) AS year from medical_procedures WHERE YEAR(procedure_date)=2026;
13. Για επιλεγμένη εβδομάδα (εδώ 2026-03-09 ως 2026-03-15) θα βρούμε για κάθε τμήμα και για κάθε βαρδια εκείνης της εβδομάδας πόσα μέλη του προσωπικού δουλεύουν, πόσοι είναι γιατροί και πόσοι κάθε ειδικότητας, ποιοί είναι νοσηλευτές και πόσοι κάθε βαθμίδας, πόσοι είναι διοικητικό προσωπικό πόσοι έχουν κάθε συγκεκριμένο ρόλο.
14. Για κάθε ιατρό ζητάμε όλη η ιεραρχία εποπτείας του με ένδειξη το επίπεδο και την βαθμίδα. Επομένως, το τελικό αποτέλεσμα του  recursive CTE εμφανίζει μια στήλη  "ID Αρχικού Γιατρού" (για να κρατάμε απο που ξεκίνησε η αλυσίδα εποπτείας), "ID Επόπτη", "Επίπεδο", "Βαθμίδα Επόπτη".
15. Θα επιλέξουμε τις κατηγορίες (disease_type, πηγή: παραπομπή 2, Στατιστική Ταξινόμηση Νόσων και Σχετικών Προβλημάτων Υγείας ICD-10) που είχαν ίδιο αριθμό εισαγωγών σε 2 (οποιαδήποτε) συνεχόμενα έτη με τουλαχιστον 5 περιστατικά ανά έτος.
16. Ομαδοποιήσαμε τα δεδομένα με βάση το τμήμα και το επίπεδο επείγοντος. Στην συνέχεια, υπολογίσαμε τον μεσο χρόνο αναμονής, το ποσοστό  περιστατικών που οδήγησαν σε νοσηλεία  και τον αριθμό ασθενών που νοσηλεύτηκαν στο συγκεκριμένο τμήμα και βαθμό επείγοντος.
    

iv. Triggers:
Λόγω της κατασκευής των dummy data ορισμένα triggers σταματούσαν το Loading των data στην βάση μας, για πρακτικούς λόγους αφαιρέθηκαν. Παρακάτω δίνουμε αναλυτικά τα trigger που δεν περιέχονται στην βάση, το οποία όμως επιβάλουν συμαντηκά business rules:
1.Έλεγχος για το αν μια κλίνη είναι διαθέσιμη και αν ειναι να ενημερώνεται και το hospital_bed αντίστοιχα:

DELIMITER $$

CREATE TRIGGER hospitalization_check_hospital_beds
BEFORE INSERT ON hospitalization
FOR EACH ROW
BEGIN
	DECLARE new_bed_status VARCHAR(50); 

	SELECT bed_status INTO new_bed_status FROM hospital_bed  WHERE bed_number=NEW.bed_number;
	IF new_bed_status<> 'Available' THEN
	   SIGNAL SQLSTATE '45000'
	   SET MESSAGE_TEXT = 'This bed is not available right now.';
	ELSE
	   UPDATE hospital_bed
		 SET bed_status='Oceupied'
		 WHERE bed_number=NEW.bed_number;
	
	END IF ;
END $$

DELIMITER ;
2.Περιορισμό που εξασφαλίζει οτι ο ασθενης έχει  prescripion μόνο άμα γίνεται hospitalized τότε.


DELIMITER // 
CREATE TRIGGER `valid_date_prescription` BEFORE INSERT ON `prescription` FOR EACH ROW BEGIN IF NOT EXISTS ( SELECT 1 FROM hospitalization h JOIN triage t ON h.triage_id = t.triage_id WHERE t.patient_id = NEW.patient_id AND NEW.start_date BETWEEN h.admission_date AND h.discharge_date ) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Prescriptions can only be given during an active hospitalization range.'; END IF; END //
DELIMITER ;
3.Οι βοηθοί των χειρουργείων θα πρέπει να έχουν βάρδια εκείνη την ημέρα και ώρα.

DELIMITER //
CREATE TRIGGER `valid_assistants_shift` BEFORE INSERT ON `assistants_procedure` FOR EACH ROW BEGIN DECLARE proc_date DATE; DECLARE proc_start_time TIME; DECLARE proc_time_type VARCHAR(20); SELECT procedure_date, start_time_procedure INTO proc_date, proc_start_time FROM medical_procedures WHERE med_procedure_id =NEW.med_procedure_id; SET proc_time_type=CASE WHEN proc_start_time BETWEEN '07:00:00' AND '15:00:00' THEN 'morning' WHEN proc_start_time BETWEEN '15:00:00' AND '23:00:00' THEN 'afternoon' ELSE 'night' END; IF NOT EXISTS (SELECT 1 FROM shift_department_team sdt JOIN shift s ON s.shift_id=sdt.shift_id WHERE sdt.faculty_id = NEW.faculty_id AND s.shift_date=proc_date AND s.shift_type=proc_time_type) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Faculty member does not have a shift during start time of procedure'; END IF; END //
DELIMITER ;
4.Κανένα μέλος προσωπικού δεν μπορει να συμμετεχει σε περισσοτερες από 3 συνεχομενες νυχτερινές βάρδιες.

DELIMITER $$

CREATE TRIGGER check_max_3_night_shifts
BEFORE INSERT ON shift_department_team
FOR EACH ROW
BEGIN
    DECLARE new_shift_date DATE;
    DECLARE new_shift_type VARCHAR(20);
    DECLARE consecutive_nights INT;


    SELECT shift_date, shift_type INTO new_shift_date, new_shift_type
    FROM shift
    WHERE shift_id = NEW.shift_id;


    IF new_shift_type = 'night' THEN
 
 
        SELECT COUNT(*) INTO consecutive_nights
        FROM shift_department_team sdt
        JOIN shift s ON sdt.shift_id = s.shift_id
        WHERE sdt.faculty_id = NEW.faculty_id
          AND s.shift_type = 'night'
          AND s.shift_date BETWEEN DATE_SUB(new_shift_date, INTERVAL 3 DAY)
                               AND DATE_SUB(new_shift_date, INTERVAL 1 DAY);

        
        IF consecutive_nights >= 3 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: Cannot exceed 3 consecutive night shifts.';
        END IF;
    END IF;

END $$

DELIMITER ;

5.Μεταξύ δύο διαδοχικών βαρδιών του ίδιου μέλους προσωπικού πρέπει να μεσολαβεί ελάχιστο διάστημα ανάπαυσης 8 ωρών.
DELIMITER $$

CREATE TRIGGER check_shift_rest_period
BEFORE INSERT ON shift_department_team
FOR EACH ROW
BEGIN
    DECLARE new_date DATE;
    DECLARE new_type VARCHAR(20);
 

    SELECT shift_date, shift_type INTO new_date, new_type
    FROM shift
    WHERE shift_id = NEW.shift_id;

 
    IF new_type = 'afternoon' THEN
 
        IF EXISTS (SELECT 1 FROM shift_department_team sdt JOIN shift s ON sdt.shift_id = s.shift_id
                   WHERE sdt.faculty_id = NEW.faculty_id AND s.shift_date = new_date
                   AND s.shift_type='morning') THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: 0 hours rest with afternoon and morning shift.';
        END IF;
 
    ELSEIF new_type = 'morning' THEN
 
        IF EXISTS (SELECT 1 FROM shift_department_team sdt JOIN shift s ON sdt.shift_id = s.shift_id
                   WHERE sdt.faculty_id = NEW.faculty_id AND s.shift_date =DATE_SUB(new_date, INTERVAL 1 DAY)
                   AND s.shift_type = 'night') THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: 0 hours rest between morning and night shift.';
        END IF;
 

    ELSEIF new_type = 'night' THEN
 
        IF EXISTS (SELECT 1 FROM shift_department_team sdt JOIN shift s ON sdt.shift_id = s.shift_id
                   WHERE sdt.faculty_id = NEW.faculty_id AND s.shift_date = new_date
                   AND s.shift_type = 'afternoon') THEN
           SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: 0 hours rest between night and afternoon shift.';
        END IF;
 
    END IF;

END $$

DELIMITER ;

6.Το σύστημα επιβάλλει τα ακόλουθα μέγιστα όρια βαρδιών ανά μήνα ανά
κατηγορία προσωπικού: Ιατροί 15, Νοσηλευτές 20 και Διοικητικό Προσωπικό 25.
DELIMITER $$

CREATE TRIGGER max_shift_for_faculty
BEFORE INSERT ON shift_department_team
FOR EACH ROW
BEGIN
    DECLARE s_month INT;
    DECLARE s_year INT;
    DECLARE total_shift INT;
    DECLARE f_category INT;

    SELECT MONTH(shift_date), YEAR(shift_date)
    INTO s_month, s_year
    FROM shift
    WHERE shift_id = NEW.shift_id;

    SELECT COUNT(*) INTO total_shift
    FROM shift_department_team sdt
    INNER JOIN shift s ON sdt.shift_id = s.shift_id
    WHERE sdt.faculty_id = NEW.faculty_id
      AND MONTH(s.shift_date) = s_month
      AND YEAR(s.shift_date) = s_year;

    SET f_category = faculty_category(NEW.faculty_id);


    IF f_category = 1 AND total_shift >= 15 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: A doctor cannot work more than 15 shifts in a month';
    ELSEIF f_category = 2 AND total_shift >= 20 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: A nurse cannot work more than 20 shifts in a month.';
    ELSEIF f_category = 3 AND total_shift >= 25 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: An administrator cannot work more than 25 shifts in a month';
    END IF;
END $$

DELIMITER ;
7.Στο medical_procedure να είναι το date μεταξύ admission_date και discharge_date.

DELIMITER //
CREATE TRIGGER `valid_date_procedure` BEFORE INSERT ON `medical\_procedures` FOR EACH ROW BEGIN IF NOT EXISTS(SELECT 1 FROM hospitalization WHERE hospitalization_id=NEW. hospitalization_id AND (NEW.procedure_date<admission_date OR NEW.procedure_date>discharge_date)) THEN SIGNAL SQLSTATE  '45000' SET MESSAGE_TEXT='Medical procedures can only happen during an active hospitalization of the patient'; END IF; END//
DELIMITER
