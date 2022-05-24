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

  app.post("/wisesayings", async (req, res) => {});

  app.patch("/wisesayings/:id", async (req, res) => {
    //const id = req.params.id;
    const { id } = req.params;

    const [rows] = await pool.query(
      `
      SELECT *
      FROM wisesaying
      WHERE id = ?
      `,
      [id]
    );

    if (rows.length == 0) {
      res.status(404).json({
        msg: "not found",
      });
      return;
    }

    const { reg_date, content, author } = req.body;

    if (!reg_date) {
      res.status(400).json({
        msg: "reg_date required",
      });
      return;
    }

    if (!content) {
      res.status(400).json({
        msg: "content required",
      });
      return;
    }

    if (!author) {
      res.status(400).json({
        msg: "author required",
      });
      return;
    }

    const [rs] = await pool.query(
      `
      UPDATE wisesaying
      SET reg_date = ?,
      content = ?,
      author = ?
      WHERE id = ?
      `,
      [reg_date, content, author, id]
    );

    res.json({
      msg: `${id}번 할일이 수정되었습니다.`,
    });
  });

  app.get("/wisesayings/:id", async (req, res) => {
    //const id = req.params.id;
    const { id } = req.params;

    const [rows] = await pool.query(
      `
      SELECT *
      FROM wisesaying
      WHERE id = ?
      `,
      [id]
    );

    if (rows.length == 0) {
      res.status(404).json({
        msg: "not found",
      });
      return;
    }

    res.json(rows[0]);
  });

  res.json(rows);
});

app.listen(port);
