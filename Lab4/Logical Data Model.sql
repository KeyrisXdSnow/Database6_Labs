
SET FOREIGN_KEY_CHECKS=0

DROP USER IF EXISTS 'user'@'localhost';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'user_password';
GRANT READ ON 'anime_seasons' TO 'user'@'localhost';
GRANT READ ON 'animes' TO 'user'@'localhost';
GRANT READ ON 'content_series' TO 'user'@'localhost';
GRANT READ ON 'content_series_seasons' TO 'user'@'localhost';
GRANT READ ON 'cartoons' TO 'user'@'localhost';
GRANT READ ON 'content' TO 'user'@'localhost';
GRANT READ ON 'content_genres' TO 'user'@'localhost';
GRANT READ ON 'content_m2m_content_genres' TO 'user'@'localhost';
GRANT READ ON 'content_m2m_resolutions' TO 'user'@'localhost';
GRANT READ ON 'content_procent_types' TO 'user'@'localhost';
GRANT READ ON 'content_subtitles' TO 'user'@'localhost';
GRANT READ ON 'content_types' TO 'user'@'localhost';
GRANT READ ON 'content_voice_acting' TO 'user'@'localhost';
GRANT READ ON 'copyrigth_holders' TO 'user'@'localhost';
GRANT READ ON 'histories' TO 'user'@'localhost';
GRANT READ ON 'languages' TO 'user'@'localhost';
GRANT READ ON 'content_movies' TO 'user'@'localhost';
GRANT READ ON 'profile_types' TO 'user'@'localhost';
GRANT READ ON 'profile_types_m2m_contents' TO 'user'@'localhost';
GRANT READ ON 'profile_types_m2m_contents_user_subscription_types' TO 'user'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'profiles' TO 'user'@'localhost';
GRANT READ, UPDATE ON 'ratings' TO 'user'@'localhost';
GRANT READ ON 'resolutions' TO 'user'@'localhost';
GRANT READ ON 'series' TO 'user'@'localhost';
GRANT READ ON 'series_seasons' TO 'user'@'localhost';
GRANT READ ON 'content_url' TO 'user'@'localhost';
GRANT READ ON 'user_card_payment_systems' TO 'user'@'localhost';
GRANT CREATE,READ,UPDATE,DELETE ON 'user_cards' TO 'user'@'localhost';
GRANT CREATE,READ,UPDATE,DELETE ON 'user_comments' TO 'user'@'localhost';
GRANT READ ON 'user_subscription_prices' TO 'user'@'localhost';
GRANT READ ON 'user_subscription_types' TO 'user'@'localhost';
GRANT READ ON 'user_subscription_types_m2m_resolutions' TO 'user'@'localhost';
GRANT CREATE,READ,UPDATE,DELETE ON 'user' TO 'user'@'localhost';
GRANT CREATE,READ,UPDATE,DELETE  ON 'users_m2m_user_cards' TO 'user'@'localhost';


DROP USER IF EXISTS 'admin'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin_password';
GRANT CREATE,READ, UPDATE, DELETE ON 'anime_seasons' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'animes' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_series' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_series_seasons' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'cartoons' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_genres' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_m2m_content_genres' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_m2m_resolutions' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_procent_types' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_subtitles' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_types' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_voice_acting' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'copyrigth_holders' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'histories' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'languages' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE,READ, UPDATE, DELETE ON 'content_movies' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'profile_types' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'profile_types_m2m_contents' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'profile_types_m2m_contents_user_subscription_types' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'profiles' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'ratings' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'resolutions' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'series' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'series_seasons' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'content_url' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'user_card_payment_systems' TO 'admin'@'localhost';
GRANT CREATE,READ,UPDATE,DELETE ON 'user_cards' TO 'admin'@'localhost';
GRANT CREATE,READ,UPDATE,DELETE ON 'user_comments' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'user_subscription_prices' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'user_subscription_types' TO 'admin'@'localhost';
GRANT CREATE,READ, UPDATE, DELETE ON 'user_subscription_types_m2m_resolutions' TO 'admin'@'localhost';
GRANT CREATE,READ,UPDATE,DELETE ON 'user' TO 'admin'@'localhost';
GRANT CREATE,READ,UPDATE,DELETE  ON 'users_m2m_user_cards' TO 'admin'@'localhost';

















