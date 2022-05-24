import express from "express";
import mysql from "mysql2/promise";
import cors from "cors";

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
app.use(express.json());

const corsOptions = {
  origin: "https://cdpn.io",
  optionsSuccessStatus: 200, // some legacy browsers (IE11, various SmartTVs) choke on 204
};
app.use(cors(corsOptions));

const port = 3000;

app.get("/wisesayings", async (req, res) => {
  const [rows] = await pool.query(
    "SELECT * FROM wisesaying ORDER BY RAND() LIMIT 1"
  );

  res.json(rows);
});

app.listen(port);
