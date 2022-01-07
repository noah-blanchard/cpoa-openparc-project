<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220107124822 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE arbitre ADD matchs_arbitres_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE arbitre ADD CONSTRAINT FK_20B2E66E183B7DE7 FOREIGN KEY (matchs_arbitres_id) REFERENCES matchs (id)');
        $this->addSql('CREATE INDEX IDX_20B2E66E183B7DE7 ON arbitre (matchs_arbitres_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE arbitre DROP FOREIGN KEY FK_20B2E66E183B7DE7');
        $this->addSql('DROP INDEX IDX_20B2E66E183B7DE7 ON arbitre');
        $this->addSql('ALTER TABLE arbitre DROP matchs_arbitres_id');
    }
}