DROP USER IF EXISTS 'admin'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin_password';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'parents' TO 'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'parents_to_children' TO
'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'children' TO 'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'key_logs' TO 'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'geo_points' TO
'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'notifications' TO
'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'recordings' TO
'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'photos' TO 'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'calls' TO 'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'sms_messages' TO
'admin'@'localhost';
GRANT INSERT, SELECT, UPDATE, DELETE ON 'phone_numbers' TO
'admin'@'localhost';


;
/* Drop Tables */

DROP TABLE IF EXISTS `anime_seasons` CASCADE
;

DROP TABLE IF EXISTS `animes` CASCADE
;

DROP TABLE IF EXISTS `cartoons` CASCADE
;

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

DROP TABLE IF EXISTS `content_procent_types` CASCADE
;

DROP TABLE IF EXISTS `content_series` CASCADE
;

DROP TABLE IF EXISTS `content_series_seasons` CASCADE
;

DROP TABLE IF EXISTS `content_subtitles` CASCADE
;

DROP TABLE IF EXISTS `content_types` CASCADE
;

DROP TABLE IF EXISTS `content_url` CASCADE
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

DROP TABLE IF EXISTS `user` CASCADE
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

DROP TABLE IF EXISTS `users_m2m_user_cards` CASCADE
;

/* Create Tables */

CREATE TABLE `anime_seasons`
(
	`as_id` TINYINT NOT NULL,
	`as_episodes_amount` TINYINT NULL,
	`a_id` BIGINT NULL,
	CONSTRAINT `PK_anime_seasons` PRIMARY KEY (`as_id` ASC)
)

;

CREATE TABLE `animes`
(
	`a_id` BIGINT NOT NULL,
	CONSTRAINT `PK_animes` PRIMARY KEY (`a_id` ASC)
)

;

CREATE TABLE `cartoons`
(
	`c_id` BIGINT NOT NULL,
	CONSTRAINT `PK_cartoons` PRIMARY KEY (`c_id` ASC)
)

;

CREATE TABLE `content`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`c_name` VARCHAR(250) NOT NULL,
	`c_release_date` DATETIME NULL,
	`c_text_description` VARCHAR(300) NULL,
	`c_duration` TIME NOT NULL,
	`ch_id` BIGINT NULL,
	CONSTRAINT `PK_content` PRIMARY KEY (`c_id` ASC, `ct_id` ASC)
)

;

CREATE TABLE `content_genres`
(
	`cg_id` INT NOT NULL,
	`cg_description` VARCHAR(70) NOT NULL,
	CONSTRAINT `PK_content_genres` PRIMARY KEY (`cg_id` ASC)
)

;

CREATE TABLE `content_m2m_content_genres`
(
	`c_id` BIGINT NOT NULL,
	`cg_id` INT NOT NULL,
	`ct_id` INT NOT NULL,
	CONSTRAINT `PK_content_m2m_content_genres` PRIMARY KEY (`c_id` ASC, `cg_id` ASC, `ct_id` ASC)
)

;

CREATE TABLE `content_m2m_resolutions`
(
	`r_id` SMALLINT NOT NULL,
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	CONSTRAINT `PK_content_m2m_resolutions` PRIMARY KEY (`r_id` ASC, `c_id` ASC, `ct_id` ASC)
)

;

CREATE TABLE `content_movies`
(
	`ct_id` INT NOT NULL,
	`c_id` BIGINT NOT NULL,
	`cm_url` VARCHAR(300) NULL,
	CONSTRAINT `PK_movies` PRIMARY KEY (`ct_id` ASC, `c_id` ASC)
)

;

CREATE TABLE `content_procent_types`
(
	`cpt_id` BIGINT NOT NULL,
	`cpt_description` VARCHAR(50) NULL,
	`cpt_precent` FLOAT(5,2) NOT NULL,
	CONSTRAINT `PK_content_procent_types` PRIMARY KEY (`cpt_id` ASC)
)

;

CREATE TABLE `content_series`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	CONSTRAINT `PK_cartoon_series` PRIMARY KEY (`ct_id` ASC, `c_id` ASC)
)

;

CREATE TABLE `content_series_seasons`
(
	`ct_id` INT NOT NULL,
	`c_id` BIGINT NOT NULL,
	`css_id` TINYINT NOT NULL,
	`css_episodes_amount` TINYINT NOT NULL,
	CONSTRAINT `PK_content_series_seasons` PRIMARY KEY (`ct_id` ASC, `c_id` ASC, `css_id` ASC)
)

