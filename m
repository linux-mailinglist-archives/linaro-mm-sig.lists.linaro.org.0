Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1383919D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:19:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63DCB6143A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:19:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 42C1D6116F; Wed, 26 May 2021 14:18:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2776B6050C;
	Wed, 26 May 2021 14:18:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E64AC60B83
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Apr 2021 12:28:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DBED160B8E; Wed, 28 Apr 2021 12:28:08 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by lists.linaro.org (Postfix) with ESMTPS id CDA4E60B83
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Apr 2021 12:28:06 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id 10so1082270pfl.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Apr 2021 05:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=FCc5BZu5iRztXIUiSt2+3FhaGtDlfucfxXcqT01eExc=;
 b=s1ybdI7WecLYnVPXzIG8r2ufsshTyUG6UBIgf5iZ9rQliaO9QErsrYXIa/i4JeqNQF
 NTu9m1+eajP/7Ozit9TFqR+4pw8P2Ja2s3PWyb+f91pWvvAARcpkSa+HnfVT/C/YVfvh
 n1crgTzs3K/MEAN/PW2chwCa1hS4loARDIabSVxomFETp3p/GHQ6A7vKf+mCo2pRHjPk
 iP54a/IAcobV9YjClrPOCz7bYoxN5yAG9KY9zz4dLEAwBwpm4yB+RkP4st+duj5Hhhcm
 mIXNDw134CsfCAfh/20N4PNaO70pYYZV7Z7MtExQtmJLlziHJgb6W+q0lVqgn0RcmV85
 /Olg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=FCc5BZu5iRztXIUiSt2+3FhaGtDlfucfxXcqT01eExc=;
 b=q2Yfaj1h0LgJS4347s2WrWz9zT6dCh+xG7NNhXQOPh5A0e9IYEKs6EwSKY6wn7yBTP
 tq6k+JkxNMm9MJ9J7Q7VTSfMZPm/8CCWX9LLpi9TxsjS/qfExGfDyKyjn82v6k40lUGu
 fZDwnjuutlR1Q1YulBIW1vz9BDsObjY9Z4laDZ4yUhYUEbW9Ee0RT9nZEaUx8eTtIkgy
 eaCrByLrDIY2EixHyer2asuZlJ6NoC64KLv73Lzoj3V/QBdcHRM9gNPXkyD/lWRRkBYx
 PRzrlNSl3VT7atKUx/UArZFOxtJrskNlM3KNwjDKYYqKLJgKzPXFvyxK4oC18mpjn7PR
 iB5A==
X-Gm-Message-State: AOAM531JXDMjZKAaKKEGIFmNvdfXYe0VsZtYcl6wwWsh0PbZP/GmQ/0K
 yXd0AoD1BWIFWt4COZhZzVg=
X-Google-Smtp-Source: ABdhPJzFwvuMniv8ai0SvEHoZynqHjurs4c0D6rOCMpJ54ptB8lK6dKuU/popa6Id15ZLDpegNO2ww==
X-Received: by 2002:a65:6085:: with SMTP id t5mr26835510pgu.201.1619612884496; 
 Wed, 28 Apr 2021 05:28:04 -0700 (PDT)
Received: from localhost ([157.45.56.196])
 by smtp.gmail.com with ESMTPSA id l3sm4868719pju.44.2021.04.28.05.28.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 28 Apr 2021 05:28:03 -0700 (PDT)
Date: Wed, 28 Apr 2021 17:57:55 +0530
From: Shubhankar Kuranagatti <shubhankarvk@gmail.com>
To: wsa@kernel.org
Message-ID: <20210428122755.2s56uotb225rezcw@kewl-virtual-machine>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20171215
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH] drivers: i2c: i2c-core-smbus.c: Fix
 alignment of comment
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org,
 linux-i2c@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Multi line comment have been aligned starting with a *
The closing */ has been shifted to a new line.
Single space replaced with tab space
This is done to maintain code uniformity.

Signed-off-by: Shubhankar Kuranagatti <shubhankarvk@gmail.com>
---
 drivers/i2c/i2c-core-smbus.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/i2c/i2c-core-smbus.c b/drivers/i2c/i2c-core-smbus.c
index d2d32c0fd8c3..205750518c21 100644
--- a/drivers/i2c/i2c-core-smbus.c
+++ b/drivers/i2c/i2c-core-smbus.c
@@ -66,10 +66,11 @@ static inline void i2c_smbus_add_pec(struct i2c_msg *msg)
 }
 
 /* Return <0 on CRC error
-   If there was a write before this read (most cases) we need to take the
-   partial CRC from the write part into account.
-   Note that this function does modify the message (we need to decrease the
-   message length to hide the CRC byte from the caller). */
+ * If there was a write before this read (most cases) we need to take the
+ * partial CRC from the write part into account.
+ * Note that this function does modify the message (we need to decrease the
+ * message length to hide the CRC byte from the caller).
+ */
 static int i2c_smbus_check_pec(u8 cpec, struct i2c_msg *msg)
 {
 	u8 rpec = msg->buf[--msg->len];
@@ -113,7 +114,7 @@ EXPORT_SYMBOL(i2c_smbus_read_byte);
 s32 i2c_smbus_write_byte(const struct i2c_client *client, u8 value)
 {
 	return i2c_smbus_xfer(client->adapter, client->addr, client->flags,
-	                      I2C_SMBUS_WRITE, value, I2C_SMBUS_BYTE, NULL);
+			I2C_SMBUS_WRITE, value, I2C_SMBUS_BYTE, NULL);
 }
 EXPORT_SYMBOL(i2c_smbus_write_byte);
 
@@ -387,7 +388,8 @@ static s32 i2c_smbus_xfer_emulated(struct i2c_adapter *adapter, u16 addr,
 		if (read_write == I2C_SMBUS_READ) {
 			msg[1].flags |= I2C_M_RECV_LEN;
 			msg[1].len = 1; /* block length will be added by
-					   the underlying bus driver */
+					 * the underlying bus driver
+					 */
 			i2c_smbus_try_get_dmabuf(&msg[1], 0);
 		} else {
 			msg[0].len = data->block[0] + 2;
@@ -418,7 +420,8 @@ static s32 i2c_smbus_xfer_emulated(struct i2c_adapter *adapter, u16 addr,
 
 		msg[1].flags |= I2C_M_RECV_LEN;
 		msg[1].len = 1; /* block length will be added by
-				   the underlying bus driver */
+				 * the underlying bus driver
+				 */
 		i2c_smbus_try_get_dmabuf(&msg[1], 0);
 		break;
 	case I2C_SMBUS_I2C_BLOCK_DATA:
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
