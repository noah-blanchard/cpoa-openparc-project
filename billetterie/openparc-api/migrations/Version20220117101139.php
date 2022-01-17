<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220117101139 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE billet DROP FOREIGN KEY FK_1F034AF6DA6A219');
        $this->addSql('DROP INDEX UNIQ_1F034AF6DA6A219 ON billet');
        $this->addSql('ALTER TABLE billet ADD place INT NOT NULL, DROP place_id');
        $this->addSql('ALTER TABLE client CHANGE prenom prenom VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE billet ADD place_id INT DEFAULT NULL, DROP place');
        $this->addSql('ALTER TABLE billet ADD CONSTRAINT FK_1F034AF6DA6A219 FOREIGN KEY (place_id) REFERENCES reserv_place (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_1F034AF6DA6A219 ON billet (place_id)');
        $this->addSql('ALTER TABLE client CHANGE prenom prenom VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_unicode_ci`');
    }
}
