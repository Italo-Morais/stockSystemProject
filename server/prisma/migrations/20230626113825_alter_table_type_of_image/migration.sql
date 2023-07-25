-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Products" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "price" REAL NOT NULL,
    "description" TEXT NOT NULL,
    "amount" INTEGER NOT NULL,
    "validity" DATETIME NOT NULL,
    "image" TEXT NOT NULL
);
INSERT INTO "new_Products" ("amount", "description", "id", "image", "name", "price", "validity") SELECT "amount", "description", "id", "image", "name", "price", "validity" FROM "Products";
DROP TABLE "Products";
ALTER TABLE "new_Products" RENAME TO "Products";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
