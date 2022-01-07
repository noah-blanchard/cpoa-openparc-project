<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220107122739 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE equipe (id INT AUTO_INCREMENT NOT NULL, id_joueur1_id INT NOT NULL, id_joueur2_id INT NOT NULL, UNIQUE INDEX UNIQ_2449BA15374B62E0 (id_joueur1_id), UNIQUE INDEX UNIQ_2449BA1525FECD0E (id_joueur2_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE matchs (id INT AUTO_INCREMENT NOT NULL, id_planning_id INT NOT NULL, id_vainqueur_id INT DEFAULT NULL, id_perdant_id INT NOT NULL, id_joueur1_id INT DEFAULT NULL, id_joueur2_id INT NOT NULL, id_equipe1_id INT DEFAULT NULL, id_equipe2_id INT DEFAULT NULL, etape VARCHAR(255) NOT NULL, score VARCHAR(255) NOT NULL, est_double TINYINT(1) NOT NULL, INDEX IDX_6B1E604125949EE6 (id_planning_id), INDEX IDX_6B1E604154FD409C (id_vainqueur_id), INDEX IDX_6B1E6041AFC669F3 (id_perdant_id), UNIQUE INDEX UNIQ_6B1E6041374B62E0 (id_joueur1_id), UNIQUE INDEX UNIQ_6B1E604125FECD0E (id_joueur2_id), UNIQUE INDEX UNIQ_6B1E6041E7EF10DB (id_equipe1_id), UNIQUE INDEX UNIQ_6B1E6041F55ABF35 (id_equipe2_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE equipe ADD CONSTRAINT FK_2449BA15374B62E0 FOREIGN KEY (id_joueur1_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE equipe ADD CONSTRAINT FK_2449BA1525FECD0E FOREIGN KEY (id_joueur2_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E604125949EE6 FOREIGN KEY (id_planning_id) REFERENCES planning (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E604154FD409C FOREIGN KEY (id_vainqueur_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E6041AFC669F3 FOREIGN KEY (id_perdant_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E6041374B62E0 FOREIGN KEY (id_joueur1_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E604125FECD0E FOREIGN KEY (id_joueur2_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E6041E7EF10DB FOREIGN KEY (id_equipe1_id) REFERENCES equipe (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E6041F55ABF35 FOREIGN KEY (id_equipe2_id) REFERENCES equipe (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE matchs DROP FOREIGN KEY FK_6B1E6041E7EF10DB');
        $this->addSql('ALTER TABLE matchs DROP FOREIGN KEY FK_6B1E6041F55ABF35');
        $this->addSql('DROP TABLE equipe');
        $this->addSql('DROP TABLE matchs');
    }
}
