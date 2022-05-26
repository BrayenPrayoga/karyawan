/*
 Navicat Premium Data Transfer

 Source Server         : localhost pgsql
 Source Server Type    : PostgreSQL
 Source Server Version : 110010
 Source Host           : localhost:5432
 Source Catalog        : seleksi_karyawan
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110010
 File Encoding         : 65001

 Date: 26/05/2022 16:36:56
*/


-- ----------------------------
-- Table structure for deskripsi_tipe_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."deskripsi_tipe_kepribadian";
CREATE TABLE "public"."deskripsi_tipe_kepribadian" (
  "id" serial NOT NULL,
  "tipe_kepribadian_id" int8 NOT NULL,
  "deskripsi" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of deskripsi_tipe_kepribadian
-- ----------------------------
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (1, 1, 'Serius, tenang, & damai.', '2022-03-26 15:27:05', '2022-03-26 15:27:06');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (2, 1, 'Senang pada fakta, logis, obyektif, praktis & realistis.', '2022-03-26 15:28:02', '2022-03-26 15:28:02');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (3, 1, 'Task oriented, tekun, teratur, menepati janji, dapat diandalkan & bertanggung jawab.', '2022-03-29 21:10:46', '2022-03-29 21:10:47');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (4, 1, 'Pendengar yang baik, setia, hanya mau berbagi dengan orang dekat', '2022-03-29 21:11:35', '2022-03-29 21:11:36');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (5, 1, 'Memegang aturan, standar & prosedur dengan teguh', '2022-03-29 21:11:59', '2022-03-29 21:11:59');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (6, 2, 'Penuh pertimbangan, hati-hati, teliti dan akurat.', '2022-03-29 21:12:39', '2022-03-29 21:12:40');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (7, 2, 'Serius, tenang, stabil namun sensitif. ', '2022-03-29 21:13:10', '2022-03-29 21:13:11');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (8, 2, 'Ramah, perhatian pada perasaan & kebutuhan orang lain, setia, kooperatif, pendengar ', '2022-03-29 21:13:27', '2022-03-29 21:13:27');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (9, 2, 'Punya kemampuan mengorganisasi, detail, teliti, sangat bertanggungjawab & bisa ', '2022-03-29 21:13:47', '2022-03-29 21:13:48');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (10, 3, 'Tenang, pendiam, cenderung kaku, dingin, hati-hati, penuh pertimbangan.', '2022-03-29 21:14:41', '2022-03-29 21:14:41');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (11, 3, 'Logis, rasional, kritis, obyektif, mampu mengesampingkan perasaan.', '2022-03-29 21:15:10', '2022-03-29 21:15:10');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (12, 3, 'Mampu menghadapi perubahan mendadak dengan cepat dan tenang. ', '2022-03-29 21:15:56', '2022-03-29 21:15:57');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (13, 3, 'Percaya diri, tegas dan mampu menghadapi perbedaan maupun kritik. ', '2022-03-29 21:16:28', '2022-03-29 21:16:29');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (14, 3, 'Mampu menganalisa, mengorganisir, & mendelegasikan.', '2022-03-29 21:16:53', '2022-03-29 21:16:54');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (15, 3, 'Problem solver yang baik terutama untuk masalah teknis & keadaan mendadak. ', '2022-03-29 21:17:13', '2022-03-29 21:17:14');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (16, 4, 'Berpikiran simpel & praktis, fleksibel, sensitif, ramah, tidak menonjolkan diri, rendah hati ', '2022-03-29 21:17:54', '2022-03-29 21:17:54');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (17, 4, 'Menghindari konflik, tidak memaksakan pendapat atau nilai-nilainya pada orang lain.', '2022-03-29 21:18:11', '2022-03-29 21:18:12');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (18, 4, 'Biasanya tidak mau memimpin tetapi menjadi pengikut dan pelaksana yang setia. ', '2022-03-29 21:18:31', '2022-03-29 21:18:33');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (19, 4, 'Seringkali santai menyelesaikan sesuatu, karena sangat menikmati apa yang terjadi saat ', '2022-03-29 21:18:54', '2022-03-29 21:18:54');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (20, 4, 'Menunjukkan perhatian lebih banyak melalui tindakan dibandingkan kata-kata. ', '2022-03-29 21:19:15', '2022-03-29 21:19:16');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (21, 5, 'Perhatian, empati, sensitif & berkomitmen terhadap sebuah hubungan.', '2022-03-29 21:19:50', '2022-03-29 21:19:51');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (22, 5, 'Sukses karena ketekunan, originalitas dan keinginan kuat untuk melakukan apa saja yang ', '2022-03-29 21:20:12', '2022-03-29 21:20:13');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (23, 5, 'Idealis, perfeksionis, memegang teguh prinsip.', '2022-03-29 21:20:32', '2022-03-29 21:20:33');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (24, 5, 'Visioner, penuh ide, kreatif, suka merenung dan inspiring. ', '2022-03-29 21:20:52', '2022-03-29 21:20:53');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (25, 5, 'Biasanya diikuti dan dihormati karena kejelasan visi serta dedikasi pada hal-hal baik. ', '2022-03-29 21:21:10', '2022-03-29 21:21:11');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (26, 6, 'Visioner, punya perencanaan praktis, & biasanya memiliki ide-ide original serta dorongan ', '2022-03-29 21:22:47', '2022-03-29 21:22:48');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (27, 6, 'Mandiri dan percaya diri. ', '2022-03-29 21:23:19', '2022-03-29 21:23:19');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (28, 6, 'Punya kemampuan analisa yang bagus serta menyederhanakan sesuatu yang rumit dan ', '2022-03-29 21:23:44', '2022-03-29 21:23:45');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (29, 6, 'Skeptis, kritis, logis, menentukan (determinatif) dan kadang keras kepala.', '2022-03-29 21:24:17', '2022-03-29 21:24:17');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (30, 6, 'Punya keinginan untuk berkembang serta selalu ingin lebih maju dari orang lain. ', '2022-03-29 21:24:36', '2022-03-29 21:24:37');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (31, 6, 'Kritik & konflik tidak menjadi masalah berarti. ', '2022-03-29 21:24:54', '2022-03-29 21:24:55');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (32, 7, 'Sangat perhatian dan peka dengan perasaan orang lain.', '2022-03-29 21:27:09', '2022-03-29 21:27:10');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (33, 7, 'Penuh dengan antusiasme dan kesetiaan, tapi biasanya hanya untuk orang dekat. ', '2022-03-29 21:27:33', '2022-03-29 21:27:33');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (34, 7, 'Diam dan menahan diri. Lebih suka bekerja sendiri. ', '2022-03-29 21:28:01', '2022-03-29 21:28:02');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (35, 7, 'Cenderung kritis, skeptis, mudah curiga dan pesimis. ', '2022-03-29 21:28:53', '2022-03-29 21:28:54');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (36, 7, 'Tidak suka memimpin dan bisa menjadi pengikut yang tidak banyak menuntut. ', '2022-03-29 21:29:19', '2022-03-29 21:29:20');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (37, 7, 'Cenderung memiliki minat yang jelas. Membutuhkan karir dimana minatnya bisa berkembang dan bermanfaat. Jika menemukan sesuatu yang menarik minatnya, ia akan sangat serius dan antusias menekuninya. ', '2022-03-29 21:29:44', '2022-03-29 21:29:45');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (38, 8, 'Sangat menghargai intelektualitas dan pengetahuan. Menikmati hal-hal teoritis dan ilmiah. ', '2022-03-29 21:30:47', '2022-03-29 21:30:48');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (39, 8, 'Diam dan menahan diri. Lebih suka bekerja sendiri.', '2022-03-29 21:31:37', '2022-03-29 21:31:38');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (40, 8, 'Cenderung kritis, skeptis, mudah curiga dan pesimis.', '2022-03-29 21:32:07', '2022-03-29 21:32:07');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (41, 8, 'Tidak suka memimpin dan bisa menjadi pengikut yang tidak banyak menuntut. ', '2022-03-29 21:32:31', '2022-03-29 21:32:32');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (42, 8, 'Cenderung memiliki minat yang jelas. Membutuhkan karir dimana minatnya bisa berkembang dan bermanfaat. Jika menemukan sesuatu yang menarik minatnya, ia akan sangat serius dan antusias menekuninya.', '2022-03-29 21:32:57', '2022-03-29 21:32:57');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (43, 9, 'Spontan, Aktif, Enerjik, Cekatan, Cepat, Sigap, Antusias, Fun dan penuh variasi.', '2022-03-29 21:33:37', '2022-03-29 21:33:38');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (44, 9, 'Komunikator, asertif, to the point, ceplas-ceplos, berkarisma, punya interpersonal skill yang ', '2022-03-29 21:33:57', '2022-03-29 21:33:58');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (45, 9, 'Baik dalam pemecahan masalah langsung di tempat. Mampu menghadapi masalah, konflik ', '2022-03-29 21:34:27', '2022-03-29 21:34:28');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (46, 9, 'Cenderung untuk menyukai sesuatu yang mekanistis, kegiatan bersama dan olahraga. ', '2022-03-29 21:34:45', '2022-03-29 21:34:45');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (47, 9, 'Mudah beradaptasi, toleran, pada umumnya konservatif tentang nilai-nilai. Tidak suka ', '2022-03-29 21:35:05', '2022-03-29 21:35:07');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (48, 10, 'Outgoing, easygoing, mudah berteman, bersahabat, sangat sosial, ramah, hangat, & ', '2022-03-29 21:35:41', '2022-03-29 21:35:41');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (49, 10, 'Optimis, ceria, antusias, fun, menghibur, suka menjadi perhatian. ', '2022-03-29 21:36:03', '2022-03-29 21:36:03');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (50, 10, 'Punya interpersonal skill yang baik, murah hati, mudah simpatik dan mengenali perasaan ', '2022-03-29 21:36:28', '2022-03-29 21:36:29');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (51, 10, 'Mengetahui apa yang terjadi di sekelilingnya dan ikut serta dalam kegiatan tersebut.', '2022-03-29 21:36:49', '2022-03-29 21:36:50');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (52, 10, 'Sangat baik dalam keadaan yang membutuhkan common sense, tindakan cepatdan ', '2022-03-29 21:37:07', '2022-03-29 21:37:08');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (53, 11, 'Ramah, hangat, enerjik, optimis, antusias, semangat tinggi, fun. ', '2022-03-29 21:39:02', '2022-03-29 21:39:03');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (54, 11, 'Imaginatif, penuh ide, kreatif, inovatif.', '2022-03-29 21:39:20', '2022-03-29 21:39:21');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (55, 11, 'Mampu beradaptasi dengan beragam situasi dan perubahan.', '2022-03-29 21:39:37', '2022-03-29 21:39:38');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (56, 11, 'Pandai berkomunikasi, senang bersosialisasi & membawa suasana positif.', '2022-03-29 21:39:51', '2022-03-29 21:39:52');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (57, 11, 'Mudah membaca perasaan dan kebutuhan orang lain.', '2022-03-29 21:40:12', '2022-03-29 21:40:13');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (58, 12, 'Gesit, kreatif, inovatif, cerdik, logis, baik dalam banyak ha', '2022-03-29 21:40:54', '2022-03-29 21:40:54');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (59, 12, 'Banyak bicara dan punya kemampuan debat yang baik. Bisa berargumentasi untuk ', '2022-03-29 21:41:18', '2022-03-29 21:41:19');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (60, 12, 'Fleksibel. Punya banyak cara untuk memecahkan masalah dan tantangan. ', '2022-03-29 21:41:42', '2022-03-29 21:41:44');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (61, 12, 'Kurang konsisten. Cenderung untuk melakukan hal baru yang menarik hati setelah ', '2022-03-29 21:42:02', '2022-03-29 21:42:03');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (62, 12, 'Punya keinginan kuat untuk mengembangkan diri.', '2022-03-29 21:42:26', '2022-03-29 21:42:27');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (63, 13, 'Praktis, realistis, berpegang pada fakta, dengan dorongan alamiah untuk bisnis dan ', '2022-03-29 21:42:55', '2022-03-29 21:42:55');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (64, 13, 'Sangat sistematis, procedural dan terencana.', '2022-03-29 21:43:14', '2022-03-29 21:43:14');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (65, 13, 'Disiplin, on time dan pekerja keras.', '2022-03-29 21:43:39', '2022-03-29 21:43:40');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (66, 13, 'Konservatif dan cenderung kaku.', '2022-03-29 21:44:06', '2022-03-29 21:44:06');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (67, 13, 'Tidak tertarik pada subject yang tidak berguna baginya, tapi dapat menyesuaikan diri jika ', '2022-03-29 21:44:24', '2022-03-29 21:44:25');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (68, 13, 'Senang mengorganisir sesuatu. Bisa menjadi administrator yang baik jika mereka ingat ', '2022-03-29 21:44:57', '2022-03-29 21:44:58');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (69, 14, 'Hangat, banyak bicara, populer, dilahirkan untuk bekerjasama, suportif dan anggota ', '2022-03-29 21:45:45', '2022-03-29 21:45:46');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (70, 14, 'Membutuhkan keseimbangan dan baik dalam menciptakan harmoni.', '2022-03-29 21:46:13', '2022-03-29 21:46:13');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (71, 14, 'Selalu melakukan sesuatu yang manis bagi orang lain. Kerja dengan baik dalam situasi ', '2022-03-29 21:46:35', '2022-03-29 21:46:36');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (72, 14, 'Santai, easy going, sederhana, tidak berfikir panjang.', '2022-03-29 21:46:52', '2022-03-29 21:46:53');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (73, 14, 'Teliti dan rajin merawat apa yang ia miliki.', '2022-03-29 21:47:12', '2022-03-29 21:47:13');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (74, 15, 'Kreatif, imajinatif, peka, sensitive, loyal.', '2022-03-29 21:47:47', '2022-03-29 21:47:47');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (75, 15, 'Pada umumnya peduli pada apa kata orang atau apa yang orang lain inginkan dan ', '2022-03-29 21:48:07', '2022-03-29 21:48:08');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (76, 15, 'Pandai bergaul, meyakinkan, ramah, fun, populer, simpatik. Responsif pada kritik dan ', '2022-03-29 21:48:23', '2022-03-29 21:48:24');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (77, 15, 'Menyukai variasi dan tantangan baru.', '2022-03-29 21:48:40', '2022-03-29 21:48:40');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (78, 15, 'Butuh apresiasi dan penerimaan.', '2022-03-29 21:49:01', '2022-03-29 21:49:03');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (79, 16, 'Tegas, asertif, to the point, jujur terus terang, obyektif, kritis, & punya standard tinggi.', '2022-03-29 21:49:28', '2022-03-29 21:49:29');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (80, 16, 'Dominan, kuat kemauannya, perfeksionis dan kompetitif.', '2022-03-29 21:49:45', '2022-03-29 21:49:46');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (81, 16, 'Tangguh, disiplin, dan sangat menghargai komitmen.', '2022-03-29 21:50:08', '2022-03-29 21:50:08');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (82, 16, 'Cenderung menutupi perasaan dan menyembunyikan kelemahan.', '2022-03-29 21:50:25', '2022-03-29 21:50:26');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (83, 16, 'Berkarisma, komunikasi baik, mampu menggerakkan orang.', '2022-03-29 21:50:58', '2022-03-29 21:50:59');
INSERT INTO "public"."deskripsi_tipe_kepribadian" VALUES (84, 16, 'Berbakat pemimpin.', '2022-03-29 21:51:13', '2022-03-29 21:51:14');

-- ----------------------------
-- Table structure for dimensi_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."dimensi_kepribadian";
CREATE TABLE "public"."dimensi_kepribadian" (
  "id" serial NOT NULL,
  "nama" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "kode" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of dimensi_kepribadian
-- ----------------------------
INSERT INTO "public"."dimensi_kepribadian" VALUES (1, 'Introvert', 'I', '2022-03-26 15:19:31', '2022-03-26 15:19:32');
INSERT INTO "public"."dimensi_kepribadian" VALUES (2, 'Sensing', 'S', '2022-03-26 15:20:00', '2022-03-26 15:20:01');
INSERT INTO "public"."dimensi_kepribadian" VALUES (3, 'Thinking', 'T', '2022-03-26 15:20:46', '2022-03-26 15:20:47');
INSERT INTO "public"."dimensi_kepribadian" VALUES (4, 'Judging', 'J', '2022-03-29 21:05:53', '2022-03-29 21:05:55');
INSERT INTO "public"."dimensi_kepribadian" VALUES (5, 'Extrovert', 'E', '2022-03-29 21:06:18', '2022-03-29 21:06:19');
INSERT INTO "public"."dimensi_kepribadian" VALUES (6, 'Intuition', 'N', '2022-03-29 21:06:43', '2022-03-29 21:06:44');
INSERT INTO "public"."dimensi_kepribadian" VALUES (7, 'Feeling', 'F', '2022-03-29 21:07:06', '2022-03-29 21:07:07');
INSERT INTO "public"."dimensi_kepribadian" VALUES (8, 'Perceiving', 'P', '2022-03-29 21:07:34', '2022-03-29 21:07:35');

-- ----------------------------
-- Table structure for instansi
-- ----------------------------
DROP TABLE IF EXISTS "public"."instansi";
CREATE TABLE "public"."instansi" (
  "id" serial NOT NULL,
  "nama" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "deskripsi" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "alamat" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Table structure for jawaban_soal_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."jawaban_soal_kepribadian";
CREATE TABLE "public"."jawaban_soal_kepribadian" (
  "id" serial NOT NULL,
  "pelamar_id" int8 NOT NULL,
  "soal_kepribadian_id" int8 NOT NULL,
  "pernyataan_kepribadian_id" int8 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of jawaban_soal_kepribadian
-- ----------------------------
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (1, 1, 1, 120, '2022-04-29 10:10:39', '2022-05-20 12:42:23');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (2, 1, 2, 75, '2022-04-29 10:10:39', '2022-05-20 12:42:26');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (3, 1, 3, 119, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (4, 1, 4, 44, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (5, 1, 5, 14, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (6, 1, 6, 30, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (7, 1, 7, 13, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (8, 1, 8, 89, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (9, 1, 9, 104, '2022-04-29 10:10:39', '2022-05-20 09:32:17');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (10, 1, 10, 72, '2022-04-29 10:10:39', '2022-05-20 09:32:19');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (11, 1, 11, 11, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (12, 1, 12, 118, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (13, 1, 13, 28, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (14, 1, 14, 103, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (15, 1, 15, 70, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (16, 1, 16, 87, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (17, 1, 17, 102, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (18, 1, 18, 26, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (19, 1, 19, 117, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (20, 1, 20, 9, '2022-04-29 10:10:39', '2022-05-20 09:32:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (21, 1, 21, 116, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (22, 1, 22, 25, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (23, 1, 23, 101, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (24, 1, 24, 55, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (25, 1, 25, 84, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (26, 1, 26, 54, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (27, 1, 27, 23, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (28, 1, 28, 8, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (29, 1, 29, 67, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (30, 1, 30, 100, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (31, 1, 31, 6, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (32, 1, 32, 40, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (33, 1, 33, 113, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (34, 1, 34, 82, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (35, 1, 35, 65, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (36, 1, 36, 21, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (37, 1, 37, 38, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (38, 1, 38, 64, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (39, 1, 39, 37, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (40, 1, 40, 112, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (41, 1, 41, 80, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (42, 1, 42, 36, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (43, 1, 43, 79, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (44, 1, 44, 111, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (45, 1, 45, 3, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (46, 1, 46, 18, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (47, 1, 47, 110, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (48, 1, 48, 95, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (49, 1, 49, 94, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (50, 1, 50, 49, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (51, 1, 51, 77, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (52, 1, 52, 62, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (53, 1, 53, 16, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (54, 1, 54, 108, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (55, 1, 55, 93, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (56, 1, 56, 107, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (57, 1, 57, 32, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (58, 1, 58, 91, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (59, 1, 59, 106, '2022-04-29 10:10:39', '2022-05-20 09:32:48');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (60, 1, 60, 61, '2022-04-29 10:10:39', '2022-05-14 08:06:41');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (61, 2, 1, 60, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (62, 2, 2, 15, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (63, 2, 3, 119, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (64, 2, 4, 105, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (65, 2, 5, 74, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (66, 2, 6, 90, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (67, 2, 7, 73, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (68, 2, 8, 29, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (69, 2, 9, 43, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (70, 2, 10, 72, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (71, 2, 11, 71, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (72, 2, 12, 118, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (73, 2, 13, 28, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (74, 2, 14, 103, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (75, 2, 15, 10, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (76, 2, 16, 87, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (77, 2, 17, 42, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (78, 2, 18, 26, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (79, 2, 19, 117, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (80, 2, 20, 9, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (81, 2, 21, 116, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (82, 2, 22, 25, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (83, 2, 23, 39, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (84, 2, 24, 115, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (85, 2, 25, 24, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (86, 2, 26, 54, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (87, 2, 27, 83, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (88, 2, 28, 8, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (89, 2, 29, 7, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (90, 2, 30, 100, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (91, 2, 31, 66, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (92, 2, 32, 99, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (93, 2, 33, 113, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (94, 2, 34, 82, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (95, 2, 35, 5, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (96, 2, 36, 21, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (97, 2, 37, 98, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (98, 2, 38, 64, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (99, 2, 39, 37, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (100, 2, 40, 52, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (101, 2, 41, 20, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (102, 2, 42, 96, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (103, 2, 43, 79, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (104, 2, 44, 51, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (105, 2, 45, 3, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (106, 2, 46, 78, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (107, 2, 47, 50, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (108, 2, 48, 35, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (109, 2, 49, 94, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (110, 2, 50, 109, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (111, 2, 51, 17, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (112, 2, 52, 2, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (113, 2, 53, 76, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (114, 2, 54, 48, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (115, 2, 55, 93, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (116, 2, 56, 107, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (117, 2, 57, 92, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (118, 2, 58, 91, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (119, 2, 59, 46, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (120, 2, 60, 1, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (121, 3, 1, 120, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (122, 3, 2, 75, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (123, 3, 3, 119, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (124, 3, 4, 105, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (125, 3, 5, 14, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (126, 3, 6, 90, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (127, 3, 7, 73, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (128, 3, 8, 89, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (129, 3, 9, 43, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (130, 3, 10, 12, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (131, 3, 11, 11, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (132, 3, 12, 118, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (133, 3, 13, 28, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (134, 3, 14, 45, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (135, 3, 15, 70, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (136, 3, 16, 87, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (137, 3, 17, 42, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (138, 3, 18, 86, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (139, 3, 19, 117, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (140, 3, 20, 9, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (141, 3, 21, 56, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (142, 3, 22, 85, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (143, 3, 23, 39, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (144, 3, 24, 55, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (145, 3, 25, 84, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (146, 3, 26, 54, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (147, 3, 27, 23, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (148, 3, 28, 68, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (149, 3, 29, 7, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (150, 3, 30, 41, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (151, 3, 31, 66, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (152, 3, 32, 40, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (153, 3, 33, 113, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (154, 3, 34, 82, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (155, 3, 35, 65, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (156, 3, 36, 81, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (157, 3, 37, 98, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (158, 3, 38, 64, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (159, 3, 39, 97, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (160, 3, 40, 112, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (161, 3, 41, 80, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (162, 3, 42, 36, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (163, 3, 43, 19, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (164, 3, 44, 51, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (165, 3, 45, 63, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (166, 3, 46, 78, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (167, 3, 47, 50, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (168, 3, 48, 35, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (169, 3, 49, 94, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (170, 3, 50, 49, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (171, 3, 51, 77, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (172, 3, 52, 62, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (173, 3, 53, 76, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (174, 3, 54, 108, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (175, 3, 55, 33, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (176, 3, 56, 47, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (177, 3, 57, 32, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (178, 3, 58, 31, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (179, 3, 59, 46, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (180, 3, 60, 1, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (181, 4, 1, 120, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (182, 4, 2, 75, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (183, 4, 3, 59, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (184, 4, 4, 105, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (185, 4, 5, 14, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (186, 4, 6, 90, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (187, 4, 7, 13, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (188, 4, 8, 89, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (189, 4, 9, 104, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (190, 4, 10, 72, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (191, 4, 11, 11, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (192, 4, 12, 58, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (193, 4, 13, 28, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (194, 4, 14, 103, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (195, 4, 15, 70, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (196, 4, 16, 87, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (197, 4, 17, 42, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (198, 4, 18, 26, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (199, 4, 19, 117, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (200, 4, 20, 9, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (201, 4, 21, 56, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (202, 4, 22, 85, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (203, 4, 23, 39, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (204, 4, 24, 115, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (205, 4, 25, 84, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (206, 4, 26, 114, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (207, 4, 27, 23, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (208, 4, 28, 8, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (209, 4, 29, 67, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (210, 4, 30, 41, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (211, 4, 31, 66, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (212, 4, 32, 99, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (213, 4, 33, 113, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (214, 4, 34, 82, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (215, 4, 35, 65, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (216, 4, 36, 81, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (217, 4, 37, 98, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (218, 4, 38, 64, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (219, 4, 39, 37, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (220, 4, 40, 112, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (221, 4, 41, 20, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (222, 4, 42, 36, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (223, 4, 43, 19, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (224, 4, 44, 111, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (225, 4, 45, 3, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (226, 4, 46, 18, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (227, 4, 47, 110, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (228, 4, 48, 35, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (229, 4, 49, 94, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (230, 4, 50, 49, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (231, 4, 51, 17, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (232, 4, 52, 62, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (233, 4, 53, 16, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (234, 4, 54, 108, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (235, 4, 55, 33, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (236, 4, 56, 47, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (237, 4, 57, 92, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (238, 4, 58, 91, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (239, 4, 59, 46, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (240, 4, 60, 61, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (241, 5, 1, 120, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (242, 5, 2, 15, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (243, 5, 3, 119, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (244, 5, 4, 44, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (245, 5, 5, 74, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (246, 5, 6, 30, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (247, 5, 7, 73, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (248, 5, 8, 89, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (249, 5, 9, 104, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (250, 5, 10, 12, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (251, 5, 11, 11, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (252, 5, 12, 118, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (253, 5, 13, 28, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (254, 5, 14, 103, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (255, 5, 15, 70, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (256, 5, 16, 27, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (257, 5, 17, 42, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (258, 5, 18, 26, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (259, 5, 19, 117, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (260, 5, 20, 9, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (261, 5, 21, 116, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (262, 5, 22, 85, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (263, 5, 23, 39, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (264, 5, 24, 115, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (265, 5, 25, 24, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (266, 5, 26, 54, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (267, 5, 27, 23, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (268, 5, 28, 8, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (269, 5, 29, 67, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (270, 5, 30, 100, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (271, 5, 31, 6, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (272, 5, 32, 99, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (273, 5, 33, 53, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (274, 5, 34, 22, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (275, 5, 35, 65, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (276, 5, 36, 81, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (277, 5, 37, 98, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (278, 5, 38, 64, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (279, 5, 39, 37, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (280, 5, 40, 112, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (281, 5, 41, 20, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (282, 5, 42, 36, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (283, 5, 43, 19, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (284, 5, 44, 111, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (285, 5, 45, 3, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (286, 5, 46, 78, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (287, 5, 47, 110, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (288, 5, 48, 95, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (289, 5, 49, 34, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (290, 5, 50, 109, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (291, 5, 51, 17, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (292, 5, 52, 2, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (293, 5, 53, 76, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (294, 5, 54, 48, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (295, 5, 55, 33, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (296, 5, 56, 107, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (297, 5, 57, 32, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (298, 5, 58, 91, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (299, 5, 59, 46, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (300, 5, 60, 1, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (301, 6, 1, 120, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (302, 6, 2, 15, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (303, 6, 3, 59, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (304, 6, 4, 44, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (305, 6, 5, 14, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (306, 6, 6, 90, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (307, 6, 7, 73, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (308, 6, 8, 89, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (309, 6, 9, 43, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (310, 6, 10, 72, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (311, 6, 11, 71, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (312, 6, 12, 118, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (313, 6, 13, 28, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (314, 6, 14, 88, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (315, 6, 15, 70, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (316, 6, 16, 87, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (317, 6, 17, 102, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (318, 6, 18, 86, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (319, 6, 19, 117, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (320, 6, 20, 69, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (321, 6, 21, 116, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (322, 6, 22, 25, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (323, 6, 23, 39, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (324, 6, 24, 55, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (325, 6, 25, 24, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (326, 6, 26, 114, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (327, 6, 27, 83, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (328, 6, 28, 68, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (329, 6, 29, 67, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (330, 6, 30, 41, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (331, 6, 31, 66, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (332, 6, 32, 40, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (333, 6, 33, 113, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (334, 6, 34, 22, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (335, 6, 35, 65, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (336, 6, 36, 81, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (337, 6, 37, 98, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (338, 6, 38, 4, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (339, 6, 39, 97, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (340, 6, 40, 52, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (341, 6, 41, 80, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (342, 6, 42, 36, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (343, 6, 43, 79, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (344, 6, 44, 51, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (345, 6, 45, 63, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (346, 6, 46, 78, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (347, 6, 47, 110, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (348, 6, 48, 95, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (349, 6, 49, 94, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (350, 6, 50, 109, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (351, 6, 51, 77, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (352, 6, 52, 62, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (353, 6, 53, 76, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (354, 6, 54, 108, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (355, 6, 55, 33, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (356, 6, 56, 47, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (357, 6, 57, 92, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (358, 6, 58, 91, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (359, 6, 59, 46, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (360, 6, 60, 61, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (361, 7, 1, 120, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (362, 7, 2, 15, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (363, 7, 3, 59, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (364, 7, 4, 44, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (365, 7, 5, 74, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (366, 7, 6, 90, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (367, 7, 7, 73, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (368, 7, 8, 89, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (369, 7, 9, 43, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (370, 7, 10, 12, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (371, 7, 11, 71, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (372, 7, 12, 58, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (373, 7, 13, 28, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (374, 7, 14, 103, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (375, 7, 15, 70, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (376, 7, 16, 27, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (377, 7, 17, 102, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (378, 7, 18, 86, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (379, 7, 19, 57, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (380, 7, 20, 9, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (381, 7, 21, 56, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (382, 7, 22, 85, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (383, 7, 23, 101, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (384, 7, 24, 115, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (385, 7, 25, 24, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (386, 7, 26, 114, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (387, 7, 27, 83, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (388, 7, 28, 68, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (389, 7, 29, 67, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (390, 7, 30, 100, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (391, 7, 31, 66, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (392, 7, 32, 99, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (393, 7, 33, 113, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (394, 7, 34, 22, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (395, 7, 35, 5, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (396, 7, 36, 21, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (397, 7, 37, 38, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (398, 7, 38, 4, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (399, 7, 39, 97, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (400, 7, 40, 52, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (401, 7, 41, 80, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (402, 7, 42, 96, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (403, 7, 43, 19, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (404, 7, 44, 111, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (405, 7, 45, 3, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (406, 7, 46, 78, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (407, 7, 47, 50, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (408, 7, 48, 35, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (409, 7, 49, 94, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (410, 7, 50, 109, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (411, 7, 51, 77, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (412, 7, 52, 62, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (413, 7, 53, 76, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (414, 7, 54, 48, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (415, 7, 55, 93, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (416, 7, 56, 47, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (417, 7, 57, 32, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (418, 7, 58, 91, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (419, 7, 59, 106, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (420, 7, 60, 1, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (421, 8, 1, 60, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (422, 8, 2, 15, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (423, 8, 3, 119, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (424, 8, 4, 44, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (425, 8, 5, 74, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (426, 8, 6, 30, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (427, 8, 7, 13, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (428, 8, 8, 89, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (429, 8, 9, 104, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (430, 8, 10, 72, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (431, 8, 11, 11, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (432, 8, 12, 118, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (433, 8, 13, 28, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (434, 8, 14, 45, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (435, 8, 15, 10, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (436, 8, 16, 27, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (437, 8, 17, 102, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (438, 8, 18, 86, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (439, 8, 19, 57, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (440, 8, 20, 69, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (441, 8, 21, 56, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (442, 8, 22, 85, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (443, 8, 23, 39, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (444, 8, 24, 55, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (445, 8, 25, 24, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (446, 8, 26, 114, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (447, 8, 27, 23, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (448, 8, 28, 8, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (449, 8, 29, 7, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (450, 8, 30, 100, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (451, 8, 31, 66, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (452, 8, 32, 40, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (453, 8, 33, 113, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (454, 8, 34, 22, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (455, 8, 35, 65, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (456, 8, 36, 81, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (457, 8, 37, 98, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (458, 8, 38, 4, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (459, 8, 39, 37, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (460, 8, 40, 52, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (461, 8, 41, 20, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (462, 8, 42, 96, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (463, 8, 43, 79, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (464, 8, 44, 51, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (465, 8, 45, 3, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (466, 8, 46, 18, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (467, 8, 47, 50, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (468, 8, 48, 35, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (469, 8, 49, 34, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (470, 8, 50, 49, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (471, 8, 51, 17, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (472, 8, 52, 2, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (473, 8, 53, 76, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (474, 8, 54, 48, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (475, 8, 55, 33, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (476, 8, 56, 107, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (477, 8, 57, 32, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (478, 8, 58, 91, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (479, 8, 59, 46, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (480, 8, 60, 61, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (481, 9, 1, 120, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (482, 9, 2, 15, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (483, 9, 3, 119, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (484, 9, 4, 44, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (485, 9, 5, 74, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (486, 9, 6, 90, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (487, 9, 7, 73, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (488, 9, 8, 89, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (489, 9, 9, 43, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (490, 9, 10, 72, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (491, 9, 11, 11, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (492, 9, 12, 118, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (493, 9, 13, 28, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (494, 9, 14, 103, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (495, 9, 15, 70, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (496, 9, 16, 27, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (497, 9, 17, 102, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (498, 9, 18, 86, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (499, 9, 19, 57, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (500, 9, 20, 69, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (501, 9, 21, 116, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (502, 9, 22, 85, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (503, 9, 23, 101, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (504, 9, 24, 115, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (505, 9, 25, 84, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (506, 9, 26, 54, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (507, 9, 27, 23, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (508, 9, 28, 8, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (509, 9, 29, 7, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (510, 9, 30, 100, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (511, 9, 31, 6, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (512, 9, 32, 99, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (513, 9, 33, 113, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (514, 9, 34, 82, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (515, 9, 35, 5, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (516, 9, 36, 21, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (517, 9, 37, 98, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (518, 9, 38, 4, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (519, 9, 39, 97, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (520, 9, 40, 112, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (521, 9, 41, 80, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (522, 9, 42, 96, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (523, 9, 43, 19, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (524, 9, 44, 111, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (525, 9, 45, 63, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (526, 9, 46, 18, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (527, 9, 47, 50, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (528, 9, 48, 35, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (529, 9, 49, 34, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (530, 9, 50, 109, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (531, 9, 51, 17, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (532, 9, 52, 62, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (533, 9, 53, 16, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (534, 9, 54, 108, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (535, 9, 55, 33, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (536, 9, 56, 107, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (537, 9, 57, 32, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (538, 9, 58, 91, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (539, 9, 59, 46, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (540, 9, 60, 61, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (541, 10, 1, 60, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (542, 10, 2, 15, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (543, 10, 3, 119, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (544, 10, 4, 44, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (545, 10, 5, 14, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (546, 10, 6, 90, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (547, 10, 7, 13, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (548, 10, 8, 29, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (549, 10, 9, 43, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (550, 10, 10, 72, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (551, 10, 11, 71, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (552, 10, 12, 118, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (553, 10, 13, 28, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (554, 10, 14, 45, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (555, 10, 15, 70, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (556, 10, 16, 27, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (557, 10, 17, 102, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (558, 10, 18, 26, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (559, 10, 19, 117, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (560, 10, 20, 9, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (561, 10, 21, 56, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (562, 10, 22, 25, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (563, 10, 23, 39, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (564, 10, 24, 55, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (565, 10, 25, 84, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (566, 10, 26, 114, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (567, 10, 27, 23, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (568, 10, 28, 68, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (569, 10, 29, 67, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (570, 10, 30, 41, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (571, 10, 31, 6, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (572, 10, 32, 99, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (573, 10, 33, 113, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (574, 10, 34, 22, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (575, 10, 35, 65, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (576, 10, 36, 81, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (577, 10, 37, 38, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (578, 10, 38, 64, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (579, 10, 39, 37, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (580, 10, 40, 112, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (581, 10, 41, 20, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (582, 10, 42, 96, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (583, 10, 43, 19, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (584, 10, 44, 51, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (585, 10, 45, 3, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (586, 10, 46, 78, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (587, 10, 47, 50, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (588, 10, 48, 95, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (589, 10, 49, 94, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (590, 10, 50, 109, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (591, 10, 51, 77, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (592, 10, 52, 2, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (593, 10, 53, 76, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (594, 10, 54, 108, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (595, 10, 55, 33, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (596, 10, 56, 47, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (597, 10, 57, 32, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (598, 10, 58, 31, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (599, 10, 59, 46, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."jawaban_soal_kepribadian" VALUES (600, 10, 60, 61, '2022-04-29 10:10:40', '2022-04-29 10:10:40');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" serial NOT NULL,
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO "public"."migrations" VALUES (3, '2022_03_26_064245_create_dimensi_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (4, '2022_03_26_064930_create_tipe_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (5, '2022_03_26_064944_create_deskripsi_tipe_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (6, '2022_03_26_064959_create_saran_pengembangan_tipe_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (7, '2022_03_26_065022_create_saran_profesi_tipe_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (8, '2022_03_26_065318_create_partner_alami_tipe_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (9, '2022_03_26_065535_create_deskripsi_tipe_kepribadian_foreign_key', 1);
INSERT INTO "public"."migrations" VALUES (10, '2022_03_26_065611_create_saran_pengembangan_tipe_kepribadian_foreign_key', 1);
INSERT INTO "public"."migrations" VALUES (11, '2022_03_26_065641_create_saran_profesi_tipe_kepribadian_foreign_key', 1);
INSERT INTO "public"."migrations" VALUES (12, '2022_03_26_065708_create_partner_alami_tipe_kepribadian_foreign_key', 1);
INSERT INTO "public"."migrations" VALUES (13, '2022_03_26_074252_create_instansi_table', 1);
INSERT INTO "public"."migrations" VALUES (14, '2022_03_26_080715_create_pelamar_table', 1);
INSERT INTO "public"."migrations" VALUES (15, '2022_03_26_080738_create_admin_table', 1);
INSERT INTO "public"."migrations" VALUES (16, '2022_03_26_081202_create_attachment_pelamar_table', 1);
INSERT INTO "public"."migrations" VALUES (17, '2022_04_10_062820_create_soal_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (18, '2022_04_10_062845_create_pernyataan_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (19, '2022_04_10_063449_create_pernyataan_kepribadian_foreign_key', 1);
INSERT INTO "public"."migrations" VALUES (20, '2022_04_10_070308_create_jawaban_soal_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (21, '2022_04_10_070356_create_jawaban_soal_kepribadian_foreign_key', 1);
INSERT INTO "public"."migrations" VALUES (22, '2022_04_28_173315_create_pelamar_foreign_key', 1);
INSERT INTO "public"."migrations" VALUES (23, '2022_04_28_173400_create_admin_foreign_key', 1);
INSERT INTO "public"."migrations" VALUES (24, '2022_04_29_072236_create_p_dimensi_kepribadian_table', 1);
INSERT INTO "public"."migrations" VALUES (25, '2022_04_29_075510_create_p_dimensi_kepribadian_detail_table', 1);
INSERT INTO "public"."migrations" VALUES (26, '2022_04_29_075522_create_p_dimensi_kepribadian_detail_foreign_key', 1);

-- ----------------------------
-- Table structure for p_dimensi_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."p_dimensi_kepribadian";
CREATE TABLE "public"."p_dimensi_kepribadian" (
  "id" serial NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of p_dimensi_kepribadian
-- ----------------------------
INSERT INTO "public"."p_dimensi_kepribadian" VALUES (1, '2022-04-29 15:13:45', '2022-04-29 15:13:47');
INSERT INTO "public"."p_dimensi_kepribadian" VALUES (2, '2022-04-29 15:13:51', '2022-04-29 15:13:52');
INSERT INTO "public"."p_dimensi_kepribadian" VALUES (3, '2022-04-29 15:13:56', '2022-04-29 15:13:57');
INSERT INTO "public"."p_dimensi_kepribadian" VALUES (4, '2022-04-29 15:14:01', '2022-04-29 15:14:02');

-- ----------------------------
-- Table structure for p_dimensi_kepribadian_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."p_dimensi_kepribadian_detail";
CREATE TABLE "public"."p_dimensi_kepribadian_detail" (
  "id" serial NOT NULL,
  "p_dimensi_kepribadian_id" int8 NOT NULL,
  "dimensi_kepribadian_id" int8 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of p_dimensi_kepribadian_detail
-- ----------------------------
INSERT INTO "public"."p_dimensi_kepribadian_detail" VALUES (1, 1, 1, '2022-04-29 15:14:20', '2022-04-29 15:14:21');
INSERT INTO "public"."p_dimensi_kepribadian_detail" VALUES (2, 1, 5, '2022-04-29 15:14:38', '2022-04-29 15:14:39');
INSERT INTO "public"."p_dimensi_kepribadian_detail" VALUES (3, 2, 2, '2022-04-29 15:15:07', '2022-04-29 15:15:08');
INSERT INTO "public"."p_dimensi_kepribadian_detail" VALUES (4, 2, 6, '2022-04-29 15:15:18', '2022-04-29 15:15:20');
INSERT INTO "public"."p_dimensi_kepribadian_detail" VALUES (5, 3, 3, '2022-04-29 15:15:42', '2022-04-29 15:15:43');
INSERT INTO "public"."p_dimensi_kepribadian_detail" VALUES (6, 3, 7, '2022-04-29 15:15:55', '2022-04-29 15:15:56');
INSERT INTO "public"."p_dimensi_kepribadian_detail" VALUES (7, 4, 4, '2022-04-29 15:16:14', '2022-04-29 15:16:16');
INSERT INTO "public"."p_dimensi_kepribadian_detail" VALUES (8, 4, 8, '2022-04-29 15:16:31', '2022-04-29 15:16:32');

-- ----------------------------
-- Table structure for partner_alami_tipe_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."partner_alami_tipe_kepribadian";
CREATE TABLE "public"."partner_alami_tipe_kepribadian" (
  "id" serial NOT NULL,
  "tipe_kepribadian_id" int8 NOT NULL,
  "pa_tipe_kepribadian_id" int8 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_resets";
CREATE TABLE "public"."password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6)
)
;

-- ----------------------------
-- Table structure for pelamar
-- ----------------------------
DROP TABLE IF EXISTS "public"."pelamar";
CREATE TABLE "public"."pelamar" (
  "id" serial NOT NULL,
  "users_id" int8 NOT NULL,
  "tipe_kepribadian_id" int8,
  "alamat" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "nomor_telepon" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "cv" varchar(255) COLLATE "pg_catalog"."default",
  "status" int4,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of pelamar
-- ----------------------------
INSERT INTO "public"."pelamar" VALUES (1, 1, NULL, 'Depok', '081234567890', NULL, NULL, '2022-04-29 10:10:39', '2022-05-14 08:48:23');
INSERT INTO "public"."pelamar" VALUES (2, 2, NULL, 'Depok', '081234567890', NULL, NULL, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."pelamar" VALUES (3, 3, 16, 'Depok', '081234567890', NULL, 1, '2022-04-29 10:10:39', '2022-05-21 10:48:43');
INSERT INTO "public"."pelamar" VALUES (4, 4, NULL, 'Depok', '081234567890', NULL, NULL, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."pelamar" VALUES (5, 5, NULL, 'Depok', '081234567890', NULL, NULL, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."pelamar" VALUES (6, 6, NULL, 'Depok', '081234567890', NULL, NULL, '2022-04-29 10:10:39', '2022-04-29 10:10:39');
INSERT INTO "public"."pelamar" VALUES (7, 7, NULL, 'Depok', '081234567890', NULL, NULL, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."pelamar" VALUES (8, 8, NULL, 'Depok', '081234567890', NULL, NULL, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."pelamar" VALUES (9, 9, NULL, 'Depok', '081234567890', NULL, NULL, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."pelamar" VALUES (10, 10, NULL, 'Depok', '081234567890', NULL, NULL, '2022-04-29 10:10:40', '2022-04-29 10:10:40');
INSERT INTO "public"."pelamar" VALUES (11, 14, 1, 'Jalan Raya Centex Gg Epatik 2 Dalam', '089630022265', '628b5041ec4c0.pdf', 1, NULL, NULL);
INSERT INTO "public"."pelamar" VALUES (12, 11, NULL, 'Depok', '8765678', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pernyataan_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."pernyataan_kepribadian";
CREATE TABLE "public"."pernyataan_kepribadian" (
  "id" serial NOT NULL,
  "soal_kepribadian_id" int8 NOT NULL,
  "dimensi_kepribadian_id" int8 NOT NULL,
  "soal" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of pernyataan_kepribadian
-- ----------------------------
INSERT INTO "public"."pernyataan_kepribadian" VALUES (1, 60, 1, 'Berhati-hati, penuh pertimbangan, kaku', '2022-04-10 14:36:11', '2022-04-10 14:36:12');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (2, 52, 1, 'Membangun ide dengan matang baru membicarakannya', '2022-04-10 14:38:20', '2022-04-10 14:38:21');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (3, 45, 1, 'Lebih suka komunikasi tidak langsung (telp, surat, e-mail)', '2022-04-12 13:12:09', '2022-04-12 13:12:10');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (4, 38, 1, 'Mencari kesempatan untuk berkomunikasi secara perorangan', '2022-04-12 19:25:57', '2022-04-12 19:25:58');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (5, 35, 1, 'Menyimpan semangat dalam hati', '2022-04-12 19:27:16', '2022-04-12 19:27:17');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (6, 31, 1, 'Berpikir secara matang sebelum bertindak', '2022-04-12 20:49:57', '2022-04-12 20:49:58');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (7, 29, 1, 'Lebih memilih tempat yang tenang dan pribadi untuk berkonsentrasi', '2022-04-12 20:50:40', '2022-04-12 20:50:40');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (8, 28, 1, 'Berinisiatif bila situasi memaksa atau berhubungan dengan kepentingan sendiri', '2022-04-12 20:51:38', '2022-04-12 20:51:39');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (9, 20, 1, 'Beraktifitas sendirian di rumah menyenangkan', '2022-04-12 20:52:27', '2022-04-12 20:52:27');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (10, 15, 1, 'Pertemuan dengan orang lain dan aktivitas sosial melelahkan', '2022-04-12 20:53:04', '2022-04-12 20:53:05');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (11, 11, 1, 'Tertutup dan mandiri', '2022-04-12 20:53:41', '2022-04-12 20:53:41');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (12, 10, 1, 'Fokus pada sedikit hobi namun mendalam', '2022-04-12 20:54:38', '2022-04-12 20:54:39');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (13, 7, 1, 'Berorientasi pada dunia internal (memori, pemikiran, ide)', '2022-04-12 20:55:16', '2022-04-12 20:55:17');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (14, 5, 1, 'Menemukan dan mengembangkan ide dengan merenungkan', '2022-04-12 20:55:45', '2022-04-12 20:55:45');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (15, 2, 1, 'Lebih memilih berkomunikasi dengan menulis', '2022-04-12 20:56:24', '2022-04-12 20:56:25');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (16, 53, 2, 'Memilih cara yang sudah ada dan sudah terbukti', '2022-04-12 21:41:38', '2022-04-12 21:41:39');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (17, 51, 2, 'Menggunakan keterampilan yang sudah dikuasai', '2022-04-12 21:42:19', '2022-04-12 21:42:20');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (18, 46, 2, 'Praktis', '2022-04-12 21:43:13', '2022-04-12 21:43:14');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (19, 43, 2, 'Secara konsisten mengamati dan mengingat detail', '2022-04-12 21:55:40', '2022-04-12 21:55:40');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (20, 41, 2, 'Berfokus pada masa kini (apa yang bisa diperbaiki sekarang)', '2022-04-12 21:56:18', '2022-04-12 21:56:19');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (21, 36, 2, 'Mengklarifikasi ide dan teori sebelum dipraktekkan', '2022-04-12 21:57:28', '2022-04-12 21:57:29');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (22, 34, 2, 'Menarik kesimpulan dengan lama dan hati-hati', '2022-04-14 14:24:14', '2022-04-14 14:24:14');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (23, 27, 2, 'Bertindak step by step dengan timeframe yang jelas', '2022-04-14 14:25:29', '2022-04-14 14:25:30');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (24, 25, 2, 'Kontinuitas dan stabilitas lebih diutamakan', '2022-04-14 14:26:05', '2022-04-14 14:26:06');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (25, 22, 2, 'Memilih fakta lebih penting daripada ide inspiratif', '2022-04-14 14:27:18', '2022-04-14 14:27:18');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (26, 18, 2, 'Prosedural dan tradisional', '2022-04-14 14:28:16', '2022-04-14 14:28:17');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (27, 16, 2, 'SOP sangat membantu', '2022-04-14 14:29:17', '2022-04-14 14:29:18');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (28, 13, 2, 'Menggunakan pengalaman sebagai pedoman', '2022-04-14 14:29:54', '2022-04-14 14:29:55');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (29, 8, 2, 'Berbicara mengenai masalah yang dihadapi hari ini dan langkah-langkah praktis mengatasinya', '2022-04-14 14:30:31', '2022-04-14 14:30:32');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (30, 6, 2, 'Bergerak dari detail ke gambaran umum sebagai kesimpulan akhir', '2022-04-14 14:31:10', '2022-04-14 14:31:11');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (31, 58, 3, 'Mementingkan sebab-akibat', '2022-04-14 14:31:55', '2022-04-14 14:31:56');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (32, 57, 3, 'Menuntut perlakuan yang adil dan sama pada semua orang', '2022-04-14 14:32:30', '2022-04-14 14:32:31');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (33, 55, 3, 'Standar harus ditegakkan di atas segalanya (itu menunjukkan kehormatan dan harga diri)', '2022-04-14 14:39:46', '2022-04-14 14:39:47');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (34, 49, 3, 'Bersemangat saat mengkritik dan menemukan kesalahan', '2022-04-14 14:40:24', '2022-04-14 14:40:24');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (35, 48, 3, 'Sering dianggap keras kepala', '2022-04-14 14:41:10', '2022-04-14 14:41:11');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (36, 42, 3, 'Mempertanyakan', '2022-04-14 14:41:47', '2022-04-14 14:41:48');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (37, 39, 3, 'Yang penting tujuan tercapai', '2022-04-14 14:43:07', '2022-04-14 14:43:07');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (38, 37, 3, 'Melibatkan perasaan itu tidak profesional', '2022-04-14 14:43:50', '2022-04-14 14:43:51');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (39, 23, 3, 'Mengemukakan tujuan dan sasaran lebih dahulu', '2022-04-14 14:47:52', '2022-04-14 14:47:53');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (40, 32, 3, 'Menghargai seseorang karena skill dan faktor teknis', '2022-04-14 14:49:01', '2022-04-14 14:49:02');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (41, 30, 3, 'Menganalisa', '2022-04-14 14:50:15', '2022-04-14 14:50:16');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (42, 17, 3, 'Mengambil keputusan berdasar logika dan aturan main', '2022-04-14 14:50:53', '2022-04-14 14:50:54');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (43, 9, 3, 'Diyakinkan dengan penjelasan yang masuk akal', '2022-04-14 14:51:40', '2022-04-14 14:51:42');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (44, 4, 3, 'Obyektif', '2022-04-14 15:00:10', '2022-04-14 15:00:10');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (45, 14, 3, 'Berorientasi tugas dan job description', '2022-04-14 15:00:46', '2022-04-14 15:00:47');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (46, 59, 4, 'Puas ketika mampu menjalankan semuanya sesuai rencana', '2022-04-14 15:01:55', '2022-04-14 15:01:55');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (47, 56, 4, 'Daftar dan checklist adalah panduan penting', '2022-04-14 15:02:52', '2022-04-14 15:02:53');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (48, 54, 4, 'Hidup harus sudah diatur dari awal', '2022-04-14 15:11:33', '2022-04-14 15:11:34');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (49, 50, 4, 'Bertindak sesuai apa yang sudah direncanakan', '2022-04-14 15:12:07', '2022-04-14 15:12:08');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (50, 47, 4, 'Perubahan adalah musuh', '2022-04-14 15:12:56', '2022-04-14 15:12:57');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (51, 44, 4, 'Situasi last minute sangat menyiksa, membuat stress dan merupakan kesalahan', '2022-04-14 15:13:30', '2022-04-14 15:13:31');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (52, 40, 4, 'Ketidakpastian membuat bingung dan meresahkan', '2022-04-14 15:15:07', '2022-04-14 15:15:08');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (53, 33, 4, 'Merasa tenang bila semua sudah diputuskan', '2022-04-14 19:26:53', '2022-04-14 19:26:54');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (54, 26, 4, 'Berpegang teguh pada pendirian', '2022-04-14 19:27:34', '2022-04-14 19:27:35');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (55, 24, 4, 'Fokus pada target dan mengabaikan hal-hal baru', '2022-04-14 19:28:04', '2022-04-14 19:28:06');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (56, 21, 4, 'Mengatur orang lain dengan tata tertib agar tujuan tercapai', '2022-04-14 19:28:46', '2022-04-14 19:28:47');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (57, 19, 4, 'Berorientasi pada hasil', '2022-04-14 19:29:17', '2022-04-14 19:29:18');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (58, 12, 4, 'Aturan, jadwal dan target akan sangat membantu dan memperjelas tindakan', '2022-04-14 19:29:48', '2022-04-14 19:29:48');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (59, 3, 4, 'Tidak menyukai hal-hal yang bersifat mendadak dan di luar perencanaan', '2022-04-14 19:30:41', '2022-04-14 19:30:42');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (60, 1, 4, 'Terencana dan memiliki deadline jelas', '2022-04-14 19:31:12', '2022-04-14 19:31:13');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (61, 60, 5, 'Spontan, Easy Going, fleksibel', '2022-04-14 19:32:02', '2022-04-14 19:32:03');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (62, 52, 5, 'Membangun ide pada saat berbicara', '2022-04-14 19:32:40', '2022-04-14 19:32:40');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (63, 45, 5, 'Lebih suka komunikasi langsung (tatap muka)', '2022-04-14 19:33:11', '2022-04-14 19:33:12');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (64, 38, 5, 'Memilih berkomunikasi pada sekelompok orang', '2022-04-14 19:33:52', '2022-04-14 19:33:53');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (65, 35, 5, 'Mengekspresikan semangat', '2022-04-14 19:34:22', '2022-04-14 19:34:23');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (66, 31, 5, 'Berani bertindak tanpa terlalu lama berfikir', '2022-04-14 19:34:54', '2022-04-14 19:34:55');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (67, 29, 5, 'Lebih memilih tempat yang ramai dan banyak interaksi / aktifitas', '2022-04-14 19:35:27', '2022-04-14 19:35:28');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (68, 28, 5, 'Berinisiatif tinggi hampir dalam berbagai hal meskipun tidak berhubungan dengan dirinya', '2022-04-14 19:35:57', '2022-04-14 19:35:58');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (69, 20, 5, 'Beraktifitas sendirian di rumah membosankan', '2022-04-14 19:37:07', '2022-04-14 19:37:08');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (70, 15, 5, 'Bertemu orang dan aktivitas sosial membuat bersemangat', '2022-04-14 19:51:32', '2022-04-14 19:51:32');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (71, 11, 5, 'Sosial dan ekspresif', '2022-04-14 19:52:12', '2022-04-14 19:52:13');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (72, 10, 5, 'Fokus pada banyak hobi secara luas dan umum', '2022-04-14 19:53:06', '2022-04-14 19:53:07');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (73, 7, 5, 'Berorientasi pada dunia eksternal (kegiatan, orang)', '2022-04-14 19:53:35', '2022-04-14 19:53:36');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (74, 5, 5, 'Menemukan dan mengembangkan ide dengan mendiskusikannya', '2022-04-14 19:54:07', '2022-04-14 19:54:07');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (75, 2, 5, 'Lebih memilih berkomunikasi dengan bicara', '2022-04-14 19:54:44', '2022-04-14 19:54:45');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (76, 53, 6, 'Memilih cara yang unik dan belum dipraktekkan orang lain', '2022-04-14 19:55:27', '2022-04-14 19:55:28');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (77, 51, 6, 'Menyukai tantangan untuk menguasai keterampilan baru', '2022-04-14 19:56:48', '2022-04-14 19:56:49');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (78, 46, 6, 'Konseptual', '2022-04-14 19:57:31', '2022-04-14 19:57:32');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (79, 43, 6, 'Mengamati dan mengingat detail hanya bila berhubungan dengan pola', '2022-04-14 19:58:18', '2022-04-14 19:58:19');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (80, 41, 6, 'Berfokus pada masa depan (apa yang mungkin dicapai di masa depan)', '2022-04-14 20:01:47', '2022-04-14 20:01:47');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (81, 36, 6, 'Memahami ide dan teori saat mempraktekkannya langsung', '2022-04-14 20:49:40', '2022-04-14 20:49:41');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (82, 34, 6, 'menarik kesimpulan dengan cepat sesuai naluri', '2022-04-14 20:51:24', '2022-04-14 20:51:24');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (83, 27, 6, 'Bertindak dengan semangat tanpa menggunakan timeframe', '2022-04-14 20:52:19', '2022-04-14 20:52:20');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (84, 25, 6, 'Perubahan dan variasi lebih diutamakan', '2022-04-14 20:53:20', '2022-04-14 20:53:20');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (85, 22, 6, 'Memilih ide inspiratif lebih penting daripada fakta', '2022-04-14 20:54:24', '2022-04-14 20:54:25');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (86, 18, 6, 'Bebas dan dinamis', '2022-04-14 20:55:14', '2022-04-14 20:55:15');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (87, 16, 6, 'SOP sangat membosankan', '2022-04-14 20:56:06', '2022-04-14 20:56:06');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (88, 13, 6, 'Menggunakan imajinasi dan perenungan sebagai pedoman', '2022-04-14 20:56:55', '2022-04-14 20:56:56');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (89, 8, 6, 'Berbicara mengenai visi masa depan dan konsep-konsep mengenai visi tersebut', '2022-04-14 20:57:34', '2022-04-14 20:57:35');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (90, 6, 6, 'Bergerak dari gambaran umum baru ke detail', '2022-04-14 20:58:12', '2022-04-14 20:58:13');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (91, 58, 7, 'Mementingkan nilai-nilai personal', '2022-04-14 20:59:02', '2022-04-14 20:59:03');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (92, 57, 7, 'Menuntut perlakuan khusus sesuai karakteristik masing-masing orang', '2022-04-14 21:00:59', '2022-04-14 21:01:00');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (93, 55, 7, 'Perasaan manusia lebih penting dari sekadar standar (yang adalah benda mati)', '2022-04-14 21:02:18', '2022-04-14 21:02:18');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (94, 49, 7, 'Bersemangat saat menolong orang keluar dari kesalahan dan meluruskan', '2022-04-14 21:03:11', '2022-04-14 21:03:12');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (95, 48, 7, 'Sering dianggap terlalu memihak', '2022-04-14 21:04:10', '2022-04-14 21:04:11');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (96, 42, 7, 'Mengakomodasi', '2022-04-14 21:05:05', '2022-04-14 21:05:06');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (97, 39, 7, 'Yang penting situasi harmonis terjaga', '2022-04-14 22:32:48', '2022-04-14 22:32:49');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (98, 37, 7, 'Terlalu kaku pada peraturan dan pekerjaan itu kejam', '2022-04-14 22:33:34', '2022-04-14 22:33:35');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (99, 32, 7, 'Menghargai seseorang karena sifat dan perilakunya', '2022-04-14 22:34:13', '2022-04-14 22:34:14');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (100, 30, 7, 'Berempati', '2022-04-14 22:35:02', '2022-04-14 22:35:03');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (101, 23, 7, 'Mengemukakan kesepakatan terlebih dahulu', '2022-04-14 22:35:41', '2022-04-14 22:35:42');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (102, 17, 7, 'Mengambil keputusan berdasar perasaan pribadi dan kondisi orang lain', '2022-04-14 22:36:50', '2022-04-14 22:36:50');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (103, 14, 7, 'Berorientasi pada manusia dan hubungan', '2022-04-14 22:40:19', '2022-04-14 22:40:20');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (104, 9, 7, 'Diyakinkan dengan penjelasan yang menyentuh perasaan', '2022-04-15 07:39:39', '2022-04-15 07:39:40');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (105, 4, 7, 'Subyektif', '2022-04-15 07:40:16', '2022-04-15 07:40:17');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (106, 59, 8, 'Puas ketika mampu beradaptasi dengan momentum yang terjadi', '2022-04-15 07:40:28', '2022-04-15 07:40:29');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (107, 56, 8, 'Daftar dan checklist adalah tugas dan beban', '2022-04-15 07:41:12', '2022-04-15 07:41:13');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (108, 54, 8, 'Hidup seharusnya mengalir sesuai kondisi', '2022-04-15 07:41:51', '2022-04-15 07:41:52');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (109, 50, 8, 'Bertindak sesuai situasi dan kondisi yang terjadi saat itu', '2022-04-15 07:43:01', '2022-04-15 07:43:01');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (110, 47, 8, 'Perubahan adalah semangat hidup', '2022-04-15 07:43:42', '2022-04-15 07:43:43');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (111, 44, 8, 'Situasi last minute membuat bersemangat dan memunculkan potensi', '2022-04-15 07:44:23', '2022-04-15 07:44:23');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (112, 40, 8, 'Ketidakpastian itu seru, menegangkan dan membuat hati lebih senang', '2022-04-15 07:44:52', '2022-04-15 07:44:53');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (113, 33, 8, 'Merasa nyaman bila situasi tetap terbuka terhadap pilihan-pilihan lain', '2022-04-15 07:45:26', '2022-04-15 07:45:26');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (114, 26, 8, 'Pendirian masih bisa berubah tergantung situasi nantinya', '2022-04-15 07:46:00', '2022-04-15 07:46:00');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (115, 24, 8, 'Memperhatikan hal-hal baru dan siap menyesuaikan diri serta mengubah target', '2022-04-15 07:46:38', '2022-04-15 07:46:38');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (116, 21, 8, 'Membiarkan orang lain bertindak bebas asalkan tujuan tercapai', '2022-04-15 07:47:20', '2022-04-15 07:47:20');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (117, 19, 8, 'Berorientasi pada proses', '2022-04-15 07:47:50', '2022-04-15 07:47:51');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (118, 12, 8, 'Aturan, jadwal dan target sangat mengikat dan membebani', '2022-04-15 07:48:30', '2022-04-15 07:48:30');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (119, 3, 8, 'Perubahan mendadak tidak jadi masalah', '2022-04-15 07:49:16', '2022-04-15 07:49:16');
INSERT INTO "public"."pernyataan_kepribadian" VALUES (120, 1, 8, 'Spontan, Fleksibel, tidak diikat waktu', '2022-04-15 07:50:11', '2022-04-15 07:50:12');

-- ----------------------------
-- Table structure for saran_pengembangan_tipe_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."saran_pengembangan_tipe_kepribadian";
CREATE TABLE "public"."saran_pengembangan_tipe_kepribadian" (
  "id" serial NOT NULL,
  "tipe_kepribadian_id" int8 NOT NULL,
  "saran_pengembangan" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of saran_pengembangan_tipe_kepribadian
-- ----------------------------
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (1, 1, 'Belajarlah memahami perasaan & kebutuhan orang lain. ', '2022-03-30 10:58:04', '2022-03-30 10:58:05');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (2, 1, 'Kurangi keinginan untuk mengontrol orang lain atau memerintah mereka untuk menegakkan aturan. ', '2022-03-30 10:58:32', '2022-03-30 10:58:32');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (3, 1, 'Lihatlah lebih banyak sisi positif pada orang lain atau hal lainnya. ', '2022-03-30 10:59:37', '2022-03-30 10:59:38');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (4, 1, 'Terbukalah terhadap perubahan.', '2022-03-30 10:59:55', '2022-03-30 10:59:55');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (5, 2, 'Lihat lebih dalam, lebih antusias, & lebih semangat. ', '2022-03-30 11:00:35', '2022-03-30 11:00:35');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (6, 2, 'Belajarlah mengatakan AtidakA. Jangan menyenangkan semua orang atau Anda dianggap ', '2022-03-30 11:00:56', '2022-03-30 11:00:56');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (7, 2, 'Jangan terjebak zona nyaman dan rutinitas. Cobalah hal baru. Ada banyak hal ', '2022-03-30 11:01:14', '2022-03-30 11:01:15');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (8, 3, 'Observasilah kehidupan sosial, apa yang membuat orang marah, cinta, senang, termotivasi ', '2022-03-30 11:01:55', '2022-03-30 11:01:55');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (9, 3, 'Belajarlah untuk mengenali perasaan Anda dan mengekspresikannya.', '2022-03-30 11:02:14', '2022-03-30 11:02:15');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (10, 3, 'Jadilah orang yang lebih terbuka, keluar dari zona nyaman, eksplorasi ide baru, dan ', '2022-03-30 11:02:37', '2022-03-30 11:02:37');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (11, 3, 'Jangan mencari-cari kesalahan orang hanya untuk menyelesaikan masalahnya.', '2022-03-30 11:02:55', '2022-03-30 11:02:56');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (12, 3, 'Jangan menyimpan informasi yang harusnya dibagi dan belajarlah mempercayakan ', '2022-03-30 11:04:11', '2022-03-30 11:04:12');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (13, 4, 'Jangan takut pada penolakan dan konflik. Anda tidak perlu menyenangkan semua orang.', '2022-03-30 11:05:02', '2022-03-30 11:05:02');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (14, 4, 'Cobalah untuk mulai memikirkan dampak jangka panjang dari keputusan-keputusan kecil di ', '2022-03-30 11:05:30', '2022-03-30 11:05:31');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (15, 4, 'Asah dan kembangkan sisi kreatifitas dan seni dalam diri Anda sebagai modal bagus ', '2022-03-30 11:06:21', '2022-03-30 11:06:22');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (16, 4, 'Cobalah untuk lebih terbuka dan mengekspresikan perasaan Anda. ', '2022-03-30 11:06:40', '2022-03-30 11:06:41');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (17, 5, 'Seimbangkan cara pandang Anda. Jangan hanya melihat sisi negatif & resiko. Namun, ', '2022-03-30 11:08:25', '2022-03-30 11:08:25');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (18, 5, 'Bersabarlah, jangan mudah marah dan menyalahkan orang lain atau situasi. ', '2022-03-30 11:08:49', '2022-03-30 11:08:50');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (19, 5, 'Rileks dan jangan terus menerus berfikir atau menyelesaikan tanggungjawab.', '2022-03-30 11:09:17', '2022-03-30 11:09:18');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (20, 6, 'Belajarlah mengungkapkan emosi & perasaan Anda. ', '2022-03-30 11:10:14', '2022-03-30 11:10:15');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (21, 6, 'Cobalah untuk lebih terbuka pada dunia luar, banyak bergaul, banyak belajar, banyak ', '2022-03-30 11:10:46', '2022-03-30 11:10:47');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (22, 6, 'Hindari perdebatan tidak penting.', '2022-03-30 11:11:08', '2022-03-30 11:11:08');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (23, 6, 'Belajarlah untuk berempati, memberi perhatian dan lebih peka terhadap orang lain.', '2022-03-30 11:11:32', '2022-03-30 11:11:33');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (24, 8, 'Belajarlah membangun hubungan dengan orang lain. Belajar berempati, mendengar aktif, memberi perhatian dan bertukar pendapat. ', '2022-03-30 11:14:38', '2022-03-30 11:14:39');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (25, 8, 'Relaks. Jangan terlalu banyak berfikir. Nikmati hidup Anda tanpa harus bertanya mengapa dan bagaimana', '2022-03-30 11:16:04', '2022-03-30 11:16:05');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (26, 8, 'Cobalah menemukan satu ide, merencanakan dan mewujudkannya. Jangan terlalu sering berganti-ganti ide tetapi tidak satupun yang terwujud. ', '2022-03-30 11:17:07', '2022-03-30 11:17:08');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (27, 9, 'Belajarlah memahami perasaan dan pemikiran orang lain terutama saat bicara dengan ', '2022-03-30 11:17:48', '2022-03-30 11:17:49');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (28, 9, 'Belajarlah untuk sabar, menikmati proses, tidak semua hal bisa dicapai dengan cepat. ', '2022-03-30 11:18:18', '2022-03-30 11:18:19');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (29, 9, 'Sesekali luangkan waktu untuk merenung dan merencanakan masa depan Anda.', '2022-03-30 11:19:04', '2022-03-30 11:19:05');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (30, 9, 'Cobalah untuk mencatat pengamatan-pengamatan Anda termasuk detailnya.', '2022-03-30 11:19:27', '2022-03-30 11:19:28');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (31, 10, 'Jangan terburu-buru dalam mengambil keputusan. Belajarlah untuk fokus dan tidak mudah ', '2022-03-30 11:20:08', '2022-03-30 11:20:09');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (32, 10, 'Jangan menyenangkan semua orang. Begitu pula sebaliknya, tidak semua orang bisa ', '2022-03-30 11:20:36', '2022-03-30 11:20:37');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (33, 10, 'Belajarlah menghadapi kritik dan konflik. Jangan lari.', '2022-03-30 11:20:54', '2022-03-30 11:20:54');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (34, 10, 'Anda punya kecenderungan meterialistis. Hati-hati, tidak semua hal bisa diukur dengan ', '2022-03-30 11:21:13', '2022-03-30 11:21:14');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (35, 11, 'Belajarlah untuk fokus, disiplin, tegas dan konsisten ', '2022-03-30 11:22:06', '2022-03-30 11:22:07');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (36, 11, 'Belajarlah untuk menghadapi konflik dan kritik.', '2022-03-30 11:22:26', '2022-03-30 11:22:27');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (37, 11, 'Pikirkan kebutuhan diri sendiri. Jangan melupakannya karena terlalu peduli pada kebutuhan ', '2022-03-30 11:22:46', '2022-03-30 11:22:47');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (38, 11, 'Jangan terlalu boros. Belajarlah untuk mengelola keuangan sedikit demi sedikit. ', '2022-03-30 11:23:20', '2022-03-30 11:23:21');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (39, 12, 'Cobalah untuk win-win solution. Jangan ingin menang sendiri.', '2022-03-30 11:23:56', '2022-03-30 11:23:57');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (40, 12, 'Belajarlah untuk disiplin dan konsisten.', '2022-03-30 11:24:18', '2022-03-30 11:24:18');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (41, 12, 'Hindari perdebatan tidak penting.', '2022-03-30 11:24:36', '2022-03-30 11:24:36');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (42, 12, 'Belajarlah untuk sedikit waspada. Seimbangkan cara pandang Anda agar tidak terlalu ', '2022-03-30 11:24:54', '2022-03-30 11:24:55');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (43, 12, 'Belajarlah untuk memberi perhatian pada perasaan orang lain. ', '2022-03-30 11:25:19', '2022-03-30 11:25:20');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (44, 13, 'Kurangi keinginan untuk mengontrol dan memaksa orang lain.', '2022-03-30 11:26:12', '2022-03-30 11:26:13');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (45, 13, 'Belajarlah untuk mengontrol emosi dan amarah Anda.', '2022-03-30 11:26:44', '2022-03-30 11:26:45');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (46, 13, 'Cobalah untuk introspeksi diri dan meluangkan waktu sejenak untuk merenung. ', '2022-03-30 11:27:14', '2022-03-30 11:27:15');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (47, 13, 'Belajarlah untuk lebih sabar dan low profile', '2022-03-30 11:27:40', '2022-03-30 11:27:40');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (48, 13, 'Belajarlah untuk memahami orang lain.', '2022-03-30 11:27:59', '2022-03-30 11:28:00');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (49, 14, 'Jangan mengorbankan diri hanya untuk menyenangkan orang lain.', '2022-03-30 11:28:29', '2022-03-30 11:28:30');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (50, 14, 'Jangan mengukur harga diri Anda dari perlakuan, penghargaan dan pujian orang lain.', '2022-03-30 11:28:55', '2022-03-30 11:28:56');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (51, 14, 'Mintalah pertimbangan orang lain dalam mengambil keputusan. Belajarlah untuk lebih ', '2022-03-30 11:29:22', '2022-03-30 11:29:23');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (52, 14, 'Terima tanggungjawab hidup dan belajarlah untuk lebih dewasa. Jangan mengasihani diri ', '2022-03-30 11:29:50', '2022-03-30 11:29:51');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (53, 14, 'Hadapi kritik dan konflik, jangan lari.', '2022-03-30 11:30:10', '2022-03-30 11:30:11');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (54, 15, 'Jangan mengorbankan diri hanya untuk menyenangkan orang lain.', '2022-03-30 11:30:37', '2022-03-30 11:30:37');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (55, 15, 'Jangan mengukur harga diri Anda dari perlakuan orang lain. Jangan mudah kecewa jika ', '2022-03-30 11:31:04', '2022-03-30 11:31:05');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (56, 15, 'Belajarlah untuk tegas dan mengambil keputusan. Menghadapi kritik dan konflik.', '2022-03-30 11:31:29', '2022-03-30 11:31:30');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (57, 15, 'Jangan terlalu bersikap keras terhadap diri sendiri. ', '2022-03-30 11:31:55', '2022-03-30 11:31:56');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (58, 16, 'Belajarlah untuk relaks. Tidak perlu perfeksionis dan selalu kompetitif dengan semua orang.', '2022-03-30 11:47:37', '2022-03-30 11:47:38');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (59, 16, 'Ungkapkan perasaan Anda. Menyatakan perasaan bukanlah kelemahan.', '2022-03-30 11:48:02', '2022-03-30 11:48:03');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (60, 16, 'Belajarlah mengelola emosi Anda. Jangan mudah marah. ', '2022-03-30 11:48:19', '2022-03-30 11:48:20');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (61, 16, 'Belajarlah untuk menghargai dan mengapresiasi orang lain. ', '2022-03-30 11:48:41', '2022-03-30 11:48:42');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (62, 16, 'Jangan terlalu arogan dan menganggap remeh orang lain. Lihat sisi positifnya. Jangan ', '2022-03-30 11:49:13', '2022-03-30 11:49:14');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (63, 7, 'Belajarlah menghadapi kritik. Jika baik maka kritik itu bisa membangun Anda, namun jika tidak abaikan saja. Jangan ragu pula untuk bertanya dan minta saran', '2022-03-30 12:03:52', '2022-03-30 12:03:54');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (64, 7, 'Belajarlah untuk bersikap tegas. Jangan selalu berperasaan dan menyenangkan orang dengan tindakan baik. Bertindak baik itu berbeda dengan bertindak benar', '2022-03-30 12:04:23', '2022-03-30 12:04:24');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (65, 7, 'Jangan terlalu menyalahkan diri dan bersikap terlalu keras pada diri sendiri. Kegagalan adalah hal biasa dan semua orang pernah mengalaminya', '2022-03-30 12:04:46', '2022-03-30 12:04:47');
INSERT INTO "public"."saran_pengembangan_tipe_kepribadian" VALUES (66, 7, 'Jangan terlalu baik pada orang lain tapi melupakan diri sendiri. Anda juga punya tanggungjawab untuk berbuat baik pada diri sendiri', '2022-03-30 12:05:09', '2022-03-30 12:05:10');

-- ----------------------------
-- Table structure for saran_profesi_tipe_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."saran_profesi_tipe_kepribadian";
CREATE TABLE "public"."saran_profesi_tipe_kepribadian" (
  "id" serial NOT NULL,
  "tipe_kepribadian_id" int8 NOT NULL,
  "saran_profesi" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of saran_profesi_tipe_kepribadian
-- ----------------------------
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (1, 1, 'Bidang Manajemen', '2022-04-10 13:57:43', '2022-04-10 13:57:45');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (2, 1, 'Polisi', '2022-04-10 13:58:16', '2022-04-10 13:58:18');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (3, 1, 'Intelijen', '2022-04-11 13:05:09', '2022-04-11 13:05:09');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (4, 1, 'Hakim', '2022-04-11 13:05:25', '2022-04-11 13:05:26');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (5, 1, 'Pengacara', '2022-04-11 13:05:40', '2022-04-11 13:05:41');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (6, 1, 'Dokter', '2022-04-11 13:05:53', '2022-04-11 13:05:54');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (7, 1, 'Akuntan', '2022-04-11 13:06:17', '2022-04-11 13:06:17');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (8, 1, 'Programmer', '2022-04-11 13:06:59', '2022-04-11 13:06:59');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (9, 1, 'System Analys', '2022-04-11 13:07:27', '2022-04-11 13:07:28');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (10, 1, 'Pemimpin Militer', '2022-04-11 13:07:46', '2022-04-11 13:07:47');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (11, 2, 'Architect', '2022-04-11 13:08:21', '2022-04-11 13:08:22');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (12, 2, 'Interior Designer', '2022-04-11 13:09:46', '2022-04-11 13:09:47');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (13, 2, 'Perawat', '2022-04-11 13:10:21', '2022-04-11 13:10:22');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (14, 2, 'Administratif', '2022-04-11 13:10:36', '2022-04-11 13:10:37');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (15, 2, 'Designer', '2022-04-11 13:10:52', '2022-04-11 13:10:53');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (16, 2, 'Child Care', '2022-04-11 13:11:10', '2022-04-11 13:11:10');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (17, 2, 'Konselor', '2022-04-11 13:12:35', '2022-04-11 13:12:36');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (18, 2, 'Back Office Manager', '2022-04-11 13:12:59', '2022-04-11 13:13:00');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (19, 2, 'Penjaga Toko', '2022-04-11 13:13:27', '2022-04-11 13:13:28');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (20, 2, 'Dunia Perhotelan', '2022-04-11 13:13:49', '2022-04-11 13:13:50');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (21, 3, 'Polisi', '2022-04-11 13:28:11', '2022-04-11 13:28:12');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (22, 3, 'Ahli Forensik', '2022-04-11 13:28:30', '2022-04-11 13:28:31');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (23, 3, 'Programmer', '2022-04-11 13:31:56', '2022-04-11 13:31:57');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (24, 3, 'Ahli Komputer', '2022-04-11 13:32:16', '2022-04-11 13:32:17');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (25, 3, 'System Analyst', '2022-04-11 13:34:31', '2022-04-11 13:34:32');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (26, 3, 'Teknisi', '2022-04-11 13:35:19', '2022-04-11 13:35:19');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (27, 3, 'Insinyur', '2022-04-11 13:35:37', '2022-04-11 13:35:38');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (28, 3, 'Mekanik', '2022-04-11 13:35:55', '2022-04-11 13:35:56');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (29, 3, 'Pilot', '2022-04-11 13:36:13', '2022-04-11 13:36:14');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (30, 3, 'Atlit', '2022-04-11 13:36:27', '2022-04-11 13:36:28');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (31, 3, 'Entrepreneur', '2022-04-11 13:37:06', '2022-04-11 13:37:07');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (32, 4, 'Seniman', '2022-04-11 13:38:21', '2022-04-11 13:38:23');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (33, 4, 'Designer', '2022-04-11 13:40:57', '2022-04-11 13:40:58');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (34, 4, 'Pekerja Sosial', '2022-04-11 13:41:22', '2022-04-11 13:41:23');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (35, 4, 'Konselor', '2022-04-11 13:41:38', '2022-04-11 13:41:39');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (36, 4, 'Psikolog', '2022-04-11 13:42:02', '2022-04-11 13:42:03');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (37, 4, 'Guru', '2022-04-11 13:42:17', '2022-04-11 13:42:17');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (38, 4, 'Aktor', '2022-04-11 13:42:42', '2022-04-11 13:42:43');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (39, 4, 'Bidang Hospitality', '2022-04-11 13:43:09', '2022-04-11 13:43:09');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (40, 5, 'Pengajar', '2022-04-11 13:43:36', '2022-04-11 13:43:37');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (41, 5, 'Psikolog', '2022-04-11 13:44:51', '2022-04-11 13:44:52');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (42, 5, 'Dokter', '2022-04-11 14:00:29', '2022-04-11 14:00:30');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (43, 5, 'Konselor', '2022-04-11 14:00:49', '2022-04-11 14:00:49');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (44, 5, 'Pekerja Sosial', '2022-04-11 14:01:07', '2022-04-11 14:01:08');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (45, 5, 'Fotografer', '2022-04-11 14:01:29', '2022-04-11 14:01:29');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (46, 5, 'Seniman', '2022-04-11 14:01:49', '2022-04-11 14:01:50');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (47, 5, 'Designer', '2022-04-11 14:02:12', '2022-04-11 14:02:13');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (48, 5, 'Child Care', '2022-04-11 14:02:38', '2022-04-11 14:02:39');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (49, 6, 'Peneliti', '2022-04-11 14:03:37', '2022-04-11 14:03:38');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (50, 6, 'Ilmuwan', '2022-04-11 14:03:56', '2022-04-11 14:03:57');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (51, 6, 'Insinyur', '2022-04-11 14:04:18', '2022-04-11 14:04:18');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (52, 6, 'Teknisi', '2022-04-11 14:05:59', '2022-04-11 14:06:00');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (53, 6, 'Pengajar', '2022-04-11 14:06:20', '2022-04-11 14:06:21');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (54, 6, 'Profesor', '2022-04-11 14:06:44', '2022-04-11 14:06:44');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (55, 6, 'Dokter', '2022-04-11 14:07:09', '2022-04-11 14:07:10');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (56, 6, 'Research & Development', '2022-04-11 14:07:19', '2022-04-11 14:07:38');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (57, 6, 'Business Analyst', '2022-04-11 14:08:08', '2022-04-11 14:08:09');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (58, 6, 'System Analyst', '2022-04-11 14:08:41', '2022-04-11 14:08:42');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (59, 6, 'Pengacara', '2022-04-11 14:09:00', '2022-04-11 14:09:01');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (60, 6, 'Hakim', '2022-04-11 14:09:15', '2022-04-11 14:09:16');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (61, 6, 'Programmer', '2022-04-11 14:09:30', '2022-04-11 14:09:31');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (62, 6, 'Posisi Strategis dalam Organisasi', '2022-04-11 14:10:00', '2022-04-11 14:10:01');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (63, 7, 'Penulis', '2022-04-11 16:13:35', '2022-04-11 16:13:36');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (64, 7, 'Sastrawan', '2022-04-11 16:13:53', '2022-04-11 16:13:54');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (65, 7, 'Konselor', '2022-04-11 16:14:09', '2022-04-11 16:14:10');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (66, 7, 'Psikolog', '2022-04-11 16:14:27', '2022-04-11 16:14:28');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (67, 7, 'Pengajar', '2022-04-11 16:14:43', '2022-04-11 16:14:44');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (68, 7, 'Seniman', '2022-04-11 16:21:48', '2022-04-11 16:21:49');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (69, 7, 'Rohaniawan', '2022-04-11 16:22:14', '2022-04-11 16:22:14');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (70, 7, 'Bidang Hospitality', '2022-04-11 16:22:37', '2022-04-11 16:22:38');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (71, 8, 'Ilmuwan', '2022-04-12 10:43:46', '2022-04-12 10:43:47');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (72, 8, 'Fotografer', '2022-04-12 10:44:15', '2022-04-12 10:44:16');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (73, 8, 'Programmer', '2022-04-12 11:31:04', '2022-04-12 11:31:05');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (74, 8, 'Ahli Komputer', '2022-04-12 11:31:26', '2022-04-12 11:31:27');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (75, 8, 'System Analyst', '2022-04-12 11:31:53', '2022-04-12 11:31:54');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (76, 8, 'Penulis Buku Teknis', '2022-04-12 11:32:13', '2022-04-12 11:32:14');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (77, 8, 'Ahli Forensik', '2022-04-12 11:32:33', '2022-04-12 11:32:33');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (78, 8, 'Jaksa', '2022-04-12 11:32:51', '2022-04-12 11:32:52');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (79, 8, 'Pengacara', '2022-04-12 11:33:05', '2022-04-12 11:33:06');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (80, 8, 'Teknisi', '2022-04-12 11:33:27', '2022-04-12 11:33:28');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (81, 9, 'Marketing', '2022-04-12 11:34:07', '2022-04-12 11:34:08');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (82, 9, 'Sales', '2022-04-12 11:34:22', '2022-04-12 11:34:23');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (83, 9, 'Polisi', '2022-04-12 11:34:32', '2022-04-12 11:34:33');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (84, 9, 'Entrepreneur', '2022-04-12 11:34:55', '2022-04-12 11:34:55');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (85, 9, 'Pialang Saham', '2022-04-12 11:35:10', '2022-04-12 11:35:11');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (86, 9, 'Technical Support', '2022-04-12 11:35:37', '2022-04-12 11:35:37');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (87, 10, 'Entertainer', '2022-04-12 11:37:23', '2022-04-12 11:37:24');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (88, 10, 'Seniman', '2022-04-12 11:37:41', '2022-04-12 11:37:42');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (89, 10, 'Marketing', '2022-04-12 11:37:56', '2022-04-12 11:37:56');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (90, 10, 'Konselor', '2022-04-12 11:38:16', '2022-04-12 11:38:17');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (91, 10, 'Designer', '2022-04-12 11:38:27', '2022-04-12 11:38:28');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (92, 10, 'Tour Guide', '2022-04-12 11:38:47', '2022-04-12 11:38:48');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (93, 10, 'Bidang Anak - anak', '2022-04-12 11:39:08', '2022-04-12 11:39:09');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (94, 10, 'Bidang Hospitality', '2022-04-12 11:39:38', '2022-04-12 11:39:39');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (95, 11, 'Konselor', '2022-04-12 11:40:05', '2022-04-12 11:40:06');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (96, 11, 'Psikolog', '2022-04-12 11:40:26', '2022-04-12 11:40:27');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (97, 11, 'Entertainer', '2022-04-12 11:40:40', '2022-04-12 11:40:41');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (98, 11, 'Pengajar', '2022-04-12 11:40:54', '2022-04-12 11:40:55');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (99, 11, 'Motivator', '2022-04-12 11:41:06', '2022-04-12 11:41:07');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (100, 11, 'Presenter', '2022-04-12 11:41:23', '2022-04-12 11:41:24');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (101, 11, 'Reporter', '2022-04-12 11:41:38', '2022-04-12 11:41:39');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (102, 11, 'MC', '2022-04-12 11:41:50', '2022-04-12 11:41:50');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (103, 11, 'Seniman', '2022-04-12 11:42:07', '2022-04-12 11:42:08');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (104, 11, 'Hospitality', '2022-04-12 11:42:28', '2022-04-12 11:42:28');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (105, 12, 'Pengacara', '2022-04-12 11:43:07', '2022-04-12 11:43:07');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (106, 12, 'Psikolog', '2022-04-12 11:43:28', '2022-04-12 11:43:28');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (107, 12, 'Konsultan', '2022-04-12 11:43:40', '2022-04-12 11:43:40');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (108, 12, 'Ilmuwan', '2022-04-12 11:43:57', '2022-04-12 11:43:58');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (109, 12, 'Aktor', '2022-04-12 11:44:11', '2022-04-12 11:44:12');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (110, 12, 'Marketing', '2022-04-12 11:44:23', '2022-04-12 11:44:24');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (111, 12, 'Programmer', '2022-04-12 11:44:43', '2022-04-12 11:44:44');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (112, 12, 'Fotografer', '2022-04-12 11:44:55', '2022-04-12 11:44:56');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (113, 13, 'Militer', '2022-04-12 11:45:28', '2022-04-12 11:45:29');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (114, 13, 'Manajer', '2022-04-12 12:51:46', '2022-04-12 12:51:47');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (115, 13, 'Polisi', '2022-04-12 12:51:59', '2022-04-12 12:52:00');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (116, 13, 'Hakim', '2022-04-12 12:52:14', '2022-04-12 12:52:15');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (117, 13, 'Pengacara', '2022-04-12 12:52:25', '2022-04-12 12:52:25');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (118, 13, 'Guru', '2022-04-12 12:52:34', '2022-04-12 12:52:35');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (119, 13, 'Sales', '2022-04-12 12:52:50', '2022-04-12 12:52:51');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (120, 13, 'Auditor', '2022-04-12 12:53:12', '2022-04-12 12:53:13');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (121, 13, 'Akuntan', '2022-04-12 12:53:26', '2022-04-12 12:53:27');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (122, 13, 'System Analyst', '2022-04-12 12:53:44', '2022-04-12 12:53:45');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (123, 14, 'Perencana Keuangan', '2022-04-12 12:54:31', '2022-04-12 12:54:32');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (124, 14, 'Perawat', '2022-04-12 12:55:14', '2022-04-12 12:55:14');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (125, 14, 'Guru', '2022-04-12 12:55:25', '2022-04-12 12:55:26');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (126, 14, 'Bidang Anak - anak', '2022-04-12 12:55:47', '2022-04-12 12:55:48');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (127, 14, 'Konselor', '2022-04-12 12:56:04', '2022-04-12 12:56:04');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (128, 14, 'Administratif', '2022-04-12 12:56:24', '2022-04-12 12:56:24');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (129, 14, 'Hospitality', '2022-04-12 12:56:39', '2022-04-12 12:56:40');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (130, 15, 'Konsultan', '2022-04-12 12:57:11', '2022-04-12 12:57:12');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (131, 15, 'Psikolog', '2022-04-12 12:57:34', '2022-04-12 12:57:34');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (132, 15, 'Konselor', '2022-04-12 12:57:44', '2022-04-12 12:57:45');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (133, 15, 'Pengajar', '2022-04-12 12:58:09', '2022-04-12 12:58:09');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (134, 15, 'Marketing', '2022-04-12 12:58:20', '2022-04-12 12:58:20');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (135, 15, 'HRD', '2022-04-12 12:58:39', '2022-04-12 12:58:40');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (136, 15, 'Event Coordinator', '2022-04-12 12:58:57', '2022-04-12 12:58:58');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (137, 15, 'Entertainer', '2022-04-12 12:59:16', '2022-04-12 12:59:16');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (138, 15, 'Penulis', '2022-04-12 12:59:36', '2022-04-12 12:59:37');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (139, 15, 'Motivator', '2022-04-12 12:59:49', '2022-04-12 12:59:50');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (140, 16, 'Entrepreneur', '2022-04-12 13:00:27', '2022-04-12 13:00:28');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (141, 16, 'Pengacara', '2022-04-12 13:00:43', '2022-04-12 13:00:44');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (142, 16, 'Hakim', '2022-04-12 13:00:58', '2022-04-12 13:01:00');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (143, 16, 'Konsultan', '2022-04-12 13:01:11', '2022-04-12 13:01:11');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (144, 16, 'Pemimpin Organisasi', '2022-04-12 13:01:30', '2022-04-12 13:01:31');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (145, 16, 'Business Analyst', '2022-04-12 13:01:51', '2022-04-12 13:01:51');
INSERT INTO "public"."saran_profesi_tipe_kepribadian" VALUES (146, 16, 'Bidang Finansial', '2022-04-12 13:02:12', '2022-04-12 13:02:13');

-- ----------------------------
-- Table structure for soal_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."soal_kepribadian";
CREATE TABLE "public"."soal_kepribadian" (
  "id" serial NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of soal_kepribadian
-- ----------------------------
INSERT INTO "public"."soal_kepribadian" VALUES (1, '2022-04-10 14:24:04', '2022-04-10 14:24:05');
INSERT INTO "public"."soal_kepribadian" VALUES (2, '2022-04-10 14:24:11', '2022-04-10 14:24:12');
INSERT INTO "public"."soal_kepribadian" VALUES (3, '2022-04-10 14:24:16', '2022-04-10 14:24:18');
INSERT INTO "public"."soal_kepribadian" VALUES (4, '2022-04-10 14:28:28', '2022-04-10 14:28:29');
INSERT INTO "public"."soal_kepribadian" VALUES (5, '2022-04-10 14:28:37', '2022-04-10 14:28:38');
INSERT INTO "public"."soal_kepribadian" VALUES (6, '2022-04-10 14:29:37', '2022-04-10 14:29:39');
INSERT INTO "public"."soal_kepribadian" VALUES (7, '2022-04-10 14:29:44', '2022-04-10 14:29:45');
INSERT INTO "public"."soal_kepribadian" VALUES (8, '2022-04-10 14:29:51', '2022-04-10 14:29:52');
INSERT INTO "public"."soal_kepribadian" VALUES (9, '2022-04-10 14:29:56', '2022-04-10 14:29:57');
INSERT INTO "public"."soal_kepribadian" VALUES (10, '2022-04-10 14:30:04', '2022-04-10 14:30:05');
INSERT INTO "public"."soal_kepribadian" VALUES (11, '2022-04-10 14:30:10', '2022-04-10 14:30:11');
INSERT INTO "public"."soal_kepribadian" VALUES (12, '2022-04-10 14:30:15', '2022-04-10 14:30:16');
INSERT INTO "public"."soal_kepribadian" VALUES (13, '2022-04-10 14:30:29', '2022-04-10 14:30:30');
INSERT INTO "public"."soal_kepribadian" VALUES (14, '2022-04-10 14:30:35', '2022-04-10 14:30:36');
INSERT INTO "public"."soal_kepribadian" VALUES (15, '2022-04-10 14:30:41', '2022-04-10 14:30:42');
INSERT INTO "public"."soal_kepribadian" VALUES (16, '2022-04-10 14:30:46', '2022-04-10 14:30:47');
INSERT INTO "public"."soal_kepribadian" VALUES (17, '2022-04-10 14:30:53', '2022-04-10 14:30:54');
INSERT INTO "public"."soal_kepribadian" VALUES (18, '2022-04-10 14:30:59', '2022-04-10 14:31:00');
INSERT INTO "public"."soal_kepribadian" VALUES (19, '2022-04-10 14:31:05', '2022-04-10 14:31:06');
INSERT INTO "public"."soal_kepribadian" VALUES (20, '2022-04-10 14:31:11', '2022-04-10 14:31:12');
INSERT INTO "public"."soal_kepribadian" VALUES (21, '2022-04-10 14:31:17', '2022-04-10 14:31:18');
INSERT INTO "public"."soal_kepribadian" VALUES (22, '2022-04-10 14:31:42', '2022-04-10 14:31:43');
INSERT INTO "public"."soal_kepribadian" VALUES (23, '2022-04-10 14:31:46', '2022-04-10 14:31:47');
INSERT INTO "public"."soal_kepribadian" VALUES (24, '2022-04-10 14:31:49', '2022-04-10 14:31:50');
INSERT INTO "public"."soal_kepribadian" VALUES (25, '2022-04-10 14:31:54', '2022-04-10 14:31:54');
INSERT INTO "public"."soal_kepribadian" VALUES (26, '2022-04-10 14:31:58', '2022-04-10 14:31:59');
INSERT INTO "public"."soal_kepribadian" VALUES (27, '2022-04-10 14:32:02', '2022-04-10 14:32:02');
INSERT INTO "public"."soal_kepribadian" VALUES (28, '2022-04-10 14:32:07', '2022-04-10 14:32:08');
INSERT INTO "public"."soal_kepribadian" VALUES (29, '2022-04-10 14:32:12', '2022-04-10 14:32:13');
INSERT INTO "public"."soal_kepribadian" VALUES (30, '2022-04-10 14:32:17', '2022-04-10 14:32:17');
INSERT INTO "public"."soal_kepribadian" VALUES (31, '2022-04-10 14:32:20', '2022-04-10 14:32:21');
INSERT INTO "public"."soal_kepribadian" VALUES (32, '2022-04-10 14:32:24', '2022-04-10 14:32:25');
INSERT INTO "public"."soal_kepribadian" VALUES (33, '2022-04-10 14:32:28', '2022-04-10 14:32:29');
INSERT INTO "public"."soal_kepribadian" VALUES (34, '2022-04-10 14:32:32', '2022-04-10 14:32:32');
INSERT INTO "public"."soal_kepribadian" VALUES (35, '2022-04-10 14:32:36', '2022-04-10 14:32:37');
INSERT INTO "public"."soal_kepribadian" VALUES (36, '2022-04-10 14:32:40', '2022-04-10 14:32:41');
INSERT INTO "public"."soal_kepribadian" VALUES (37, '2022-04-10 14:32:43', '2022-04-10 14:32:44');
INSERT INTO "public"."soal_kepribadian" VALUES (38, '2022-04-10 14:32:46', '2022-04-10 14:32:47');
INSERT INTO "public"."soal_kepribadian" VALUES (39, '2022-04-10 14:32:50', '2022-04-10 14:32:50');
INSERT INTO "public"."soal_kepribadian" VALUES (40, '2022-04-10 14:32:53', '2022-04-10 14:32:54');
INSERT INTO "public"."soal_kepribadian" VALUES (41, '2022-04-10 14:33:02', '2022-04-10 14:33:03');
INSERT INTO "public"."soal_kepribadian" VALUES (42, '2022-04-10 14:33:07', '2022-04-10 14:33:08');
INSERT INTO "public"."soal_kepribadian" VALUES (43, '2022-04-10 14:33:10', '2022-04-10 14:33:11');
INSERT INTO "public"."soal_kepribadian" VALUES (44, '2022-04-10 14:33:13', '2022-04-10 14:33:14');
INSERT INTO "public"."soal_kepribadian" VALUES (45, '2022-04-10 14:33:16', '2022-04-10 14:33:17');
INSERT INTO "public"."soal_kepribadian" VALUES (46, '2022-04-10 14:33:21', '2022-04-10 14:33:22');
INSERT INTO "public"."soal_kepribadian" VALUES (47, '2022-04-10 14:33:26', '2022-04-10 14:33:27');
INSERT INTO "public"."soal_kepribadian" VALUES (48, '2022-04-10 14:33:30', '2022-04-10 14:33:31');
INSERT INTO "public"."soal_kepribadian" VALUES (49, '2022-04-10 14:33:33', '2022-04-10 14:33:34');
INSERT INTO "public"."soal_kepribadian" VALUES (50, '2022-04-10 14:33:37', '2022-04-10 14:33:37');
INSERT INTO "public"."soal_kepribadian" VALUES (51, '2022-04-10 14:33:40', '2022-04-10 14:33:41');
INSERT INTO "public"."soal_kepribadian" VALUES (52, '2022-04-10 14:33:43', '2022-04-10 14:33:45');
INSERT INTO "public"."soal_kepribadian" VALUES (53, '2022-04-10 14:33:47', '2022-04-10 14:33:48');
INSERT INTO "public"."soal_kepribadian" VALUES (54, '2022-04-10 14:33:51', '2022-04-10 14:33:51');
INSERT INTO "public"."soal_kepribadian" VALUES (55, '2022-04-10 14:33:54', '2022-04-10 14:33:55');
INSERT INTO "public"."soal_kepribadian" VALUES (56, '2022-04-10 14:33:58', '2022-04-10 14:33:59');
INSERT INTO "public"."soal_kepribadian" VALUES (57, '2022-04-10 14:34:02', '2022-04-10 14:34:02');
INSERT INTO "public"."soal_kepribadian" VALUES (58, '2022-04-10 14:34:10', '2022-04-10 14:34:11');
INSERT INTO "public"."soal_kepribadian" VALUES (59, '2022-04-10 14:34:14', '2022-04-10 14:34:15');
INSERT INTO "public"."soal_kepribadian" VALUES (60, '2022-04-10 14:34:18', '2022-04-10 14:34:19');

-- ----------------------------
-- Table structure for tipe_kepribadian
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipe_kepribadian";
CREATE TABLE "public"."tipe_kepribadian" (
  "id" serial NOT NULL,
  "nama" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "kode" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of tipe_kepribadian
-- ----------------------------
INSERT INTO "public"."tipe_kepribadian" VALUES (1, 'Bertanggungjawab', 'ISTJ', '2022-03-26 15:24:44', '2022-03-26 15:24:45');
INSERT INTO "public"."tipe_kepribadian" VALUES (2, 'Setia', 'ISFJ', '2022-03-26 15:25:49', '2022-03-26 15:25:50');
INSERT INTO "public"."tipe_kepribadian" VALUES (3, 'Pragmatis', 'ISTP', '2022-03-29 20:55:30', '2022-03-29 20:55:31');
INSERT INTO "public"."tipe_kepribadian" VALUES (4, 'Artistik', 'ISFP', '2022-03-29 20:56:10', '2022-03-29 20:56:11');
INSERT INTO "public"."tipe_kepribadian" VALUES (5, 'Reflektif', 'INFJ', '2022-03-29 20:57:33', '2022-03-29 20:57:34');
INSERT INTO "public"."tipe_kepribadian" VALUES (6, 'Independen', 'INTJ', '2022-03-29 20:58:38', '2022-03-29 20:58:39');
INSERT INTO "public"."tipe_kepribadian" VALUES (7, 'Idealis', 'INFP', '2022-03-29 20:59:09', '2022-03-29 20:59:09');
INSERT INTO "public"."tipe_kepribadian" VALUES (8, 'Konseptual', 'INTP', '2022-03-29 20:59:37', '2022-03-29 20:59:38');
INSERT INTO "public"."tipe_kepribadian" VALUES (9, 'Spontan', 'ESTP', '2022-03-29 20:59:59', '2022-03-29 21:00:00');
INSERT INTO "public"."tipe_kepribadian" VALUES (10, 'Murah Hati', 'ESFP', '2022-03-29 21:00:23', '2022-03-29 21:00:24');
INSERT INTO "public"."tipe_kepribadian" VALUES (11, 'Optimis', 'ENFP', '2022-03-29 21:00:44', '2022-03-29 21:00:46');
INSERT INTO "public"."tipe_kepribadian" VALUES (12, 'Inovatif Kreatif', 'ENTP', '2022-03-29 21:01:20', '2022-03-29 21:01:21');
INSERT INTO "public"."tipe_kepribadian" VALUES (13, 'Konservatif Disiplin', 'ESTJ', '2022-03-29 21:02:02', '2022-03-29 21:02:03');
INSERT INTO "public"."tipe_kepribadian" VALUES (14, 'Harmonis', 'ESFJ', '2022-03-29 21:02:43', '2022-03-29 21:02:44');
INSERT INTO "public"."tipe_kepribadian" VALUES (15, 'Meyakinkan', 'ENFJ', '2022-03-29 21:03:24', '2022-03-29 21:03:25');
INSERT INTO "public"."tipe_kepribadian" VALUES (16, 'Pemimpin Alami', 'ENTJ', '2022-03-29 21:03:54', '2022-03-29 21:03:55');

-- ----------------------------
-- Indexes structure for table deskripsi_tipe_kepribadian
-- ----------------------------
CREATE INDEX "deskripsi_tipe_kepribadian_tipe_kepribadian_id_foreign" ON "public"."deskripsi_tipe_kepribadian" USING btree (
  "tipe_kepribadian_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table deskripsi_tipe_kepribadian
-- ----------------------------
ALTER TABLE "public"."deskripsi_tipe_kepribadian" ADD CONSTRAINT "deskripsi_tipe_kepribadian_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table dimensi_kepribadian
-- ----------------------------
ALTER TABLE "public"."dimensi_kepribadian" ADD CONSTRAINT "dimensi_kepribadian_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table instansi
-- ----------------------------
ALTER TABLE "public"."instansi" ADD CONSTRAINT "instansi_pkey" PRIMARY KEY ("id");
