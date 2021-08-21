/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 10-май-2021 01:03:25 				*/
/*  DBMS       : MySql 						*/
/* ---------------------------------------------------- */

SET FOREIGN_KEY_CHECKS=0
; 
/* Drop Tables */

DROP TABLE IF EXISTS `content` CASCADE
;

DROP TABLE IF EXISTS `content_genres` CASCADE
;

DROP TABLE IF EXISTS `content_m2m_content_genres` CASCADE
;

DROP TABLE IF EXISTS `content_m2m_resolutions` CASCADE
;

DROP TABLE IF EXISTS `content_movies` CASCADE
;

DROP TABLE IF EXISTS `content_movies_urls` CASCADE
;

DROP TABLE IF EXISTS `content_procent_types` CASCADE
;

DROP TABLE IF EXISTS `content_series` CASCADE
;

DROP TABLE IF EXISTS `content_series_seasons` CASCADE
;

DROP TABLE IF EXISTS `content_series_url` CASCADE
;

DROP TABLE IF EXISTS `content_subtitles` CASCADE
;

DROP TABLE IF EXISTS `content_types` CASCADE
;

DROP TABLE IF EXISTS `content_voice_acting` CASCADE
;

DROP TABLE IF EXISTS `copyrigth_holders` CASCADE
;

DROP TABLE IF EXISTS `histories` CASCADE
;

DROP TABLE IF EXISTS `languages` CASCADE
;

DROP TABLE IF EXISTS `profile_types` CASCADE
;

DROP TABLE IF EXISTS `profile_types_m2m_contents` CASCADE
;

DROP TABLE IF EXISTS `profile_types_m2m_contents_user_subscription_types` CASCADE
;

DROP TABLE IF EXISTS `profiles` CASCADE
;

DROP TABLE IF EXISTS `ratings` CASCADE
;

DROP TABLE IF EXISTS `resolutions` CASCADE
;

DROP TABLE IF EXISTS `series` CASCADE
;

DROP TABLE IF EXISTS `series_seasons` CASCADE
;

DROP TABLE IF EXISTS `user_card_payment_systems` CASCADE
;

DROP TABLE IF EXISTS `user_cards` CASCADE
;

DROP TABLE IF EXISTS `user_comments` CASCADE
;

DROP TABLE IF EXISTS `user_subscription_prices` CASCADE
;

DROP TABLE IF EXISTS `user_subscription_types` CASCADE
;

DROP TABLE IF EXISTS `user_subscription_types_m2m_resolutions` CASCADE
;

DROP TABLE IF EXISTS `users` CASCADE
;

DROP TABLE IF EXISTS `users_m2m_user_cards` CASCADE
;

/* Create Tables */

CREATE TABLE `content`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`c_name` VARCHAR(250) NOT NULL,
	`c_release_date` BIT NULL,
	`c_text_description` VARCHAR(300) NULL,
	`c_duration` TIME NOT NULL CHECK ( c_duration > 0 ) DEFAULT 0,
	`ch_id` BIGINT NULL,
	`с_is_realesed` VARCHAR(50) NOT NULL DEFAULT 0,
	CONSTRAINT `PK_content` PRIMARY KEY (`c_id` ASC, `ct_id` ASC)
);

CREATE TABLE `content_genres`
(
	`cg_id` INT NOT NULL,
	`cg_description` VARCHAR(70) NOT NULL UNIQUE ,
	CONSTRAINT `PK_content_genres` PRIMARY KEY (`cg_id` ASC)
);

CREATE TABLE `content_m2m_content_genres`
(
	`c_id` BIGINT NOT NULL,
	`cg_id` INT NOT NULL,
	`ct_id` INT NOT NULL,
	CONSTRAINT `PK_content_m2m_content_genres` PRIMARY KEY (`c_id` ASC, `cg_id` ASC, `ct_id` ASC)
);

