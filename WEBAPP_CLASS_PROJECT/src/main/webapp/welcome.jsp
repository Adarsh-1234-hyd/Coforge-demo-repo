<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Account Created</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <style>
    :root{
      --bg: #0f172a;         /* slate-900 */
      --card: #111827;       /* gray-900 */
      --muted: #94a3b8;      /* slate-400 */
      --text: #e5e7eb;       /* gray-200 */
      --accent: #22d3ee;     /* cyan-400 */
      --accent-2: #60a5fa;   /* blue-400 */
      --success: #34d399;    /* emerald-400 */
      --danger: #f87171;     /* red-400 */
      --ring: rgba(96,165,250,.35);
      --shadow: 0 20px 40px rgba(2,6,23,.45);
      --radius: 16px;
    }

    * { box-sizing: border-box; }

    body{
      margin: 0;
      min-height: 100svh;
      font-family: system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji";
      background: radial-gradient(1200px 600px at 10% 10%, #0b1220 0%, var(--bg) 60%) fixed,
                  conic-gradient(from 180deg at 70% 10%, #0b1220, #0f172a, #0b1220);
      color: var(--text);
      display: grid;
      place-items: center;
      padding: 24px;
    }

    .wrap{
      width: min(720px, 100%);
    }

    .card{
      background: linear-gradient(180deg, rgba(255,255,255,.03), rgba(255,255,255,.02)) , var(--card);
      border: 1px solid rgba(148,163,184,.15);
      border-radius: var(--radius);
      padding: 28px;
      box-shadow: var(--shadow);
      position: relative;
      overflow: hidden;
      isolation: isolate;
    }

    /* Subtle accent lines */
    .card::before, .card::after{
      content:"";
      position: absolute;
      inset: -1px;
      background:
        radial-gradient(400px 120px at 10% -10%, rgba(34,211,238,.25), transparent 60%),
        radial-gradient(400px 120px at 110% 110%, rgba(96,165,250,.2), transparent 60%);
      z-index: -1;
      pointer-events: none;
    }

    .badge{
      display: inline-flex;
      align-items: center;
      gap: 8px;
      border: 1px solid rgba(52,211,153,.35);
      color: var(--success);
      padding: 6px 10px;
      border-radius: 999px;
      font-size: 12px;
      letter-spacing: .3px;
      background: rgba(16,185,129,.08);
    }

    .title{
      margin: 14px 0 6px;
      font-size: clamp(22px, 2.6vw, 28px);
      line-height: 1.2;
      font-weight: 700;
      letter-spacing: .2px;
    }

    .subtitle{
      margin: 0 0 20px;
      color: var(--muted);
      font-size: 14px;
    }

    .greet{
      margin: 18px 0 10px;
      font-size: clamp(18px, 2vw, 20px);
    }

    .greet b{
      color: var(--accent);
      text-shadow: 0 0 14px rgba(34,211,238,.25);
    }

    .kv{
      display: grid;
      grid-template-columns: 1fr;
      gap: 12px;
      margin-top: 14px;
    }
    @media (min-width: 560px){
      .kv{ grid-template-columns: 1fr 1fr; }
    }

    .item{
      border: 1px solid rgba(148,163,184,.18);
      border-radius: 12px;
      padding: 14px;
      background: rgba(2,6,23,.35);
      transition: border-color .2s ease, transform .08s ease;
    }
    .item:hover{
      border-color: rgba(96,165,250,.45);
      transform: translateY(-1px);
      box-shadow: 0 8px 16px var(--ring);
    }

    .label{
      display: block;
      font-size: 12px;
      color: var(--muted);
      margin-bottom: 6px;
      letter-spacing: .3px;
      text-transform: uppercase;
    }
    .value{
      font-size: 15px;
      word-break: break-word;
    }

    .danger-note{
      margin-top: 16px;
      font-size: 12px;
      color: var(--danger);
      background: rgba(248,113,113,.08);
      border: 1px solid rgba(248,113,113,.25);
      padding: 10px 12px;
      border-radius: 10px;
    }

    .footer{
      margin-top: 22px;
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
      align-items: center;
      justify-content: space-between;
      color: var(--muted);
      font-size: 12px;
    }

    .btn{
      appearance: none;
      border: 0;
      border-radius: 999px;
      padding: 10px 14px;
      background: linear-gradient(90deg, var(--accent), var(--accent-2));
      color: #081018;
      font-weight: 700;
      letter-spacing: .2px;
      cursor: pointer;
      box-shadow: 0 8px 18px rgba(34,211,238,.25), 0 4px 10px rgba(96,165,250,.18);
      transition: transform .08s ease, filter .2s ease;
      text-decoration: none;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .btn:hover{ filter: brightness(1.05); transform: translateY(-1px); }
    .btn:active{ transform: translateY(0); }
  </style>
</head>
<body>
  <main class="wrap">
    <section class="card" role="status" aria-live="polite">
      <span class="badge" aria-label="Success">
        ✅ Account Created
      </span>

      <h1 class="title">Welcome, <span style="color:var(--accent-2)">${name}</span>!</h1>
      <p class="subtitle">Your account has been created successfully.</p>

      <p class="greet">Hi <b>${name}</b>, here are your account credentials:</p>

      <div class="kv">
        <div class="item">
          <span class="label">Username</span>
          <span class="value">${name}</span>
        </div>

        <div class="item">
          <span class="label">Mobile Number</span>
          <span class="value">${mobileno}</span>
        </div>

        <div class="item">
          <span class="label">Email</span>
          <span class="value">${email}</span>
        </div>

        <div class="item">
          <span class="label">Password</span>
          <span class="value">${pwd}</span>
        </div>
      </div>

      <!-- Optional warning about showing passwords -->
      <p class="danger-note">
        ⚠️ For security, avoid displaying passwords in emails or pages. Consider masking it or
        showing a one-time setup link instead.
      </p>

      <div class="footer">
        <span>Need help? Contact support within 24 hours if anything looks incorrect.</span>
        <a class="btn" href="/login">
          Go to Login →
        </a>
      </div>
    </section>
  </main>
</body>
</html>
``