Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAFE5A1342
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 16:18:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7052E3F5B8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 14:18:10 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lists.linaro.org (Postfix) with ESMTPS id CC2B13F47D
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Aug 2022 14:08:02 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id x2-20020a17090ab00200b001f4da5cdc9cso12303483pjq.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Aug 2022 07:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=XLqwqki/k3C7u8+512qwgIHUnUs9SX352ijc2YXNmyo=;
        b=Q6xwZS1QliChNp80WlGV80Ap4InNEJovH7Jy6o6SyJqeKRTZRjMzkQ3IaPqKN2/oiZ
         NtIAzyBUPcur0U6Xz4C9RG4n0q8AJqXw/cF/QfxjZHZoGBd9SgdQA5Iw8lhzSntBZqrP
         trc8/tdrb9kWrd5SUOg1jIRAjwr6eqEp1/cygeAXtANwXaFIvfkmRrCR7qgsQmfMB9xH
         G9vstMwrj5hlGa82r3NTggYwm/lDsATHEeoI5tsXVuKEC/I38L+Kba2mf7+EC4gg+eKc
         ugdIX4n+oVUzK0ikxT2vKpwzX8EzglcNFVeQimDSL8nlmN9qXSFFrOlOhGRBZ5XSBTRg
         9DgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=XLqwqki/k3C7u8+512qwgIHUnUs9SX352ijc2YXNmyo=;
        b=pCTU0GU7Lyv/s9PJoars9en94GA/49Z5/ZKgYBGGvNTRzvpBd/6SHdwiA9yBltRpZF
         SsYCc7jLrheWeG1tHAumNeUuhyfCxg3CV2E6vZTG8oCS24YRmlCSYXkZm14KB3PKE0Sn
         Y+f/AOF6zND3sU3rCrMGphHOAKxiLKMA0UeQ06xNb90s1JGyQuNEFBQ/n+is8fI81JhE
         LHi1z8HWlVqj233EGQAAIgNaL1OD7Pyahax5i0mm3zJdKqoZU1/0Qjg4y+D92SSxRnq7
         ErwWVx21OlahN80Rz9XT53ad9F9ciR8ChtL/sYXbs2YO+CryKj+BLEqbFu/9xiAkCKam
         pmnA==
X-Gm-Message-State: ACgBeo17h1u0R0pk39d+ACLmqhIgXgIgzDk3wlwjFvxumjdqGQ6ortX1
	lxuRamyAO8EtH0bQmKy+lJM=
X-Google-Smtp-Source: AA6agR74Eu/frAH1DDF2DIi5PzdZPd93fll6q/Qkq8cKR83I4ccQyUB0Hz/ey+pGN/+akI8HnQZPDg==
X-Received: by 2002:a17:902:c406:b0:16e:df76:5267 with SMTP id k6-20020a170902c40600b0016edf765267mr14922969plk.8.1659881281763;
        Sun, 07 Aug 2022 07:08:01 -0700 (PDT)
Received: from localhost.localdomain ([2409:11:2360:3e00:d7d3:6cf6:2642:4646])
        by smtp.gmail.com with ESMTPSA id o14-20020a635d4e000000b0041d322b3bf6sm2761133pgm.77.2022.08.07.07.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Aug 2022 07:08:01 -0700 (PDT)
From: Robin Reckmann <robin.reckmann@googlemail.com>
X-Google-Original-From: Robin Reckmann <robin.reckmann@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Sun,  7 Aug 2022 23:04:54 +0900
Message-Id: <20220807140455.409417-1-robin.reckmann@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MailFrom: robin.reckmann@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QS5UJ6LLFEJT6D5KA5RXDZ3H2POLYJMF
X-Message-ID-Hash: QS5UJ6LLFEJT6D5KA5RXDZ3H2POLYJMF
X-Mailman-Approved-At: Thu, 25 Aug 2022 14:18:04 +0000
CC: Robin Reckmann <robin.reckmann@gmail.com>, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] i2c: qcom-geni: Fix GPI DMA buffer sync-back
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QS5UJ6LLFEJT6D5KA5RXDZ3H2POLYJMF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Fix i2c transfers using GPI DMA mode for all message types that do not set
the I2C_M_DMA_SAFE flag (e.g. SMBus "read byte").

In this case a bounce buffer is returned by i2c_get_dma_safe_msg_buf(),
and it has to synced back to the message after the transfer is done.

Add missing assignment of dma buffer in geni_i2c_gpi().

Set xferred in i2c_put_dma_safe_msg_buf() to true in case of no error to
ensure the sync-back of this dma buffer to the message.

Signed-off-by: Robin Reckmann <robin.reckmann@gmail.com>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 6ac402ea58fb..d3541e94794e 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -484,12 +484,12 @@ static void geni_i2c_gpi_unmap(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 {
 	if (tx_buf) {
 		dma_unmap_single(gi2c->se.dev->parent, tx_addr, msg->len, DMA_TO_DEVICE);
-		i2c_put_dma_safe_msg_buf(tx_buf, msg, false);
+		i2c_put_dma_safe_msg_buf(tx_buf, msg, !gi2c->err);
 	}
 
 	if (rx_buf) {
 		dma_unmap_single(gi2c->se.dev->parent, rx_addr, msg->len, DMA_FROM_DEVICE);
-		i2c_put_dma_safe_msg_buf(rx_buf, msg, false);
+		i2c_put_dma_safe_msg_buf(rx_buf, msg, !gi2c->err);
 	}
 }
 
@@ -553,6 +553,7 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 	desc->callback_param = gi2c;
 
 	dmaengine_submit(desc);
+	*buf = dma_buf;
 	*dma_addr_p = addr;
 
 	return 0;
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