;

CREATE TABLE `content_subtitles`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`cs_id` BIGINT NOT NULL,
	`cs_author` VARCHAR(100) NULL,
	`l_literal_code` VARCHAR(3) NULL,
	CONSTRAINT `PK_content_subtitles` PRIMARY KEY (`cs_id` ASC, `ct_id` ASC, `c_id` ASC)
)

;

CREATE TABLE `content_types`
(
	`ct_id` INT NOT NULL,
	`ct_description` VARCHAR(50) NULL,
	`ct_table` VARCHAR(50) NOT NULL,
	`ct_max_genres_amont` SMALLINT NULL,
	CONSTRAINT `PK_content_types` PRIMARY KEY (`ct_id` ASC)
)

;

CREATE TABLE `content_url`
(
	`ct_id` INT NOT NULL,
	`c_id` BIGINT NOT NULL,
	`css_id` TINYINT NOT NULL,
	`cu_episode_id` SMALLINT NOT NULL,
	`cu_url` VARCHAR(300) NULL,
	CONSTRAINT `PK_hg` PRIMARY KEY (`cu_episode_id` ASC, `css_id` ASC, `c_id` ASC, `ct_id` ASC)
)

;

CREATE TABLE `content_voice_acting`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`cva_id` BIGINT NOT NULL,
	`cva_author` VARCHAR(100) NULL,
	`l_literal_code` VARCHAR(3) NULL,
	CONSTRAINT `PK_content_voice_acting` PRIMARY KEY (`cva_id` ASC, `ct_id` ASC, `c_id` ASC)
)

;

CREATE TABLE `copyrigth_holders`
(
	`ch_id` BIGINT NOT NULL,
	`ch_name` VARCHAR(150) NULL,
	`cpt_id` BIGINT NULL,
	CONSTRAINT `PK_copyrigth_holders` PRIMARY KEY (`ch_id` ASC)
)

;