CREATE TABLE `content_m2m_resolutions`
(
	`r_id` SMALLINT NOT NULL,
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	CONSTRAINT `PK_content_m2m_resolutions` PRIMARY KEY (`r_id` ASC, `c_id` ASC, `ct_id` ASC)
);

CREATE TABLE `content_movies_urls`
(
	`ct_id` INT NOT NULL,
	`c_id` BIGINT NOT NULL,
	`r_id` SMALLINT NOT NULL,
	`cmu_url` VARCHAR(400) NULL,
	CONSTRAINT `PK_content_movies_urls` PRIMARY KEY (`ct_id` ASC, `c_id` ASC, `r_id` ASC)
);

CREATE TABLE `content_procent_types`
(
	`cpt_id` BIGINT NOT NULL,
	`cpt_description` VARCHAR(50) NOT NULL,
	`cpt_precent` FLOAT(5,2) NOT NULL CHECK ( cpt_precent > 0 ),
	CONSTRAINT `PK_content_procent_types` PRIMARY KEY (`cpt_id` ASC)
);

CREATE TABLE `content_series`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	CONSTRAINT `PK_cartoon_series` PRIMARY KEY (`ct_id` ASC, `c_id` ASC)
);

CREATE TABLE `content_series_seasons`
(
	`ct_id` INT NOT NULL,
	`c_id` BIGINT NOT NULL,
	`css_id` TINYINT NOT NULL,
	`css_episodes_amount` TINYINT NOT NULL CHECK ( css_episodes_amount > 0 ),
	CONSTRAINT `PK_content_series_seasons` PRIMARY KEY (`ct_id` ASC, `c_id` ASC, `css_id` ASC)
);

CREATE TABLE `content_series_url`
(
	`ct_id` INT NOT NULL,
	`c_id` BIGINT NOT NULL,
	`css_id` TINYINT NOT NULL,
	`cu_episode_id` SMALLINT NOT NULL, ## CHECK ( cu_episode_id <= kcinema.content_series_seasons.css_episodes_amount ),
	`r_id` SMALLINT NOT NULL,
	`csu_url` VARCHAR(300) NULL,
	CONSTRAINT `PK_hg` PRIMARY KEY (`cu_episode_id` ASC, `css_id` ASC, `c_id` ASC, `ct_id` ASC, `r_id` ASC)
);

CREATE TABLE `content_subtitles`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`cs_id` BIGINT NOT NULL,
	`cs_author` VARCHAR(100) NULL,
	`l_literal_code` VARCHAR(3) NULL,
	CONSTRAINT `PK_content_subtitles` PRIMARY KEY (`cs_id` ASC, `ct_id` ASC, `c_id` ASC)
);

CREATE TABLE `content_types`
(
	`ct_id` INT NOT NULL,
	`ct_description` VARCHAR(50) NULL ,
	`ct_table` VARCHAR(50) NOT NULL UNIQUE,
	`ct_max_genres_amont` SMALLINT NULL CHECK ( ct_max_genres_amont < 10 ),
	CONSTRAINT `PK_content_types` PRIMARY KEY (`ct_id` ASC)
);

CREATE TABLE `content_voice_acting`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`cva_id` BIGINT NOT NULL,
	`cva_author` VARCHAR(100) NOT NULL,
	`l_literal_code` VARCHAR(3) NULL,
	CONSTRAINT `PK_content_voice_acting` PRIMARY KEY (`cva_id` ASC, `ct_id` ASC, `c_id` ASC)
);

CREATE TABLE `copyrigth_holders`
(
	`ch_id` BIGINT NOT NULL,
	`ch_name` VARCHAR(150) NULL,
	`cpt_id` BIGINT NULL,
	CONSTRAINT `PK_copyrigth_holders` PRIMARY KEY (`ch_id` ASC)
);

CREATE TABLE `histories`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`u_id` BIGINT NOT NULL,
	`h_watch_time` TIME NOT NULL,
	`h_watch_point` TIME NULL CHECK ( h_watch_point > 0),
	CONSTRAINT `PK_histories` PRIMARY KEY (`c_id` ASC, `h_watch_time` ASC, `u_id` ASC, `ct_id` ASC),
);

