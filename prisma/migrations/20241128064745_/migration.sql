/*
  Warnings:

  - Made the column `subtitle` on table `post` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `post` DROP FOREIGN KEY `Post_authorId_fkey`;

-- AlterTable
ALTER TABLE `post` MODIFY `authorId` INTEGER NULL,
    MODIFY `subtitle` VARCHAR(191) NOT NULL;
