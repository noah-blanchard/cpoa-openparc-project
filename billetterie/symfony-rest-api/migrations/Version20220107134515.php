<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220107134515 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE matchs_arbitre DROP FOREIGN KEY FK_ED45AC3288EB7468');
        $this->addSql('ALTER TABLE reserv_court DROP FOREIGN KEY FK_A0343EF27A654043');
        $this->addSql('DROP TABLE matchs');
        $this->addSql('DROP TABLE matchs_arbitre');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE matchs (id INT AUTO_INCREMENT NOT NULL, id_planning_id INT NOT NULL, id_vainqueur_id INT DEFAULT NULL, id_perdant_id INT NOT NULL, id_joueur1 INT NOT NULL, etape VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, score VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, est_double TINYINT(1) NOT NULL, id_joueur2 INT NOT NULL, id_equipe1 INT NOT NULL, id_equipe2 INT NOT NULL, INDEX IDX_6B1E604154FD409C (id_vainqueur_id), INDEX IDX_6B1E604125949EE6 (id_planning_id), INDEX IDX_6B1E6041AFC669F3 (id_perdant_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE matchs_arbitre (matchs_id INT NOT NULL, arbitre_id INT NOT NULL, INDEX IDX_ED45AC3288EB7468 (matchs_id), INDEX IDX_ED45AC32943A5F0 (arbitre_id), PRIMARY KEY(matchs_id, arbitre_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E604125949EE6 FOREIGN KEY (id_planning_id) REFERENCES planning (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E6041AFC669F3 FOREIGN KEY (id_perdant_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE matchs ADD CONSTRAINT FK_6B1E604154FD409C FOREIGN KEY (id_vainqueur_id) REFERENCES joueur (id)');
        $this->addSql('ALTER TABLE matchs_arbitre ADD CONSTRAINT FK_ED45AC3288EB7468 FOREIGN KEY (matchs_id) REFERENCES matchs (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE matchs_arbitre ADD CONSTRAINT FK_ED45AC32943A5F0 FOREIGN KEY (arbitre_id) REFERENCES arbitre (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE reserv_court ADD CONSTRAINT FK_A0343EF27A654043 FOREIGN KEY (id_match_id) REFERENCES matchs (id)');
    }
}
