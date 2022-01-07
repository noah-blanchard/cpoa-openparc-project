<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220107130148 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE reserv_court (id INT AUTO_INCREMENT NOT NULL, id_court_id INT NOT NULL, id_match_id INT DEFAULT NULL, id_joueur_id INT DEFAULT NULL, heure INT NOT NULL, minute INT NOT NULL, jour INT NOT NULL, INDEX IDX_A0343EF2B3C3AC9C (id_court_id), INDEX IDX_A0343EF27A654043 (id_match_id), INDEX IDX_A0343EF229D76B4B (id_joueur_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE reserv_court ADD CONSTRAINT FK_A0343EF2B3C3AC9C FOREIGN KEY (id_court_id) REFERENCES court (id)');
        $this->addSql('ALTER TABLE reserv_court ADD CONSTRAINT FK_A0343EF27A654043 FOREIGN KEY (id_match_id) REFERENCES matchs (id)');
        $this->addSql('ALTER TABLE reserv_court ADD CONSTRAINT FK_A0343EF229D76B4B FOREIGN KEY (id_joueur_id) REFERENCES joueur (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE reserv_court');
    }
}
