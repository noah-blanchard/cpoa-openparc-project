<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220113081905 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE reservation DROP FOREIGN KEY FK_42C8495529D76B4B');
        $this->addSql('DROP INDEX UNIQ_42C8495529D76B4B ON reservation');
        $this->addSql('ALTER TABLE reservation DROP id_joueur_id');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE reservation ADD id_joueur_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE reservation ADD CONSTRAINT FK_42C8495529D76B4B FOREIGN KEY (id_joueur_id) REFERENCES joueur (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_42C8495529D76B4B ON reservation (id_joueur_id)');
    }
}
