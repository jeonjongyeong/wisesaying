import express from "express";
import mysql from "mysql2/promise";

const pool = mysql.createPool({
  host: "localhost",
  user: "jkjkhh",
  password: "sbs123414",
  database: "wisesaying",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

const app = express();
const port = 3000;

app.get("/wisesayings", async (req, res) => {
  const [rows] = await pool.query("SELECT * FROM wisesaying");

  res.json(rows);
});

app.listen(port);
