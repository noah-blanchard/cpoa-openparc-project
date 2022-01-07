<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220107134056 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE matchs DROP FOREIGN KEY FK_6B1E6041E7EF10DB');
        $this->addSql('ALTER TABLE matchs DROP FOREIGN KEY FK_6B1E604125FECD0E');
        $this->addSql('ALTER TABLE matchs DROP FOREIGN KEY FK_6B1E6041F55ABF35');
        $this->addSql('DROP INDEX UNIQ_6B1E6041374B62E0 ON matchs');
        $this->addSql('DROP INDEX UNIQ_6B1E6041F55ABF35 ON matchs');
        $this->addSql('DROP INDEX UNIQ_6B1E604125FECD0E ON matchs');
        $this->addSql('DROP INDEX UNIQ_6B1E6041E7EF10DB ON matchs');
        $this->addSql('ALTER TABLE matchs ADD id_joueur2 INT NOT NULL, ADD id_equipe1 INT NOT NULL, ADD id_equipe2 INT NOT NULL, DROP id_equipe1_id, DROP id_equipe2_id, DROP id_joueur1_id, CHANGE id_joueur2_id id_joueur1 INT NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE matchs ADD id_joueur2_id INT NOT NULL, ADD id_equipe1_id INT DEFAULT NULL, ADD id_equipe2_id INT DEFAULT NULL, ADD id_joueur1_id INT DEFAULT NULL, DROP id_joueur1, DROP id_joueur2, DROP id_equipe1, DROP id_equipe2');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E6041E7EF10DB FOREIGN KEY (id_equipe1_id) REFERENCES equipe (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E604125FECD0E FOREIGN KEY (id_joueur2_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E6041F55ABF35 FOREIGN KEY (id_equipe2_id) REFERENCES equipe (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6B1E6041374B62E0 ON matchs (id_joueur1_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6B1E6041F55ABF35 ON matchs (id_equipe2_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6B1E604125FECD0E ON matchs (id_joueur2_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6B1E6041E7EF10DB ON matchs (id_equipe1_id)');
    }
}
