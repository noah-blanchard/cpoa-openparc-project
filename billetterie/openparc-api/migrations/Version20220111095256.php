<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220111095256 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE arbitre (id INT AUTO_INCREMENT NOT NULL, nom VARCHAR(255) NOT NULL, telephone VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL, pays VARCHAR(255) NOT NULL, juge_arbitre TINYINT(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE billet (id INT AUTO_INCREMENT NOT NULL, jour INT NOT NULL, prix INT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE client (id INT AUTO_INCREMENT NOT NULL, nom VARCHAR(255) NOT NULL, telephone VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL, licence INT NOT NULL, age INT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE court (id INT AUTO_INCREMENT NOT NULL, principal TINYINT(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE equipe (id INT AUTO_INCREMENT NOT NULL, id_joueur1_id INT DEFAULT NULL, id_joueur2_id INT DEFAULT NULL, UNIQUE INDEX UNIQ_2449BA15374B62E0 (id_joueur1_id), UNIQUE INDEX UNIQ_2449BA1525FECD0E (id_joueur2_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE joueur (id INT AUTO_INCREMENT NOT NULL, nom VARCHAR(255) NOT NULL, telephone VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL, pays VARCHAR(255) NOT NULL, classement INT NOT NULL, groupe VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE planning (id INT AUTO_INCREMENT NOT NULL, nombre_matchs INT NOT NULL, nombre_joueurs INT NOT NULL, nombre_qualifies INT NOT NULL, nom_planning VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE ramasseur (id INT AUTO_INCREMENT NOT NULL, nom VARCHAR(255) NOT NULL, telephone VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL, pays VARCHAR(255) NOT NULL, id_equipe_ramasseurs INT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE rencontre (id INT AUTO_INCREMENT NOT NULL, id_planning_id INT DEFAULT NULL, arbitre_chaise_id INT DEFAULT NULL, etape VARCHAR(255) NOT NULL, id_vainqueur INT DEFAULT NULL, id_perdant INT DEFAULT NULL, score VARCHAR(255) DEFAULT NULL, est_double TINYINT(1) DEFAULT NULL, id_joueur1 INT DEFAULT NULL, id_joueur2 INT DEFAULT NULL, id_equipe1 INT DEFAULT NULL, id_equipe2 INT DEFAULT NULL, id_equipe_ramasseurs INT DEFAULT NULL, INDEX IDX_460C35ED25949EE6 (id_planning_id), INDEX IDX_460C35ED39A90FF7 (arbitre_chaise_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE rencontre_arbitre (rencontre_id INT NOT NULL, arbitre_id INT NOT NULL, INDEX IDX_1605D0C46CFC0818 (rencontre_id), INDEX IDX_1605D0C4943A5F0 (arbitre_id), PRIMARY KEY(rencontre_id, arbitre_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE reserv_court (id INT AUTO_INCREMENT NOT NULL, id_court_id INT DEFAULT NULL, id_match_id INT DEFAULT NULL, id_joueur_id INT DEFAULT NULL, heure INT DEFAULT NULL, minute INT DEFAULT NULL, jour INT DEFAULT NULL, INDEX IDX_A0343EF2B3C3AC9C (id_court_id), UNIQUE INDEX UNIQ_A0343EF27A654043 (id_match_id), UNIQUE INDEX UNIQ_A0343EF229D76B4B (id_joueur_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE equipe ADD CONSTRAINT FK_2449BA15374B62E0 FOREIGN KEY (id_joueur1_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE equipe ADD CONSTRAINT FK_2449BA1525FECD0E FOREIGN KEY (id_joueur2_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE rencontre ADD CONSTRAINT FK_460C35ED25949EE6 FOREIGN KEY (id_planning_id) REFERENCES planning (id)');
        $this->addSql('ALTER TABLE rencontre ADD CONSTRAINT FK_460C35ED39A90FF7 FOREIGN KEY (arbitre_chaise_id) REFERENCES arbitre (id)');
        $this->addSql('ALTER TABLE rencontre_arbitre ADD CONSTRAINT FK_1605D0C46CFC0818 FOREIGN KEY (rencontre_id) REFERENCES rencontre (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE rencontre_arbitre ADD CONSTRAINT FK_1605D0C4943A5F0 FOREIGN KEY (arbitre_id) REFERENCES arbitre (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE reserv_court ADD CONSTRAINT FK_A0343EF2B3C3AC9C FOREIGN KEY (id_court_id) REFERENCES court (id)');
        $this->addSql('ALTER TABLE reserv_court ADD CONSTRAINT FK_A0343EF27A654043 FOREIGN KEY (id_match_id) REFERENCES rencontre (id)');
        $this->addSql('ALTER TABLE reserv_court ADD CONSTRAINT FK_A0343EF229D76B4B FOREIGN KEY (id_joueur_id) REFERENCES joueur (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE rencontre DROP FOREIGN KEY FK_460C35ED39A90FF7');
        $this->addSql('ALTER TABLE rencontre_arbitre DROP FOREIGN KEY FK_1605D0C4943A5F0');
        $this->addSql('ALTER TABLE reserv_court DROP FOREIGN KEY FK_A0343EF2B3C3AC9C');
        $this->addSql('ALTER TABLE equipe DROP FOREIGN KEY FK_2449BA15374B62E0');
        $this->addSql('ALTER TABLE equipe DROP FOREIGN KEY FK_2449BA1525FECD0E');
        $this->addSql('ALTER TABLE reserv_court DROP FOREIGN KEY FK_A0343EF229D76B4B');
        $this->addSql('ALTER TABLE rencontre DROP FOREIGN KEY FK_460C35ED25949EE6');
        $this->addSql('ALTER TABLE rencontre_arbitre DROP FOREIGN KEY FK_1605D0C46CFC0818');
        $this->addSql('ALTER TABLE reserv_court DROP FOREIGN KEY FK_A0343EF27A654043');
        $this->addSql('DROP TABLE arbitre');
        $this->addSql('DROP TABLE billet');
        $this->addSql('DROP TABLE client');
        $this->addSql('DROP TABLE court');
        $this->addSql('DROP TABLE equipe');
        $this->addSql('DROP TABLE joueur');
        $this->addSql('DROP TABLE planning');
        $this->addSql('DROP TABLE ramasseur');
        $this->addSql('DROP TABLE rencontre');
        $this->addSql('DROP TABLE rencontre_arbitre');
        $this->addSql('DROP TABLE reserv_court');
    }
}
