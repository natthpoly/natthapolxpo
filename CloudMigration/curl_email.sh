#!/bin/bash

# การตั้งค่าเซิร์ฟเวอร์ SMTP สำหรับ Gmail
SMTP_SERVER="smtp.taximail.com"
SMTP_PORT="587"
SMTP_USERNAME="sm2317647"
SMTP_PASSWORD="6woJontV7aaBqfu"

# ที่อยู่อีเมลของผู้รับ
TO="natthapol@xponential.asia"

# หัวเรื่องและเนื้อหาของอีเมล
SUBJECT="{X-TM-Transc-Group|:|Backoffice}Hello Curl"
BODY="This email for test SMTP"

# สร้างข้อความอีเมล
MESSAGE="Subject: $SUBJECT\n\n$BODY"

# ส่งอีเมลโดยใช้ Curl
curl --url "smtp://$SMTP_SERVER:$SMTP_PORT" \
     --ssl-reqd \
     --mail-from "$SMTP_USERNAME" \
     --mail-rcpt "$TO" \
     --user "$SMTP_USERNAME:$SMTP_PASSWORD" \
     --tlsv1.2 \
     -T <(echo -e "$MESSAGE")

echo "email sent to $TO"




curl --url 'smtps://smtp.taximail.com:587' \
  --user 'sm2317647:6woJontV7aaBqfu' \
  --mail-from 'qa-no-reply@xponential.asia' \
  --mail-rcpt 'natthapol@xponential.asia' \
  --upload-file mail.txt


From: "No Reply" <qa-no-reply@xponential.asia>
To: "Natthapol Yutthanaviwat" <natthapol@xponential.asia>
Subject: {X-TM-Transc-Group|:|Backoffice} backoffice group create
