-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 12:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medigo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_Name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Admin_Password` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_Name`, `Admin_Password`) VALUES
('Admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `admindashboard`
--

CREATE TABLE `admindashboard` (
  `id` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Price` varchar(15) NOT NULL,
  `Payment` varchar(15) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admindashboard`
--

INSERT INTO `admindashboard` (`id`, `Name`, `Price`, `Payment`, `Status`) VALUES
(1, 'Seclo', '25', 'Paid', 'Delivered'),
(2, 'Fodexil', '43', 'Paid', 'Pending'),
(3, 'Merison', '110', 'Pending', 'Pending'),
(4, 'Doxacil', '85', 'Paid', 'Delivered'),
(5, 'Togent', '79', 'Paid', 'On-Process'),
(6, 'Lanso D', '53', 'Paid', 'On-Process'),
(7, 'Xflam 400', '155', 'Pending', 'Pending'),
(8, 'Dexonex', '28', 'Paid', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'admin2', 'admin321');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(15) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `Stock` varchar(50) NOT NULL,
  `Details` text NOT NULL,
  `Price` varchar(20) NOT NULL,
  `img` varchar(32) NOT NULL,
  `rating` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `MName`, `Stock`, `Details`, `Price`, `img`, `rating`) VALUES
(4, 'Bisocor Plus', '77', 'Indication:\r\nManagement of Hypertension\r\n\r\nDosage & Administration:\r\nBisoprolol is an effective treatment of hypertension in once daily doses of 2.5 to 40 mg, while Hydrochlorothiazide is effective in doses of 12.5 to 50 mg. In clinical trials of Bisoprolol/Hydrochlorothiazide combination therapy using Bisoprolol doses of 2.5 to 20 mg and Hydrochlorothiazide doses of 6.25 to 25 mg, the antihypertensive effects increased with increasing doses of either component. Initial Therapy: Antihypertensive therapy may be initiated with the lowest dose of Bisoprolol is an effective treatment of hypertension in once daily doses of 2.5 to 40 mg, while Hydrochlorothiazide is effective in doses of 12.5 to 50 mg. In clinical trials of BisoShow more \r\n\r\n\r\nPreparation:\r\nBisocor™ Plus 2.5/6.25 tablet: Each box contains 30 tablets in blister pack.\r\nBisocor™ Plus 5/6.25 tablet: Each box contains 30 tablets in blister pack.\r\n', '55', 'products/Bisocor Plus-01.jpg', '4.4'),
(9, 'Cilosta', '34', 'Indication:\r\nCilosta® is indicated for the reduction of symptoms of intermittent claudication, as indicated by an increased walking distance.\r\n\r\nDosage & Administration:\r\nThe recommended dosage of Cilosta® is 100 mg bid, taken at least half an hour before or two hours after breakfast and dinner. A dose of 50 mg bid should be considered during coadministration of Ketoconazole, Itraconazole, Erythromycin, and Diltiazem.\r\n\r\nPreparation:\r\nCilosta®: Each box contains 30 tablets in blister pack\r\n\r\n', '51', 'products/Cilosta-01.jpg', '4.1'),
(10, 'Ciprocin 500', '88', 'Indication:\r\nUrinary tract infections, lower respiratory tract infections, skin and soft tissue infections, bone and joint infections, G.I. infections, uncomplicated gonorrhoea, Ciprocin® 750 tablet is specially indicated for the treatment of pseudomonal infections of lower respiratory tract; severe infections particularly due to pseudomonas, staphylococcus and streptococci. Ciprocin® 750 is also indicated in surgical prophylaxis.\r\n\r\nDosage & Administration:\r\nUrinary Tract Infection : Acute Uncomplicated-100 mg or 250 mg b.i.d. 3 Days, Mild/Moderate and Severe/Complicated-500 mg b.i.d. 7 to 14 Days or XR 1 gm once daily for 7 to 14 days. Severe/Complicated 750 mg twice daily 7 to 14 Days. Lower Respiratory Tract Infection : Mild/Moderate 500 mg b.i.d. or XR 1 gm once daily 7 to 14 Days, Severe/Complicated 750 mg b.i.d 7 to 14 Days. Acute Sinusitis : Mild/Moderate 500 mg b.i.d. or XR 1 gm once daily 10 Days. Infectious Diarrhea : Mild/Moderate/Severe 500 mg b.i.d. or XR 1 gm once daily 5 to 7 Days. Typhoid Fever : Mild/Moderate 500 mg b.i.d. or XR 1 gm once daily 10 Days. Pediatric Dosage: 10 mg/kg to 2Show more \r\n', '21', 'products/Ciprocin 500-01.jpg', '4.4'),
(13, 'Doxacil', '34', 'Indication:\r\nIt is indicated for the treatment of Acne, Rosacea & many other infectious diseases.\r\n\r\nDosage & Administration:\r\nAdults: Two capsules at a time or one capsule every 12 hours for the first day followed by one capsule per day. The dosage may be doubled on severity of the infection.\r\nChildren: Over 8 years or weighing 45 Kg or less: 4.4 mg/Kg on the first day followed by 2.2 mg/Kg daily.\r\n\r\nPreparation:\r\nDoxacil® capsule: Box containing 100’s capsules in blister pack.\r\n', '34', 'products/Doxacil-01.jpg', '4.5');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Md Tanvir Alam ', 'rgffhf@gmail.com', 'illness', 'im sick and i cant move my body need some medicine. Any suggessions?'),
(2, 'Jadid', 'jadid123@gmail.com', 'side effect', 'My medicine herming me'),
(3, 'Atef', 'optimus108683@gmail.com', 'Cough', 'I have a bad cough. It started few days ago and its not curing. What should i do now?'),
(5, 'Rahat', 'ainssama@gmail.com', 'Disease', 'My back hurts so i cant sit on my chair. What do i do now if i sit it hurts if i not it is also hurts.');

-- --------------------------------------------------------

--
-- Table structure for table `home1`
--

CREATE TABLE `home1` (
  `id` int(15) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `Stock` varchar(50) NOT NULL,
  `Details` text NOT NULL,
  `Price` varchar(20) NOT NULL,
  `img` varchar(32) NOT NULL,
  `rating` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home1`
--

INSERT INTO `home1` (`id`, `MName`, `Stock`, `Details`, `Price`, `img`, `rating`) VALUES
(1, 'Aclitol', '100', 'Indication:\nIt is indicated for the maintenance treatment of patients with chronic obstructive pulm', '25', 'products/Aclitol.jpg', '4.5'),
(2, 'Antiva', '50', 'Indication:\r\nAntiva® is indicated for the treatment of chronic hepatitis B in adults with evidence o', '17', 'products/Antiva.jpg', '4.7'),
(3, 'Barif 40', '45', 'Indication:\r\nBarifTM is indicated for the chronic management of hyperuricemia in patients with gout. BarifTM is not recommended for the treatment of asymptomatic hyperuricemia.\r\n\r\nDosage & Administration:\r\nBarifTM is recommended at 40 mg or 80 mg once daily. The recommended starting dose of Barif is 40 mg once daily. For patients who do not achieve a serum uric acid less than 6 mg /dL after 2 weeks with 40 mg, BarifTM 80 mg is recommended.\r\n\r\nBarifTM can be administered without regard to food or antacid use. No dose adjustment is necessary when administering Febuxostat to patients with mild to moderate renal or hepatic impairment.\r\n\r\nPreparation:\r\nBarifTM: Each box contains 30 tablets.', '34', 'products/Barif 40.jpg', '4.3'),
(4, 'Bisocor Plus', '77', 'Indication:\r\nManagement of Hypertension\r\n\r\nDosage & Administration:\r\nBisoprolol is an effective treatment of hypertension in once daily doses of 2.5 to 40 mg, while Hydrochlorothiazide is effective in doses of 12.5 to 50 mg. In clinical trials of Bisoprolol/Hydrochlorothiazide combination therapy using Bisoprolol doses of 2.5 to 20 mg and Hydrochlorothiazide doses of 6.25 to 25 mg, the antihypertensive effects increased with increasing doses of either component. Initial Therapy: Antihypertensive therapy may be initiated with the lowest dose of Bisoprolol is an effective treatment of hypertension in once daily doses of 2.5 to 40 mg, while Hydrochlorothiazide is effective in doses of 12.5 to 50 mg. In clinical trials of BisoShow more \r\n\r\n\r\nPreparation:\r\nBisocor™ Plus 2.5/6.25 tablet: Each box contains 30 tablets in blister pack.\r\nBisocor™ Plus 5/6.25 tablet: Each box contains 30 tablets in blister pack.\r\n', '55', 'products/Bisocor Plus-01.jpg', '4.4'),
(5, 'Caberol', '55', 'Indication:\r\nit is indicated for the treatment of hyperprolactinemic disorders, either idiopathic or due to pituitary adenomas. It is used to stop breast milk production (lactation) soon after childbirth, stillbirth, abortion or miscarriage. It can also be used to treat other conditions caused by hormonal disturbance which can result in high levels of prolactin being produced. This includes high levels of Prolactin caused by tumours of the pituitary gland in both men and women.\r\n\r\nDosage & Administration:\r\n- The recommended dose of Cabergoline tablet for initiation of therapy is 0.25 mg (1/2 of Caberol 0.5 mg tablet*) twice a week. Dosage may be increased by 0.25 mg twice weekly up to a dosage of 1 mg twice a week. (Dosage increases should not occur more rapidly than every 4 weeks) - After a normal serum prolactin level has been maintained for 6 months, Cabergoline may be discontinued. - To prevent milk production (lactation): 1 mg (two 0.5 mg tablets) on the first day after delivery. - To stop lactation once have started to breastfeed: 0.25 mg (1/2 of Caberol 0.5 mg tablet*) every 12 hours for two days. - In other conditions: initially one 0.5 mg tablet (tShow more \r\n\r\n\r\nPreparation:\r\nEach box contains 6’s tablets (2 Tablets are provided in Alu-PVC blister. This blister is enclosed with an Aluminium sachet (along with a silica gel bag). 3 sachets (with total 6 tablets) are present in a box.\r\n', '67', 'products/Caberol-01.jpg', '4.3'),
(6, 'Calbo 500', '57', 'Indication:\r\nFor the treatment or prevention of calcium depletion.\r\nDosage & Administration:\r\nCalbo® (500-1500 mg calcium) daily is recommended.\r\nPreparation:\r\nCalbo® 500: Box containing 10 x 10 tablets in blister pack.\r\n', '36', 'products/Calbo 500-01.jpg', '4.9'),
(7, 'Camlodin 5', '67', 'Indication:\r\nHypertension, stable angina, vasospastic angina.\r\n\r\nDosage & Administration:\r\n5-10 mg once daily.\r\n\r\nPreparation:\r\nCamlodin® 5 tablet : Box containing 5 x 6 tablets in blister pack.', '41', 'products/Camlodin 5-01.jpg', '4.2'),
(8, 'Camlodin Plus 25', '55', 'Indication:\r\nHypertension not controlled by monotherapy, Patients with angina pectoris & hypertension as co-existing diseases, Post MI, Refractory angina pectoris where nitrate therapy has failed.\r\n\r\nDosage & Administration:\r\nInitiated with a single dose of Amlodipine 5 mg + Atenolol 50 mg. Depending upon the therapeutic response, titration of the dosage is recommended. In elderly patients, it is advisable to initiate the therapy with Amlodipine 5 mg + Atenolol 25 mg tablet.\r\n\r\nPreparation:\r\nCamlodin® Plus 25: Each box contains 30 tablets in blister pack.\r\nCamlodin® Plus: Each box contains 50 tablets in blister pack.', '33', 'products/Camlodin Plus 25-01.jpg', '4.7');

-- --------------------------------------------------------

--
-- Table structure for table `home2`
--

CREATE TABLE `home2` (
  `id` int(15) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `Stock` varchar(50) NOT NULL,
  `Details` text NOT NULL,
  `Price` varchar(20) NOT NULL,
  `img` varchar(32) NOT NULL,
  `rating` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home2`
--

INSERT INTO `home2` (`id`, `MName`, `Stock`, `Details`, `Price`, `img`, `rating`) VALUES
(9, 'Cilosta', '34', 'Indication:\r\nCilosta® is indicated for the reduction of symptoms of intermittent claudication, as indicated by an increased walking distance.\r\n\r\nDosage & Administration:\r\nThe recommended dosage of Cilosta® is 100 mg bid, taken at least half an hour before or two hours after breakfast and dinner. A dose of 50 mg bid should be considered during coadministration of Ketoconazole, Itraconazole, Erythromycin, and Diltiazem.\r\n\r\nPreparation:\r\nCilosta®: Each box contains 30 tablets in blister pack\r\n\r\n', '51', 'products/Cilosta-01.jpg', '4.1'),
(10, 'Ciprocin 500', '88', 'Indication:\r\nUrinary tract infections, lower respiratory tract infections, skin and soft tissue infections, bone and joint infections, G.I. infections, uncomplicated gonorrhoea, Ciprocin® 750 tablet is specially indicated for the treatment of pseudomonal infections of lower respiratory tract; severe infections particularly due to pseudomonas, staphylococcus and streptococci. Ciprocin® 750 is also indicated in surgical prophylaxis.\r\n\r\nDosage & Administration:\r\nUrinary Tract Infection : Acute Uncomplicated-100 mg or 250 mg b.i.d. 3 Days, Mild/Moderate and Severe/Complicated-500 mg b.i.d. 7 to 14 Days or XR 1 gm once daily for 7 to 14 days. Severe/Complicated 750 mg twice daily 7 to 14 Days. Lower Respiratory Tract Infection : Mild/Moderate 500 mg b.i.d. or XR 1 gm once daily 7 to 14 Days, Severe/Complicated 750 mg b.i.d 7 to 14 Days. Acute Sinusitis : Mild/Moderate 500 mg b.i.d. or XR 1 gm once daily 10 Days. Infectious Diarrhea : Mild/Moderate/Severe 500 mg b.i.d. or XR 1 gm once daily 5 to 7 Days. Typhoid Fever : Mild/Moderate 500 mg b.i.d. or XR 1 gm once daily 10 Days. Pediatric Dosage: 10 mg/kg to 2Show more \r\n', '21', 'products/Ciprocin 500-01.jpg', '4.4'),
(11, 'Dexonex', '77', 'Indication:\r\nVarious types of dermatological disorders & allergic Disorders; Severe Respiratory Disorders like - severe Bronchial Asthma, non-specific chronic Obstructive lung disease; Primary / secondary Adrenocortical insufficiency; Ocular inflammatory conditions which are unresponsive to topical corticosteroids; Adjunctive therapy for various rheumatic disorders; other indications where glucocorticoid therapy is required.\r\n', '15', 'products/Dexonex-01.jpg', '4.5'),
(12, 'Diliner DR 60', '55', 'Indication:\r\nDepression, Generalized anxiety disorder, Diabetic Peripheral Neuropathic Pain, Fibromyalgia and chronic musculoskeletal pain.\r\n\r\nDosage & Administration:\r\nDepression: Initially, 40-60 mg/day. Anxiety: Initially, 30-60 mg/day. Diabetic neuropathy: Initially, 60 mg/day. Fibromyalgia & chronic muscle pain: Initially, 40-60 mg/day.\r\n\r\nPreparation:\r\nDiliner® DR 20 Capsule: Each box contains 30 Delayed Release Capsules in blister pack.\r\nDiliner® DR 60 Capsule: Each box contains 18 Delayed Release Capsules in blister pack.', '17', 'products/Diliner DR 60-01.jpg', '4.7'),
(13, 'Doxacil', '34', 'Indication:\r\nIt is indicated for the treatment of Acne, Rosacea & many other infectious diseases.\r\n\r\nDosage & Administration:\r\nAdults: Two capsules at a time or one capsule every 12 hours for the first day followed by one capsule per day. The dosage may be doubled on severity of the infection.\r\nChildren: Over 8 years or weighing 45 Kg or less: 4.4 mg/Kg on the first day followed by 2.2 mg/Kg daily.\r\n\r\nPreparation:\r\nDoxacil® capsule: Box containing 100’s capsules in blister pack.\r\n', '34', 'products/Doxacil-01.jpg', '4.5'),
(14, 'Favinil', '77', 'Indication:\r\nTreatment of novel or re-emerging pandemic influenza virus infections\r\n\r\nDosage & Administration:\r\n1 The usual adult dosage is 1600 mg of Favipiravir administered orally twice daily on Day-1 followed by 600 mg orally twice daily from Day 2 to Day 5.The total treatment duration should be 5 days.\r\n\r\nPreparation:\r\nEach box contains 10 tablets in blister pack.', '12', 'products/Favinil-01.jpg', '4.7'),
(15, 'Fentizol', '45', 'Indication:\r\nFentizolTM VT 600 is indicated for:\r\n\r\n• Genital candidiasis (vulvovaginitis, colpitis, infectious Fluor)\r\n\r\n• Trichomonasis\r\n\r\n• Vaginal infections sustained by mixed forms of Trichomonas vaginalis and Candida albicans.\r\n\r\nDosage & Administration:\r\nFentizolTM VT 600 is used in Trichomonas or mixed (Trichomonas and Candida albicans) vaginal infections:', '19', 'products/Fentizol-01.jpg', '4.4'),
(16, 'Flexi SR', '91', 'Indication:\r\nOsteoarthritis, rheumatoid arthritis and ankylosing spondylitis\r\n\r\nDosage & Administration:\r\nFlexi: 100 mg twice daily; Flexi SR: 200 mg once daily.\r\n\r\nPreparation:\r\nFlexi Tablet: Box containing 10 x 10 tablets in Alu-Alu blister pack; \r\nFlexi SR Tablet : Box containing 3 x 10 tablets in Alu-PVDC blister pack.', '25', 'products/Flexi SR-01.jpg', '4.6');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(15) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `Stock` varchar(50) NOT NULL,
  `Details` text NOT NULL,
  `Price` varchar(20) NOT NULL,
  `img` varchar(32) NOT NULL,
  `rating` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `MName`, `Stock`, `Details`, `Price`, `img`, `rating`) VALUES
(1, 'Aclitol', '100', 'Indication:\nIt is indicated for the maintenance treatment of patients with chronic obstructive pulm', '25', 'products/Aclitol.jpg', '4.5'),
(2, 'Antiva', '50', 'Indication:\r\nAntiva® is indicated for the treatment of chronic hepatitis B in adults with evidence o', '17', 'products/Antiva.jpg', '4.7'),
(3, 'Barif 40', '45', 'Indication:\r\nBarifTM is indicated for the chronic management of hyperuricemia in patients with gout. BarifTM is not recommended for the treatment of asymptomatic hyperuricemia.\r\n\r\nDosage & Administration:\r\nBarifTM is recommended at 40 mg or 80 mg once daily. The recommended starting dose of Barif is 40 mg once daily. For patients who do not achieve a serum uric acid less than 6 mg /dL after 2 weeks with 40 mg, BarifTM 80 mg is recommended.\r\n\r\nBarifTM can be administered without regard to food or antacid use. No dose adjustment is necessary when administering Febuxostat to patients with mild to moderate renal or hepatic impairment.\r\n\r\nPreparation:\r\nBarifTM: Each box contains 30 tablets.', '34', 'products/Barif 40.jpg', '4.3'),
(4, 'Bisocor Plus', '77', 'Indication:\r\nManagement of Hypertension\r\n\r\nDosage & Administration:\r\nBisoprolol is an effective treatment of hypertension in once daily doses of 2.5 to 40 mg, while Hydrochlorothiazide is effective in doses of 12.5 to 50 mg. In clinical trials of Bisoprolol/Hydrochlorothiazide combination therapy using Bisoprolol doses of 2.5 to 20 mg and Hydrochlorothiazide doses of 6.25 to 25 mg, the antihypertensive effects increased with increasing doses of either component. Initial Therapy: Antihypertensive therapy may be initiated with the lowest dose of Bisoprolol is an effective treatment of hypertension in once daily doses of 2.5 to 40 mg, while Hydrochlorothiazide is effective in doses of 12.5 to 50 mg. In clinical trials of BisoShow more \r\n\r\n\r\nPreparation:\r\nBisocor™ Plus 2.5/6.25 tablet: Each box contains 30 tablets in blister pack.\r\nBisocor™ Plus 5/6.25 tablet: Each box contains 30 tablets in blister pack.\r\n', '55', 'products/Bisocor Plus-01.jpg', '4.4'),
(5, 'Caberol', '55', 'Indication:\r\nit is indicated for the treatment of hyperprolactinemic disorders, either idiopathic or due to pituitary adenomas. It is used to stop breast milk production (lactation) soon after childbirth, stillbirth, abortion or miscarriage. It can also be used to treat other conditions caused by hormonal disturbance which can result in high levels of prolactin being produced. This includes high levels of Prolactin caused by tumours of the pituitary gland in both men and women.\r\n\r\nDosage & Administration:\r\n- The recommended dose of Cabergoline tablet for initiation of therapy is 0.25 mg (1/2 of Caberol 0.5 mg tablet*) twice a week. Dosage may be increased by 0.25 mg twice weekly up to a dosage of 1 mg twice a week. (Dosage increases should not occur more rapidly than every 4 weeks) - After a normal serum prolactin level has been maintained for 6 months, Cabergoline may be discontinued. - To prevent milk production (lactation): 1 mg (two 0.5 mg tablets) on the first day after delivery. - To stop lactation once have started to breastfeed: 0.25 mg (1/2 of Caberol 0.5 mg tablet*) every 12 hours for two days. - In other conditions: initially one 0.5 mg tablet (tShow more \r\n\r\n\r\nPreparation:\r\nEach box contains 6’s tablets (2 Tablets are provided in Alu-PVC blister. This blister is enclosed with an Aluminium sachet (along with a silica gel bag). 3 sachets (with total 6 tablets) are present in a box.\r\n', '67', 'products/Caberol-01.jpg', '4.3'),
(6, 'Calbo 500', '57', 'Indication:\r\nFor the treatment or prevention of calcium depletion.\r\nDosage & Administration:\r\nCalbo® (500-1500 mg calcium) daily is recommended.\r\nPreparation:\r\nCalbo® 500: Box containing 10 x 10 tablets in blister pack.\r\n', '36', 'products/Calbo 500-01.jpg', '4.9'),
(7, 'Camlodin 5', '67', 'Indication:\r\nHypertension, stable angina, vasospastic angina.\r\n\r\nDosage & Administration:\r\n5-10 mg once daily.\r\n\r\nPreparation:\r\nCamlodin® 5 tablet : Box containing 5 x 6 tablets in blister pack.', '41', 'products/Camlodin 5-01.jpg', '4.2'),
(8, 'Camlodin Plus 25', '55', 'Indication:\r\nHypertension not controlled by monotherapy, Patients with angina pectoris & hypertension as co-existing diseases, Post MI, Refractory angina pectoris where nitrate therapy has failed.\r\n\r\nDosage & Administration:\r\nInitiated with a single dose of Amlodipine 5 mg + Atenolol 50 mg. Depending upon the therapeutic response, titration of the dosage is recommended. In elderly patients, it is advisable to initiate the therapy with Amlodipine 5 mg + Atenolol 25 mg tablet.\r\n\r\nPreparation:\r\nCamlodin® Plus 25: Each box contains 30 tablets in blister pack.\r\nCamlodin® Plus: Each box contains 50 tablets in blister pack.', '33', 'products/Camlodin Plus 25-01.jpg', '4.7'),
(9, 'Cilosta', '34', 'Indication:\r\nCilosta® is indicated for the reduction of symptoms of intermittent claudication, as indicated by an increased walking distance.\r\n\r\nDosage & Administration:\r\nThe recommended dosage of Cilosta® is 100 mg bid, taken at least half an hour before or two hours after breakfast and dinner. A dose of 50 mg bid should be considered during coadministration of Ketoconazole, Itraconazole, Erythromycin, and Diltiazem.\r\n\r\nPreparation:\r\nCilosta®: Each box contains 30 tablets in blister pack\r\n\r\n', '51', 'products/Cilosta-01.jpg', '4.1'),
(10, 'Ciprocin 500', '88', 'Indication:\r\nUrinary tract infections, lower respiratory tract infections, skin and soft tissue infections, bone and joint infections, G.I. infections, uncomplicated gonorrhoea, Ciprocin® 750 tablet is specially indicated for the treatment of pseudomonal infections of lower respiratory tract; severe infections particularly due to pseudomonas, staphylococcus and streptococci. Ciprocin® 750 is also indicated in surgical prophylaxis.\r\n\r\nDosage & Administration:\r\nUrinary Tract Infection : Acute Uncomplicated-100 mg or 250 mg b.i.d. 3 Days, Mild/Moderate and Severe/Complicated-500 mg b.i.d. 7 to 14 Days or XR 1 gm once daily for 7 to 14 days. Severe/Complicated 750 mg twice daily 7 to 14 Days. Lower Respiratory Tract Infection : Mild/Moderate 500 mg b.i.d. or XR 1 gm once daily 7 to 14 Days, Severe/Complicated 750 mg b.i.d 7 to 14 Days. Acute Sinusitis : Mild/Moderate 500 mg b.i.d. or XR 1 gm once daily 10 Days. Infectious Diarrhea : Mild/Moderate/Severe 500 mg b.i.d. or XR 1 gm once daily 5 to 7 Days. Typhoid Fever : Mild/Moderate 500 mg b.i.d. or XR 1 gm once daily 10 Days. Pediatric Dosage: 10 mg/kg to 2Show more \r\n', '21', 'products/Ciprocin 500-01.jpg', '4.4'),
(11, 'Dexonex', '77', 'Indication:\r\nVarious types of dermatological disorders & allergic Disorders; Severe Respiratory Disorders like - severe Bronchial Asthma, non-specific chronic Obstructive lung disease; Primary / secondary Adrenocortical insufficiency; Ocular inflammatory conditions which are unresponsive to topical corticosteroids; Adjunctive therapy for various rheumatic disorders; other indications where glucocorticoid therapy is required.\r\n', '15', 'products/Dexonex-01.jpg', '4.5'),
(12, 'Diliner DR 60', '55', 'Indication:\r\nDepression, Generalized anxiety disorder, Diabetic Peripheral Neuropathic Pain, Fibromyalgia and chronic musculoskeletal pain.\r\n\r\nDosage & Administration:\r\nDepression: Initially, 40-60 mg/day. Anxiety: Initially, 30-60 mg/day. Diabetic neuropathy: Initially, 60 mg/day. Fibromyalgia & chronic muscle pain: Initially, 40-60 mg/day.\r\n\r\nPreparation:\r\nDiliner® DR 20 Capsule: Each box contains 30 Delayed Release Capsules in blister pack.\r\nDiliner® DR 60 Capsule: Each box contains 18 Delayed Release Capsules in blister pack.', '17', 'products/Diliner DR 60-01.jpg', '4.7'),
(13, 'Doxacil', '34', 'Indication:\r\nIt is indicated for the treatment of Acne, Rosacea & many other infectious diseases.\r\n\r\nDosage & Administration:\r\nAdults: Two capsules at a time or one capsule every 12 hours for the first day followed by one capsule per day. The dosage may be doubled on severity of the infection.\r\nChildren: Over 8 years or weighing 45 Kg or less: 4.4 mg/Kg on the first day followed by 2.2 mg/Kg daily.\r\n\r\nPreparation:\r\nDoxacil® capsule: Box containing 100’s capsules in blister pack.\r\n', '34', 'products/Doxacil-01.jpg', '4.5'),
(14, 'Favinil', '77', 'Indication:\r\nTreatment of novel or re-emerging pandemic influenza virus infections\r\n\r\nDosage & Administration:\r\n1 The usual adult dosage is 1600 mg of Favipiravir administered orally twice daily on Day-1 followed by 600 mg orally twice daily from Day 2 to Day 5.The total treatment duration should be 5 days.\r\n\r\nPreparation:\r\nEach box contains 10 tablets in blister pack.', '12', 'products/Favinil-01.jpg', '4.7'),
(15, 'Fentizol', '45', 'Indication:\r\nFentizolTM VT 600 is indicated for:\r\n\r\n• Genital candidiasis (vulvovaginitis, colpitis, infectious Fluor)\r\n\r\n• Trichomonasis\r\n\r\n• Vaginal infections sustained by mixed forms of Trichomonas vaginalis and Candida albicans.\r\n\r\nDosage & Administration:\r\nFentizolTM VT 600 is used in Trichomonas or mixed (Trichomonas and Candida albicans) vaginal infections:', '19', 'products/Fentizol-01.jpg', '4.4'),
(16, 'Flexi SR', '91', 'Indication:\r\nOsteoarthritis, rheumatoid arthritis and ankylosing spondylitis\r\n\r\nDosage & Administration:\r\nFlexi: 100 mg twice daily; Flexi SR: 200 mg once daily.\r\n\r\nPreparation:\r\nFlexi Tablet: Box containing 10 x 10 tablets in Alu-Alu blister pack; \r\nFlexi SR Tablet : Box containing 3 x 10 tablets in Alu-PVDC blister pack.', '25', 'products/Flexi SR-01.jpg', '4.6');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `MName` varchar(50) NOT NULL,
  `MPrice` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `UserID` int(12) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`UserID`, `username`, `email`, `pass`) VALUES