CREATE TABLE `histories`
(
	`c_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`u_id` BIGINT NOT NULL,
	`h_watch_time` TIME NOT NULL,
	`h_watch_point` TIME NULL,
	CONSTRAINT `PK_histories` PRIMARY KEY (`c_id` ASC, `h_watch_time` ASC, `u_id` ASC, `ct_id` ASC)
)

;

CREATE TABLE `languages`
(
	`l_literal_code` VARCHAR(3) NOT NULL,
	`l_description` VARCHAR(60) NULL,
	CONSTRAINT `PK_languages` PRIMARY KEY (`l_literal_code` ASC)
)

;

CREATE TABLE `profile_types`
(
	`pt_id` INT NOT NULL,
	`pt_description` VARCHAR(50) NOT NULL,
	CONSTRAINT `PK_profile_types` PRIMARY KEY (`pt_id` ASC)
)

;

CREATE TABLE `profile_types_m2m_contents`
(
	`c_id` BIGINT NOT NULL,
	`pt_id` INT NOT NULL,
	`ct_id` INT NOT NULL,
	CONSTRAINT `PK_profile_types_m2m_contents` PRIMARY KEY (`c_id` ASC, `pt_id` ASC, `ct_id` ASC)
)

;

CREATE TABLE `profile_types_m2m_contents_user_subscription_types`
(
	`c_id` BIGINT NOT NULL,
	`pt_id` INT NOT NULL,
	`ct_id` INT NOT NULL,
	`ust_id` TINYINT NOT NULL,
	CONSTRAINT `PK_profile_types_m2m_contents` PRIMARY KEY (`c_id` ASC, `ust_id` ASC, `ct_id` ASC, `pt_id` ASC)
)

;

CREATE TABLE `profiles`
(
	`p_id` BIGINT NOT NULL,
	`u_id` BIGINT NULL,
	`pt_id` INT NULL,
	`p_name` VARCHAR(310) NOT NULL,
	`p_surname` VARCHAR(310) NULL,
	`profiles_is_active` BIT NULL,
	CONSTRAINT `PK_profiles` PRIMARY KEY (`p_id` ASC)
)

;

CREATE TABLE `ratings`
(
	`r_id` BIGINT NOT NULL,
	`ct_id` INT NOT NULL,
	`r_1_amount` TINYINT NOT NULL,
	`r_2_amount` TINYINT NOT NULL,
	`r_3_amount` TINYINT NOT NULL,
	`r_4_amount` TINYINT NOT NULL,
	`r_5_amount` TINYINT NOT NULL,
	`r_common_amount` BIGINT NOT NULL,
	`r_border_amount` BIGINT NULL,
	`r_value` FLOAT(3,2) NULL,
	`r_is_active` BIT NULL,
	CONSTRAINT `PK_ratings` PRIMARY KEY (`ct_id` ASC, `r_id` ASC)
)

;

CREATE TABLE `resolutions`
(
	`r_id` SMALLINT NOT NULL,
	`r_resolution` VARCHAR(20) NOT NULL,
	`r_fps` VARCHAR(5) NOT NULL,
	CONSTRAINT `PK_resolutions` PRIMARY KEY (`r_id` ASC)
)

;

CREATE TABLE `series`
(
	`s_id` BIGINT NOT NULL,
	CONSTRAINT `PK_series` PRIMARY KEY (`s_id` ASC)
)

;

CREATE TABLE `series_seasons`
(
	`s_id` BIGINT NOT NULL,
	`ss_id` TINYINT NOT NULL,
	`ss_episodes_amount` TINYINT NULL,
	CONSTRAINT `PK_anime_seasons` PRIMARY KEY (`ss_id` ASC, `s_id` ASC)
)

;

CREATE TABLE `user`
(
	`u_id` BIGINT NOT NULL,
	`u_email` VARCHAR(320) NOT NULL,
	`u_password` VARCHAR(50) NOT NULL,
	`u_is_active` BIT NOT NULL,
	`u_last_payment_date` DATETIME NOT NULL,
	`u_is_auto_payment` BIT NOT NULL,
	`ust_id` TINYINT NULL,
	CONSTRAINT `PK_users` PRIMARY KEY (`u_id` ASC)
)

;

CREATE TABLE `user_card_payment_systems`
(
	`ucps_id` INT NOT NULL,
	`ucps_description` VARCHAR(25) NOT NULL,
	CONSTRAINT `PK_user_card_payment_systems` PRIMARY KEY (`ucps_id` ASC)
)

;

CREATE TABLE `user_cards`
(
	`uc_number` VARCHAR(16) NOT NULL,
	`ucps_id` INT NULL,
	`uc_cvv` VARCHAR(3) NOT NULL,
	`uc_validity` DATE NOT NULL,
	CONSTRAINT `PK_user_cards` PRIMARY KEY (`uc_number` ASC)
)

;

CREATE TABLE `user_comments`
(
	`uc_id` BIGINT NOT NULL,
	`c_id` BIGINT NULL,
	`ct_id` INT NULL,
	`u_id` BIGINT NULL,
	`uc_text` VARCHAR(500) NOT NULL,
	`uc_date_time` DATETIME NOT NULL,
	CONSTRAINT `PK_user_comments` PRIMARY KEY (`uc_id` ASC)
)

;

CREATE TABLE `user_subscription_prices`
(
	`usp_id` INT NOT NULL,
	`usp_price` FLOAT(10,2) NOT NULL,
	`usp_description` VARCHAR(50) NULL,
	CONSTRAINT `PK_user_subscription_prices` PRIMARY KEY (`usp_id` ASC)
)

;

CREATE TABLE `user_subscription_types`
(
	`ust_id` TINYINT NOT NULL,
	`ust_descriprion` VARCHAR(50) NULL,
	`usp_id` INT NULL,
	CONSTRAINT `PK_user_sybscription_types` PRIMARY KEY (`ust_id` ASC)
)

;

CREATE TABLE `user_subscription_types_m2m_resolutions`
(
	`ust_id` TINYINT NOT NULL,
	`r_id` SMALLINT NOT NULL,
	CONSTRAINT `PK_user_subscription_types_m2m_resolutions` PRIMARY KEY (`r_id` ASC, `ust_id` ASC)
)

;

CREATE TABLE `users_m2m_user_cards`
(
	`u_id` BIGINT NOT NULL,
	`uc_number` VARCHAR(16) NOT NULL,
	`umuc_card_is_active` BIT NULL,
	CONSTRAINT `PK_users_m2m_user_cards` PRIMARY KEY (`u_id` ASC, `uc_number` ASC)
)

;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE `anime_seasons` 
 ADD INDEX `IXFK_anime_seasons_animes` (`a_id` ASC)
;

ALTER TABLE `content` 
 ADD INDEX `IXFK_content_content_types` (`ct_id` ASC)
;

ALTER TABLE `content` 
 ADD INDEX `IXFK_content_copyrigth_holders` (`ch_id` ASC)
;

ALTER TABLE `content` 
 ADD INDEX `content_release_date` (`c_release_date` ASC)
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

ALTER TABLE `content_movies` 
 ADD INDEX `IXFK_content_movies_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `content_movies` 
 ADD INDEX `IXFK_movies_content` ()
;

ALTER TABLE `content_series` 
 ADD INDEX `IXFK_content_series_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `content_series_seasons` 
 ADD INDEX `IXFK_content_series_seasons_content_series` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `content_subtitles` 
 ADD INDEX `IXFK_content_subtitles_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `content_subtitles` 
 ADD INDEX `IXFK_content_subtitles_languages` (`l_literal_code` ASC)
;

ALTER TABLE `content_url` 
 ADD INDEX `IXFK_content_url_content_series_seasons` (`ct_id` ASC, `c_id` ASC, `css_id` ASC)
;

ALTER TABLE `content_voice_acting` 
 ADD INDEX `IXFK_content_voice_acting_content` (`ct_id` ASC, `c_id` ASC)
;

ALTER TABLE `content_voice_acting` 
 ADD INDEX `IXFK_content_voice_acting_languages` (`l_literal_code` ASC)
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
 ADD INDEX `content_id_histories_watch_point` (`c_id` ASC, `h_watch_point` ASC)
;

ALTER TABLE `profile_types_m2m_contents` 
 ADD INDEX `IXFK_profile_types_m2m_contents_content` (`c_id` ASC, `ct_id` ASC)
;

ALTER TABLE `profile_types_m2m_contents` 
 ADD INDEX `IXFK_profile_types_m2m_contents_profile_types` (`pt_id` ASC)
;

ALTER TABLE `profile_types_m2m_contents_user_subscription_types` 
 ADD INDEX `IXFK_profile_types_m2m_contents_user_subscription_types_profile_types_m2m_contents` (`c_id` ASC, `pt_id` ASC, `ct_id` ASC)
;

ALTER TABLE `profile_types_m2m_contents_user_subscription_types` 
 ADD INDEX `IXFK_profile_types_m2m_contents_user_subscription_types_user_subscription_types` (`ust_id` ASC)
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

ALTER TABLE `series_seasons` 
 ADD INDEX `IXFK_series_seasons_series` (`s_id` ASC)
;

ALTER TABLE `user` 
 ADD INDEX `IXFK_users_user_sybscription_types` (`ust_id` ASC)
;

ALTER TABLE `user` 
 ADD INDEX `IDX_users_email_users_password` (`u_email` ASC, `u_password` ASC)
;

ALTER TABLE `user` 
 ADD INDEX `IDX_users_last_payment_date_user_is_auto_paymeny` (`u_last_payment_date` ASC, `u_is_auto_payment` ASC)
;

ALTER TABLE `user_cards` 
 ADD INDEX `IXFK_user_cards_user_card_payment_systems` (`ucps_id` ASC)
;

ALTER TABLE `user_cards` 
 ADD INDEX `IDX_user_cards_number_user_cards_cvv` (`uc_number` ASC, `uc_cvv` ASC)
;

ALTER TABLE `user_comments` 
 ADD INDEX `IXFK_user_comments_content` (`c_id` ASC, `ct_id` ASC)
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
 ADD INDEX `IXFK_user_subscription_types_m2m_resolutions_resolutions` (`r_id` ASC)
;

ALTER TABLE `user_subscription_types_m2m_resolutions` 
 ADD INDEX `IXFK_user_subscription_types_m2m_resolutions_user_subscription_types` (`ust_id` ASC)
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

ALTER TABLE `anime_seasons` 
 ADD CONSTRAINT `FK_anime_seasons_animes`
	FOREIGN KEY (`a_id`) REFERENCES `animes` (`a_id`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `content` 
 ADD CONSTRAINT `FK_content_content_types`
	FOREIGN KEY (`ct_id`) REFERENCES `content_types` (`ct_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `content` 
 ADD CONSTRAINT `FK_content_copyrigth_holders`
	FOREIGN KEY (`ch_id`) REFERENCES `copyrigth_holders` (`ch_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `content_m2m_content_genres` 
 ADD CONSTRAINT `FK_content_m2m_content_genres_content`
	FOREIGN KEY (`c_id`, `ct_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `content_m2m_content_genres` 
 ADD CONSTRAINT `FK_content_m2m_content_genres_content_genres`
	FOREIGN KEY (`cg_id`) REFERENCES `content_genres` (`cg_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_m2m_resolutions` 
 ADD CONSTRAINT `FK_content_m2m_resolutions_content`
	FOREIGN KEY (`c_id`, `ct_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `content_m2m_resolutions` 
 ADD CONSTRAINT `FK_content_m2m_resolutions_resolutions`
	FOREIGN KEY (`r_id`) REFERENCES `resolutions` (`r_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_movies` 
 ADD CONSTRAINT `FK_content_movies_content`
	FOREIGN KEY (`ct_id`, `c_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `content_series_seasons` 
 ADD CONSTRAINT `FK_content_series_seasons_content_series`
	FOREIGN KEY (`ct_id`, `c_id`) REFERENCES `content_series` (`ct_id`,`c_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `content_subtitles` 
 ADD CONSTRAINT `FK_content_subtitles_content`
	FOREIGN KEY (`ct_id`, `c_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `content_subtitles` 
 ADD CONSTRAINT `FK_content_subtitles_languages`
	FOREIGN KEY (`l_literal_code`) REFERENCES `languages` (`l_literal_code`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `content_url` 
 ADD CONSTRAINT `FK_content_url_content_series_seasons`
	FOREIGN KEY (`ct_id`, `c_id`, `css_id`) REFERENCES `content_series_seasons` (`ct_id`,`c_id`,`css_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `content_voice_acting` 
 ADD CONSTRAINT `FK_content_voice_acting_content`
	FOREIGN KEY (`ct_id`, `c_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `content_voice_acting` 
 ADD CONSTRAINT `FK_content_voice_acting_languages`
	FOREIGN KEY (`l_literal_code`) REFERENCES `languages` (`l_literal_code`) ON DELETE No Action ON UPDATE Cascade
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
	FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `profile_types_m2m_contents` 
 ADD CONSTRAINT `FK_profile_types_m2m_contents_content`
	FOREIGN KEY (`c_id`, `ct_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `profile_types_m2m_contents` 
 ADD CONSTRAINT `FK_profile_types_m2m_contents_profile_types`
	FOREIGN KEY (`pt_id`) REFERENCES `profile_types` (`pt_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `profile_types_m2m_contents_user_subscription_types` 
 ADD CONSTRAINT `FK_profile_types_m2m_contents_user_subscription_types_profile_types_m2m_contents`
	FOREIGN KEY (`c_id`, `pt_id`, `ct_id`) REFERENCES `profile_types_m2m_contents` (`c_id`,`pt_id`,`ct_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `profile_types_m2m_contents_user_subscription_types` 
 ADD CONSTRAINT `FK_profile_types_m2m_contents_user_subscription_types_user_subscription_types`
	FOREIGN KEY (`ust_id`) REFERENCES `user_subscription_types` (`ust_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `profiles` 
 ADD CONSTRAINT `FK_profiles_profile_types`
	FOREIGN KEY (`pt_id`) REFERENCES `profile_types` (`pt_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `profiles` 
 ADD CONSTRAINT `FK_profiles_users`
	FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `ratings` 
 ADD CONSTRAINT `FK_ratings_content`
	FOREIGN KEY (`ct_id`, `r_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Cascade ON UPDATE Cascade
;
create schema schema_name;

ALTER TABLE `series_seasons` 
 ADD CONSTRAINT `FK_series_seasons_series`
	FOREIGN KEY (`s_id`) REFERENCES `series` (`s_id`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `user` 
 ADD CONSTRAINT `FK_users_user_sybscription_types`
	FOREIGN KEY (`ust_id`) REFERENCES `user_subscription_types` (`ust_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `user_cards` 
 ADD CONSTRAINT `FK_user_cards_user_card_payment_systems`
	FOREIGN KEY (`ucps_id`) REFERENCES `user_card_payment_systems` (`ucps_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `user_comments` 
 ADD CONSTRAINT `FK_user_comments_content`
	FOREIGN KEY (`c_id`, `ct_id`) REFERENCES `content` (`c_id`,`ct_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `user_comments` 
 ADD CONSTRAINT `FK_user_comments_users`
	FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `user_subscription_types` 
 ADD CONSTRAINT `FK_user_sybscription_types_user_subscription_prices`
	FOREIGN KEY (`usp_id`) REFERENCES `user_subscription_prices` (`usp_id`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `user_subscription_types_m2m_resolutions` 
 ADD CONSTRAINT `FK_user_subscription_types_m2m_resolutions_resolutions`
	FOREIGN KEY (`r_id`) REFERENCES `resolutions` (`r_id`) ON DELETE Cascade ON UPDATE Cascade
;

ALTER TABLE `user_subscription_types_m2m_resolutions` 
 ADD CONSTRAINT `FK_user_subscription_types_m2m_resolutions_user_subscription_types`
	FOREIGN KEY (`ust_id`) REFERENCES `user_subscription_types` (`ust_id`) ON DELETE Restrict ON UPDATE Cascade
;

ALTER TABLE `users_m2m_user_cards` 
 ADD CONSTRAINT `FK_users_m2m_user_cards_user_cards`
	FOREIGN KEY (`uc_number`) REFERENCES `user_cards` (`uc_number`) ON DELETE No Action ON UPDATE Cascade
;

ALTER TABLE `users_m2m_user_cards` 
 ADD CONSTRAINT `FK_users_m2m_user_cards_users`
	FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE Restrict ON UPDATE Cascade
;


ALTER TABLE anime_seasons   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE animes   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_series   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE  content_series_seasons   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE  cartoons   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE  content   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_genres   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_m2m_content_genres   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_m2m_resolutions   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_procent_types   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_subtitles   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_types   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_voice_acting   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE copyrigth_holders   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE histories   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE languages   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_movies   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE profile_types   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE profile_types_m2m_contents   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE profile_types_m2m_contents_user_subscription_types   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE profiles   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE ratings   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE resolutions   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE series   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE series_seasons   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE content_url   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE user_card_payment_systems   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE user_cards   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE user_comments   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE user_subscription_prices   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE user_subscription_types   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE user_subscription_types_m2m_resolutions   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE user   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
ALTER TABLE users_m2m_user_cards   CONVERT TO CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';


ALTER TABLE anime_seasons  ENGINE = InnoDB;
ALTER TABLE animes  ENGINE = InnoDB;
ALTER TABLE content_series  ENGINE = InnoDB;
ALTER TABLE  content_series_seasons  ENGINE = InnoDB;
ALTER TABLE  cartoons  ENGINE = InnoDB;
ALTER TABLE  content  ENGINE = InnoDB;
ALTER TABLE content_genres  ENGINE = InnoDB;
ALTER TABLE content_m2m_content_genres  ENGINE = InnoDB;
ALTER TABLE content_m2m_resolutions  ENGINE = InnoDB;
ALTER TABLE content_procent_types  ENGINE = InnoDB;
ALTER TABLE content_subtitles  ENGINE = InnoDB;
ALTER TABLE content_types  ENGINE = InnoDB;
ALTER TABLE content_voice_acting  ENGINE = InnoDB;
ALTER TABLE copyrigth_holders  ENGINE = InnoDB;
ALTER TABLE histories  ENGINE = InnoDB;
ALTER TABLE languages  ENGINE = InnoDB;
ALTER TABLE content_movies  ENGINE = InnoDB;
ALTER TABLE profile_types  ENGINE = InnoDB;
ALTER TABLE profile_types_m2m_contents  ENGINE = InnoDB;
ALTER TABLE profile_types_m2m_contents_user_subscription_types  ENGINE = InnoDB;
ALTER TABLE profiles  ENGINE = InnoDB;
ALTER TABLE ratings  ENGINE = InnoDB;
ALTER TABLE resolutions  ENGINE = InnoDB;
ALTER TABLE series  ENGINE = InnoDB;
ALTER TABLE series_seasons  ENGINE = InnoDB;
ALTER TABLE content_url  ENGINE = InnoDB;
ALTER TABLE user_card_payment_systems  ENGINE = InnoDB;
ALTER TABLE user_cards  ENGINE = InnoDB;
ALTER TABLE user_comments  ENGINE = InnoDB;
ALTER TABLE user_subscription_prices  ENGINE = InnoDB;
ALTER TABLE user_subscription_types  ENGINE = InnoDB;
ALTER TABLE user_subscription_types_m2m_resolutions  ENGINE = InnoDB;
ALTER TABLE user  ENGINE = InnoDB;
ALTER TABLE users_m2m_user_cards  ENGINE = InnoDB;


SET FOREIGN_KEY_CHECKS=1
; 
