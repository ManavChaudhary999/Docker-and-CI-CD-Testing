/*
  Warnings:

  - You are about to drop the column `value` on the `message` table. All the data in the column will be lost.
  - Added the required column `text` to the `message` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "message" DROP COLUMN "value",
ADD COLUMN     "text" TEXT NOT NULL,
ADD COLUMN     "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;
