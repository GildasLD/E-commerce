<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20221106183049 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE categories (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, slug VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE media_object (id INT AUTO_INCREMENT NOT NULL, file_path VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE notation (id INT AUTO_INCREMENT NOT NULL, product_id_id INT DEFAULT NULL, user_id_id INT DEFAULT NULL, notation_date DATETIME NOT NULL, commentary LONGTEXT DEFAULT NULL, suggestions LONGTEXT DEFAULT NULL, ranking_stars INT DEFAULT NULL, INDEX IDX_268BC95DE18E50B (product_id_id), INDEX IDX_268BC959D86650F (user_id_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE orders (id INT AUTO_INCREMENT NOT NULL, user_id INT NOT NULL, reference VARCHAR(255) NOT NULL, date DATETIME NOT NULL, total_price INT DEFAULT NULL, INDEX IDX_E52FFDEEA76ED395 (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE orders_details (id INT AUTO_INCREMENT NOT NULL, product_id INT NOT NULL, orders_id INT DEFAULT NULL, quantity INT NOT NULL, price INT NOT NULL, INDEX IDX_835379F14584665A (product_id), INDEX IDX_835379F1CFFE9AD6 (orders_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE product (id INT AUTO_INCREMENT NOT NULL, image_id INT DEFAULT NULL, categories_id INT DEFAULT NULL, name VARCHAR(255) NOT NULL, slug VARCHAR(255) NOT NULL, description LONGTEXT DEFAULT NULL, price DOUBLE PRECISION DEFAULT NULL, stock INT DEFAULT NULL, click INT DEFAULT NULL, INDEX IDX_D34A04AD3DA5256D (image_id), INDEX IDX_D34A04ADA21214B7 (categories_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE `user` (id INT AUTO_INCREMENT NOT NULL, email VARCHAR(180) NOT NULL, roles LONGTEXT NOT NULL COMMENT \'(DC2Type:json)\', password VARCHAR(255) NOT NULL, firstname VARCHAR(255) DEFAULT NULL, lastname VARCHAR(255) DEFAULT NULL, address VARCHAR(255) DEFAULT NULL, zipcode VARCHAR(255) DEFAULT NULL, city VARCHAR(255) DEFAULT NULL, UNIQUE INDEX UNIQ_8D93D649E7927C74 (email), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE notation ADD CONSTRAINT FK_268BC95DE18E50B FOREIGN KEY (product_id_id) REFERENCES product (id)');
        $this->addSql('ALTER TABLE notation ADD CONSTRAINT FK_268BC959D86650F FOREIGN KEY (user_id_id) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE orders ADD CONSTRAINT FK_E52FFDEEA76ED395 FOREIGN KEY (user_id) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE orders_details ADD CONSTRAINT FK_835379F14584665A FOREIGN KEY (product_id) REFERENCES product (id)');
        $this->addSql('ALTER TABLE orders_details ADD CONSTRAINT FK_835379F1CFFE9AD6 FOREIGN KEY (orders_id) REFERENCES orders (id)');
        $this->addSql('ALTER TABLE product ADD CONSTRAINT FK_D34A04AD3DA5256D FOREIGN KEY (image_id) REFERENCES media_object (id)');
        $this->addSql('ALTER TABLE product ADD CONSTRAINT FK_D34A04ADA21214B7 FOREIGN KEY (categories_id) REFERENCES categories (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE notation DROP FOREIGN KEY FK_268BC95DE18E50B');
        $this->addSql('ALTER TABLE notation DROP FOREIGN KEY FK_268BC959D86650F');
        $this->addSql('ALTER TABLE orders DROP FOREIGN KEY FK_E52FFDEEA76ED395');
        $this->addSql('ALTER TABLE orders_details DROP FOREIGN KEY FK_835379F14584665A');
        $this->addSql('ALTER TABLE orders_details DROP FOREIGN KEY FK_835379F1CFFE9AD6');
        $this->addSql('ALTER TABLE product DROP FOREIGN KEY FK_D34A04AD3DA5256D');
        $this->addSql('ALTER TABLE product DROP FOREIGN KEY FK_D34A04ADA21214B7');
        $this->addSql('DROP TABLE categories');
        $this->addSql('DROP TABLE media_object');
        $this->addSql('DROP TABLE notation');
        $this->addSql('DROP TABLE orders');
        $this->addSql('DROP TABLE orders_details');
        $this->addSql('DROP TABLE product');
        $this->addSql('DROP TABLE `user`');
    }
}