CREATE TABLE `languages`
(
	`l_literal_code` VARCHAR(3) NOT NULL,
	`l_description` VARCHAR(60) NULL,
	CONSTRAINT `PK_languages` PRIMARY KEY (`l_literal_code` ASC)
);

CREATE TABLE `profile_types`
(
	`pt_id` INT NOT NULL,
	`pt_description` VARCHAR(50) NOT NULL,
	CONSTRAINT `PK_profile_types` PRIMARY KEY (`pt_id` ASC)
);

CREATE TABLE `profile_types_m2m_contents`
(
	`c_id` BIGINT NOT NULL,
	`pt_id` INT NOT NULL,
	`ct_id` INT NOT NULL,
	CONSTRAINT `PK_profile_types_m2m_contents` PRIMARY KEY (`c_id` ASC, `pt_id` ASC, `ct_id` ASC)
);

CREATE TABLE `profile_types_m2m_contents_user_subscription_types`
(
	`c_id` BIGINT NOT NULL,
	`pt_id` INT NOT NULL,
	`ct_id` INT NOT NULL,
	`ust_id` TINYINT NOT NULL,
	CONSTRAINT `PK_profile_types_m2m_contents` PRIMARY KEY (`c_id` ASC, `ust_id` ASC, `ct_id` ASC, `pt_id` ASC)
);

CREATE TABLE `profiles`
(
	`p_id` BIGINT NOT NULL,
	`u_id` BIGINT NULL,
	`pt_id` INT NULL,
	`p_name` VARCHAR(310) NOT NULL,
	`p_surname` VARCHAR(310) NULL,
	`profiles_is_active` BIT NULL,
	CONSTRAINT `PK_profiles` PRIMARY KEY (`p_id` ASC)
);

