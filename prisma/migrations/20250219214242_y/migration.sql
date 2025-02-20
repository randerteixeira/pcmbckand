-- CreateTable
CREATE TABLE `Ativos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `desativo` VARCHAR(191) NOT NULL,
    `cdativo` VARCHAR(191) NOT NULL,
    `linhaId` INTEGER NOT NULL,
    `setorId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Setor` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `desetor` VARCHAR(191) NOT NULL,
    `cdsetor` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Linha` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `deslinha` VARCHAR(191) NOT NULL,
    `cdlinha` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Ativos` ADD CONSTRAINT `Ativos_linhaId_fkey` FOREIGN KEY (`linhaId`) REFERENCES `Linha`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Ativos` ADD CONSTRAINT `Ativos_setorId_fkey` FOREIGN KEY (`setorId`) REFERENCES `Setor`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
