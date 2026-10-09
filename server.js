const express = require("express");
const path = require("path");

const app = express();
const PORT = 3000;

// Local demo only. No SMS is sent and no real account is verified.
app.use(express.json());
app.use(express.static(path.join(__dirname, "public")));

// Log requests to make browser/backend communication visible in this terminal.
app.use((req, res, next) => {
  console.log(`[${new Date().toLocaleTimeString()}] ${req.method} ${req.url}`);
  next();
});

app.post("/api/request-code", (req, res) => {
  const { phone } = req.body || {};

  if (typeof phone !== "string" || !phone.trim()) {
    return res.status(400).json({
      success: false,
      message: "Enter a test phone number."
    });
  }

  console.log("\n--- Victim Details ---");
  console.log("Test phone number submitted:", phone);
  console.log("------------------\n");

  return res.json({ success: true, message: "Demo code: 123456" });
});

app.post("/api/verify-code", (req, res) => {
  const { code } = req.body || {};

  if (typeof code !== "string" || !/^\d{6}$/.test(code)) {
    return res.status(400).json({
      success: false,
      message: "Enter a six-digit code."
    });
  }

  const valid = code === "123456";

  console.log("\n--- Victim CODE ---");
  console.log("Entered demo code:", code);
  console.log("------------------\n");

  return res.json({ success: valid });
});

app.listen(PORT, "127.0.0.1", () => {
  console.log(`Local test server: http://localhost:${PORT}`);
  console.log("Keep this terminal open.....");
});