(6, 'Tanvir', 'Tanvir@gmail.com', '1234'),
(7, 'Optimus', 'optimus123@gmail.com', 'Optimus123');

-- --------------------------------------------------------

--
-- Table structure for table `sporders`
--

CREATE TABLE `sporders` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `mediname` varchar(32) NOT NULL,
  `address` varchar(32) NOT NULL,
  `number` int(15) NOT NULL,
  `mdetail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sporders`
--

INSERT INTO `sporders` (`id`, `name`, `email`, `mediname`, `address`, `number`, `mdetail`) VALUES
(1, 'Md. Atef Abrar Bhuyian', 'atefabrar07@gmail.com', 'NAPA', '2111 no, kolatoli Dhaka', 1512498745, 'for the reduction of symptoms of intermittent claudication, as indicated by an increased walking distance'),
(2, 'Asad', 'asad@gmail.com', 'Seclo 20mg', '21 sadar road, Chittagong', 15120000, 'For the treatment or prevention of calcium depletion.'),
(3, 'Samad', 'samad@gmail.com', 'Zox 500', 'Boalkhali,Chittagong', 2147483647, 'Depression, Generalized anxiety disorder, Diabetic Peripheral Neuropathic Pain, Fibromyalgia and chronic musculoskeletal pain.'),
(4, 'Tanvir Alam Jadid', 'Tanvir@gmail.com', 'Napa', 'Pakkar matha, ctg', 1790178930, 'It is a medicine of fever'),
(5, 'Sopnil', 'rgffhf@gmail.com', 'Seclo', 'GEC,Chittagong', 1785845658, 'It is for my gastric problem.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindashboard`
--
ALTER TABLE `admindashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home1`
--
ALTER TABLE `home1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home2`
--
ALTER TABLE `home2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `sporders`
--
ALTER TABLE `sporders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindashboard`
--
ALTER TABLE `admindashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home1`
--
ALTER TABLE `home1`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `home2`
--
ALTER TABLE `home2`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `UserID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sporders`
--
ALTER TABLE `sporders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
