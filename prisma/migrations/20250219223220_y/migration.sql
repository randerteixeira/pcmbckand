/*
  Warnings:

  - Added the required column `cdstatus` to the `Ativos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `statusId` to the `Ativos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `ativos` ADD COLUMN `cdstatus` VARCHAR(191) NOT NULL,
    ADD COLUMN `statusId` INTEGER NOT NULL;

-- CreateTable
CREATE TABLE `Status` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `cdstatus` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Pecas` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `despeca` VARCHAR(191) NOT NULL,
    `cdpeca` VARCHAR(191) NOT NULL,
    `qtarmazen` INTEGER NOT NULL,
    `custo` DOUBLE NOT NULL,
    `endarmazen` VARCHAR(191) NOT NULL,
    `ativoId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Ativos` ADD CONSTRAINT `Ativos_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `Status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Pecas` ADD CONSTRAINT `Pecas_ativoId_fkey` FOREIGN KEY (`ativoId`) REFERENCES `Ativos`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