CREATE TABLE `ratings`
(
	`r_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`r_1_amount` TINYINT NOT NULL CHECK ( r_1_amount >= 0 AND r_1_amount <= ratings.r_common_amount) DEFAULT 0,
	`r_2_amount` TINYINT NOT NULL CHECK ( r_2_amount >= 0 AND r_2_amount <= ratings.r_common_amount) DEFAULT 0,
	`r_3_amount` TINYINT NOT NULL CHECK ( r_3_amount >= 0 AND r_3_amount <= ratings.r_common_amount) DEFAULT 0,
	`r_4_amount` TINYINT NOT NULL CHECK ( r_4_amount >= 0 AND r_4_amount <= ratings.r_common_amount) DEFAULT 0,
	`r_5_amount` TINYINT NOT NULL CHECK ( r_5_amount >= 0 AND r_5_amount <= ratings.r_common_amount) DEFAULT 0,
	`r_common_amount` BIGINT NOT NULL CHECK ( r_common_amount >= 0) DEFAULT 0,
	`r_border_amount` BIGINT NULL CHECK ( ratings.r_border_amount >= 0 ) DEFAULT 0,
	`r_value` FLOAT(3,2) NULL CHECK ( r_value >= 0 AND r_value <= 5 ) DEFAULT 0,
	`r_is_active` BIT NULL DEFAULT FALSE,
	CONSTRAINT `PK_ratings` PRIMARY KEY (`ct_id` ASC, `r_id` ASC)
);

CREATE TABLE `resolutions`
(
	`r_id` SMALLINT NOT NULL,
	`r_resolution` VARCHAR(20) NOT NULL,
	`r_fps` VARCHAR(5) NOT NULL check ( r_fps >= 12),
	CONSTRAINT `PK_resolutions` PRIMARY KEY (`r_id` ASC)
);

CREATE TABLE `user_card_payment_systems`
(
	`ucps_id` INT NOT NULL,
	`ucps_description` VARCHAR(25) NOT NULL,
	CONSTRAINT `PK_user_card_payment_systems` PRIMARY KEY (`ucps_id` ASC)
);

CREATE TABLE `user_cards`
(
    `uc_number`   VARCHAR(16) NOT NULL,
    `ucps_id`     INT         NULL,
    `uc_cvv`      VARCHAR(3)  NOT NULL,
    `uc_validity` DATE        NOT NULL,
    `uc_user_amount` SMALLINT NOT NULL DEFAULT 0,
    CONSTRAINT `PK_user_cards` PRIMARY KEY (`uc_number` ASC)
);

CREATE TABLE `user_comments`
(
	`uc_id` BIGINT NOT NULL,
	`c_id` BIGINT NULL,
	`ct_id` INT NULL,
	`u_id` BIGINT NULL,
	`uc_text` VARCHAR(500) NOT NULL,
	`uc_date_time` DATETIME NOT NULL,
	CONSTRAINT `PK_user_comments` PRIMARY KEY (`uc_id` ASC)
);

CREATE TABLE `user_subscription_prices`
(
	`usp_id` INT NOT NULL,
	`usp_price` FLOAT(10,2) NOT NULL,
	`usp_description` VARCHAR(1) NOT NULL,
	CONSTRAINT `PK_user_subscription_prices` PRIMARY KEY (`usp_id` ASC)
);

CREATE TABLE `user_subscription_types`
(
	`ust_id` TINYINT NOT NULL,
	`ust_descriprion` VARCHAR(50) NULL,
	`usp_id` INT NULL,
	CONSTRAINT `PK_user_sybscription_types` PRIMARY KEY (`ust_id` ASC)
);

CREATE TABLE `user_subscription_types_m2m_resolutions`
(
	`ust_id` TINYINT NOT NULL,
	`r_id` SMALLINT NOT NULL,
	CONSTRAINT `PK_user_subscription_types_m2m_resolutions` PRIMARY KEY (`r_id` ASC, `ust_id` ASC)
)

;

CREATE TABLE `users`
(
	`u_id` BIGINT NOT NULL,
	`u_email` VARCHAR(320) NOT NULL UNIQUE ,
	`u_password` VARCHAR(50) NOT NULL CHECK ( LENGTH(u_password) > 6 ),
	`u_is_active` BIT NOT NULL,
	`u_last_payment_date` DATETIME NOT NULL CHECK ( u_last_payment_date > DATE_SUB(NOW(), INTERVAL 30 DAY)),
	`u_is_auto_payment` BIT NOT NULL default FALSE,
	`ust_id` TINYINT NULL,
	`u_is_delete` BIT NOT NULL default FALSE,
	CONSTRAINT `PK_users` PRIMARY KEY (`u_id` ASC)
);

CREATE TABLE `users_m2m_user_cards`
(
	`u_id` BIGINT NOT NULL,
	`uc_number` VARCHAR(16) NOT NULL,
	`umuc_card_is_active` BIT NOT NULL DEFAULT FALSE,
	CONSTRAINT `PK_users_m2m_user_cards` PRIMARY KEY (`u_id` ASC, `uc_number` ASC)
);

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE `content` 
 ADD INDEX `IXFK_content_content_types` (`ct_id` ASC)
;

ALTER TABLE `content` 
 ADD INDEX `IXFK_content_copyrigth_holders` (`ch_id` ASC)
;

ALTER TABLE `content` 
 ADD INDEX `IDX_content_release_date` (`c_release_date` ASC)
;

ALTER TABLE `content` 
 ADD INDEX `IDX_content_name_content_type_id` (`ct_id` ASC, `c_name` ASC)
;

ALTER TABLE `content_m2m_content_genres` 
 ADD INDEX `IXFK_content_m2m_content_genres_content` (`c_id` ASC, `ct_id` ASC)
;

ALTER TABLE `content_m2m_content_genres` 
 ADD INDEX `IXFK_content_m2m_content_genres_content_genres` (`cg_id` ASC)
;

ALTER TABLE `content_m2m_resolutions` 
 ADD INDEX `IXFK_content_m2m_resolutions_content` (`c_id` ASC, `ct_id` ASC)
;

ALTER TABLE `content_m2m_resolutions` 
 ADD INDEX `IXFK_content_m2m_resolutions_resolutions` (`r_id` ASC)
;

ALTER TABLE `content_movies_urls` 
 ADD INDEX `IXFK_content_movies_urls_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `content_movies_urls` 
 ADD INDEX `IXFK_content_movies_urls_resolutions` (`r_id` ASC)
;

ALTER TABLE `content_series` 
 ADD INDEX `IXFK_content_series_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `content_series_seasons` 
 ADD INDEX `IXFK_content_series_seasons_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `content_series_url` 
 ADD INDEX `IXFK_content_series_url_resolutions` (`r_id` ASC)
;

ALTER TABLE `content_series_url` 
 ADD INDEX `IXFK_content_url_content_series_seasons` (`ct_id` ASC, `c_id` ASC, `css_id` ASC)
;

ALTER TABLE `content_subtitles` 
 ADD INDEX `IXFK_content_subtitles_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `content_voice_acting` 
 ADD INDEX `IXFK_content_voice_acting_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `copyrigth_holders` 
 ADD INDEX `IXFK_copyrigth_holders_content_procent_types` (`cpt_id` ASC)
;

ALTER TABLE `histories` 
 ADD INDEX `IXFK_histories_content` (`c_id` ASC, `ct_id` ASC)
;

ALTER TABLE `histories` 
 ADD INDEX `IXFK_histories_users` (`u_id` ASC)
;

ALTER TABLE `histories` 
 ADD INDEX `IDX_content_id_histories_watch_point` (`c_id` ASC, `h_watch_point` ASC)
;

ALTER TABLE `profile_types_m2m_contents` 
 ADD INDEX `IXFK_profile_types_m2m_contents_content` (`c_id` ASC, `ct_id` ASC)
;

ALTER TABLE `profile_types_m2m_contents` 
 ADD INDEX `IXFK_profile_types_m2m_contents_profile_types` (`pt_id` ASC)
;

ALTER TABLE `profile_types_m2m_contents_user_subscription_types` 
 ADD INDEX `IXFK_p_types_m2m_contents_user_s_types_p_types_m2m_contents` (`c_id` ASC, `pt_id` ASC, `ct_id` ASC)
;

ALTER TABLE `profile_types_m2m_contents_user_subscription_types` 
 ADD INDEX `IXFK_p_types_m2m_contents_user_s_types_user_s_types` (`ust_id` ASC)
;

ALTER TABLE `profiles` 
 ADD INDEX `IXFK_profiles_profile_types` (`pt_id` ASC)
;

ALTER TABLE `profiles` 
 ADD INDEX `IXFK_profiles_users` (`u_id` ASC)
;

ALTER TABLE `profiles` 
 ADD INDEX `IDX_users_id_profiles_is_active` (`u_id` ASC, `profiles_is_active` ASC)
;

ALTER TABLE `ratings` 
 ADD INDEX `IXFK_ratings_content` (`ct_id` ASC, `r_id` ASC)
;

ALTER TABLE `ratings` 
 ADD INDEX `IDX_ratings_value` (`r_value` ASC)
;

ALTER TABLE `ratings` 
 ADD INDEX `TR_inc_common_value` (`r_1_amount` ASC, `r_2_amount` ASC, `r_3_amount` ASC, `r_4_amount` ASC, `r_5_amount` ASC)
;

ALTER TABLE `user_cards` 
 ADD INDEX `IXFK_user_cards_user_card_payment_systems` (`ucps_id` ASC)
;

ALTER TABLE `user_cards` 
 ADD INDEX `IDX_user_cards_number_user_cards_cvv` (`uc_number` ASC, `uc_cvv` ASC)
;

ALTER TABLE `user_comments` 
 ADD INDEX `IXFK_user_comments_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `user_comments` 
 ADD INDEX `IXFK_user_comments_users` (`u_id` ASC)
;

ALTER TABLE `user_comments` 
 ADD INDEX `IDX_user_comments_c_id` (`c_id` ASC)
;

ALTER TABLE `user_comments` 
 ADD INDEX `IDX_user_comments_u_id` (`u_id` ASC)
;

ALTER TABLE `user_subscription_types` 
 ADD INDEX `IXFK_user_sybscription_types_user_subscription_prices` (`usp_id` ASC)
;

ALTER TABLE `user_subscription_types_m2m_resolutions` 
 ADD INDEX `IXFK_user_s_types_m2m_resolutions_resolutions` (`r_id` ASC)
;

ALTER TABLE `user_subscription_types_m2m_resolutions` 
 ADD INDEX `IXFK_user_s_types_m2m_resolutions_user_s_types` (`ust_id` ASC)
;

ALTER TABLE `users` 
 ADD INDEX `IXFK_users_user_sybscription_types` (`ust_id` ASC)
;

ALTER TABLE `users` 
 ADD INDEX `IDX_users_email_users_password` (`u_email` ASC, `u_password` ASC)
;

ALTER TABLE `users` 
 ADD INDEX `IDX_users_last_payment_date_user_is_auto_paymeny` (`u_last_payment_date` ASC, `u_is_auto_payment` ASC)
;

ALTER TABLE `users_m2m_user_cards` 
 ADD INDEX `IXFK_users_m2m_user_cards_user_cards` (`uc_number` ASC)
;

ALTER TABLE `users_m2m_user_cards` 
 ADD INDEX `IXFK_users_m2m_user_cards_users` (`u_id` ASC)
;

ALTER TABLE `users_m2m_user_cards` 
 ADD INDEX `IDX_user_cards_number_users_m2m_user_cards_is_active` (`u_id` ASC, `umuc_card_is_active` ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE `content` 
 ADD CONSTRAINT `FK_content_content_types`
	FOREIGN KEY (`ct_id`) REFERENCES `content_types` (`ct_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `content` 
 ADD CONSTRAINT `FK_content_copyrigth_holders`
	FOREIGN KEY (`ch_id`) REFERENCES `copyrigth_holders` (`ch_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_m2m_content_genres` 
 ADD CONSTRAINT `FK_content_m2m_content_genres_content`
	FOREIGN KEY (`c_id`, `ct_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_m2m_content_genres` 
 ADD CONSTRAINT `FK_content_m2m_content_genres_content_genres`
	FOREIGN KEY (`cg_id`) REFERENCES `content_genres` (`cg_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `content_m2m_resolutions` 
 ADD CONSTRAINT `FK_content_m2m_resolutions_content`
	FOREIGN KEY (`c_id`, `ct_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_m2m_resolutions` 
 ADD CONSTRAINT `FK_content_m2m_resolutions_resolutions`
	FOREIGN KEY (`r_id`) REFERENCES `resolutions` (`r_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_movies_urls` 
 ADD CONSTRAINT `FK_content_movies_urls_content`
	FOREIGN KEY (`ct_id`, `c_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `content_movies_urls` 
 ADD CONSTRAINT `FK_content_movies_urls_resolutions`
	FOREIGN KEY (`r_id`) REFERENCES `resolutions` (`r_id`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `content_series_seasons` 
 ADD CONSTRAINT `FK_content_series_seasons_content`
	FOREIGN KEY (`ct_id`, `c_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_series_url` 
 ADD CONSTRAINT `FK_content_series_url_resolutions`
	FOREIGN KEY (`r_id`) REFERENCES `resolutions` (`r_id`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `content_series_url` 
 ADD CONSTRAINT `FK_content_url_content_series_seasons`
	FOREIGN KEY (`ct_id`, `c_id`, `css_id`) REFERENCES `content_series_seasons` (`ct_id`,`c_id`,`css_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_subtitles` 
 ADD CONSTRAINT `FK_content_subtitles_content`
	FOREIGN KEY (`ct_id`, `c_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_voice_acting` 
 ADD CONSTRAINT `FK_content_voice_acting_content`
	FOREIGN KEY (`ct_id`, `c_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `copyrigth_holders` 
 ADD CONSTRAINT `FK_copyrigth_holders_content_procent_types`
	FOREIGN KEY (`cpt_id`) REFERENCES `content_procent_types` (`cpt_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `histories` 
 ADD CONSTRAINT `FK_histories_content`
	FOREIGN KEY (`c_id`, `ct_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `histories` 
 ADD CONSTRAINT `FK_histories_users`
	FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `profile_types_m2m_contents` 
 ADD CONSTRAINT `FK_profile_types_m2m_contents_content`
	FOREIGN KEY (`c_id`, `ct_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `profile_types_m2m_contents` 
 ADD CONSTRAINT `FK_profile_types_m2m_contents_profile_types`
	FOREIGN KEY (`pt_id`) REFERENCES `profile_types` (`pt_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `profile_types_m2m_contents_user_subscription_types` 
 ADD CONSTRAINT `FK_p_types_m2m_contents_user_s_types_p_types_m2m_contents`
	FOREIGN KEY (`c_id`, `pt_id`, `ct_id`) REFERENCES `profile_types_m2m_contents` (`c_id`,`pt_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `profile_types_m2m_contents_user_subscription_types` 
 ADD CONSTRAINT `FK_profile_types_m2m_contents_user_s_types_user_s_types`
	FOREIGN KEY (`ust_id`) REFERENCES `user_subscription_types` (`ust_id`) ON DELETE Set Null ON UPDATE Cascade
;

ALTER TABLE `profiles` 
 ADD CONSTRAINT `FK_profiles_profile_types`
	FOREIGN KEY (`pt_id`) REFERENCES `profile_types` (`pt_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `profiles` 
 ADD CONSTRAINT `FK_profiles_users`
	FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `ratings` 
 ADD CONSTRAINT `FK_ratings_content`
	FOREIGN KEY (`ct_id`, `r_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `user_cards` 
 ADD CONSTRAINT `FK_user_cards_user_card_payment_systems`
	FOREIGN KEY (`ucps_id`) REFERENCES `user_card_payment_systems` (`ucps_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `user_comments` 
 ADD CONSTRAINT `FK_user_comments_content`
	FOREIGN KEY (`ct_id`, `c_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `user_comments` 
 ADD CONSTRAINT `FK_user_comments_users`
	FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `user_subscription_types` 
 ADD CONSTRAINT `FK_user_sybscription_types_user_subscription_prices`
	FOREIGN KEY (`usp_id`) REFERENCES `user_subscription_prices` (`usp_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `user_subscription_types_m2m_resolutions` 
 ADD CONSTRAINT `FK_user_s_types_m2m_resolutions_resolutions`
	FOREIGN KEY (`r_id`) REFERENCES `resolutions` (`r_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `user_subscription_types_m2m_resolutions` 
 ADD CONSTRAINT `FK_user_s_types_m2m_resolutions_user_s_types`
	FOREIGN KEY (`ust_id`) REFERENCES `user_subscription_types` (`ust_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `users` 
 ADD CONSTRAINT `FK_users_user_sybscription_types`
	FOREIGN KEY (`ust_id`) REFERENCES `user_subscription_types` (`ust_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `users_m2m_user_cards` 
 ADD CONSTRAINT `FK_users_m2m_user_cards_user_cards`
	FOREIGN KEY (`uc_number`) REFERENCES `user_cards` (`uc_number`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `users_m2m_user_cards` 
 ADD CONSTRAINT `FK_users_m2m_user_cards_users`
	FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE Cascade ON UPDATE Cascade
;

SET FOREIGN_KEY_CHECKS=1
; 
