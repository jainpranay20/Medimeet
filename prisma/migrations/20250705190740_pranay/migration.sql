/*
  Warnings:

  - You are about to drop the column `videoSessionId` on the `Appointment` table. All the data in the column will be lost.
  - You are about to drop the column `videoSessionToken` on the `Appointment` table. All the data in the column will be lost.
  - You are about to drop the `Payout` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Payout" DROP CONSTRAINT "Payout_doctorId_fkey";

-- AlterTable
ALTER TABLE "Appointment" DROP COLUMN "videoSessionId",
DROP COLUMN "videoSessionToken";

-- DropTable
DROP TABLE "Payout";

-- DropEnum
DROP TYPE "PayoutStatus";
