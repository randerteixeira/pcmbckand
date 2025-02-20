/*
  Warnings:

  - Made the column `authorId` on table `post` required. This step will fail if there are existing NULL values in that column.

*/
-- DropIndex
DROP INDEX `Post_authorId_fkey` ON `post`;

-- AlterTable
ALTER TABLE `post` MODIFY `authorId` INTEGER NOT NULL,
    MODIFY `subtitle` VARCHAR(191) NULL;

-- CreateTable
CREATE TABLE `Depart` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nameDepart` VARCHAR(191) NOT NULL,
    `centroCusto` BIGINT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Post` ADD CONSTRAINT `Post_authorId_fkey` FOREIGN KEY (`authorId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
