Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDYbLKpg5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:21:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C60A4310AF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:21:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E10673F82F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:21:44 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by lists.linaro.org (Postfix) with ESMTPS id 28B613F702
	for <linaro-mm-sig@lists.linaro.org>; Sat, 14 Mar 2026 23:28:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=haAWwZ8f;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.208.179 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3870778358aso26751211fa.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 14 Mar 2026 16:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773530880; x=1774135680; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jCtEmGh8LeY5ZVx8BhZuufdcg167qUrzjvmKMxMMtZ8=;
        b=haAWwZ8f9osCusE5+OWlwOAE6PZ74ygUbDmH4owDiFYLWr/l9Q2dKsY2VDLDY1KhWh
         /6LtL5SPtGJgQlDDunpTA3+id015Rw228qMrcoatA05jaeW2v7FfCK82niN+pQpvMubI
         5YFXcm3mRY+8x2uxUfIUlKQ5yLmjX95Lm5vuPDLNj2OxIu2lDrEmCyb9dZ/a+SPoREch
         Snjpzm6J6qAAHJumirh3E8wFFSkNNLPthREnGWD3tkC1BtkjMI1ijew7iJbGGJxtK7OI
         8rYLRcBjisnvMzzJeoiw5nDLQnByzo5X2bCKYWcSVOXvJuyiX/kcScBApQswpohlvMcD
         e79Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773530880; x=1774135680;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jCtEmGh8LeY5ZVx8BhZuufdcg167qUrzjvmKMxMMtZ8=;
        b=azPyRhs8ie+yDPpM9ANTDJb/AMm6dXKuOF53ohUI/iXc7tT1WbqKxn7BW+VIUJr+je
         jEN+K2mydeCgVIJifKIgxH2CsaE/fyHV0ctmKE2ZUQsST2gU+cWMcsp8BE9LHMTj1LXx
         gxGicDfhkDqcTpOkXscqj9aVBmfSLBpNdePva9adtgz8BceVBzDZSDVYIEg2rQBHSw9z
         OdKrD4W6c7ETU9t0XG+X3WDlAxNW8ZHeF9+SP1YlB7iYCIrC6Pbo7J5qLaBHTM/fGe0J
         RfstgLYqjXvMhclf8xVFjSyOsyYrJP2aYkyFX7IJPgnPpcbwOXMgXdPHINxSj1QnppBk
         M49A==
X-Forwarded-Encrypted: i=1; AJvYcCX3e4per355VjSuFp/Ztduy7sURaNIDIyt+dy2uMG18VkqCy2NmOjOjYT5cH66//stz2bz8tQAl+/RVHzNG@lists.linaro.org
X-Gm-Message-State: AOJu0YyqExk/To9zn3MflhMLC6Z7ow961/obDdu4aMj0kgtxI4RyZN/U
	pw5BFeVIAXE4JkNUqBYfTWwzmiS2vyRSVZLtblteF2b4xjh0eJKSkP6F
X-Gm-Gg: ATEYQzwdIabcLVuZEGF1DtXHoYFkepAilEyDRHh4wEmgBcbRxcokHbCNRvctinmYnz6
	BZ4MjLPGB34M8WFmzWsPmx1Ub5P6a448qyz6nAi9wPX110O4dlO3Myj+ZoRqETmcI5bg92yI9GZ
	q/6T2duZxjF7AEClqLYXhY/omd11p3cCvJmmZYSC0hLein+rnpJNM4XXBdHYL747M2xQneZZjZ7
	D21hDElKd+TVb7CPQngTFcNe+ecvocYeQdcrSoZoX1M/L3SyQOLQyS0y7XjrdSftR7Uje6APYQ9
	H2AYcHTZkkp3XUqslPVSGMot2FSKdoY3rj1bk9ZhJ8krn6jR8Jub+lT2zarexgnMX3Q2pLrdmLl
	0oTNk1csrATZYQWFXSiOQI/Ixu98LqY6ElxGN+gV3EZkaT8+UC1aGOCylvSIjI/wEphbrjJwfqH
	YlUjUW9FoM87x1BsrTd62o1537CvGceWcZiA==
X-Received: by 2002:a05:651c:4083:b0:385:bb24:d0eb with SMTP id 38308e7fff4ca-38a897b7410mr17019691fa.34.1773530879579;
        Sat, 14 Mar 2026 16:27:59 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67d9a4b6sm24308881fa.12.2026.03.14.16.27.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 16:27:58 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: kraxel@redhat.com,
	vivek.kasireddy@intel.com
Date: Sun, 15 Mar 2026 04:27:22 +0500
Message-ID: <20260314232722.15555-1-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U4JQ2WF4ZDR5WHV7RN7PY7TBIF73D2PP
X-Message-ID-Hash: U4JQ2WF4ZDR5WHV7RN7PY7TBIF73D2PP
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:43 +0000
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] udmabuf: fix DMA direction mismatch in release_udmabuf()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U4JQ2WF4ZDR5WHV7RN7PY7TBIF73D2PP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[881];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,gmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.771];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 4C60A4310AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

begin_cpu_udmabuf() maps the sg_table with the caller-provided direction
(e.g., DMA_TO_DEVICE for a write-only sync), and caches it in ubuf->sg
for reuse.  However, release_udmabuf() always unmaps this sg_table with
a hardcoded DMA_BIDIRECTIONAL, regardless of the direction that was
originally used for the mapping.

With CONFIG_DMA_API_DEBUG=y this produces:

  DMA-API: misc udmabuf: device driver frees DMA memory with different
  direction [device address=0x000000044a123000] [size=4096 bytes]
  [mapped with DMA_TO_DEVICE] [unmapped with DMA_BIDIRECTIONAL]

The issue was found during video playback when GStreamer performed a
write-only DMA_BUF_IOCTL_SYNC on a udmabuf.  It can be reproduced
with CONFIG_DMA_API_DEBUG=y by creating a udmabuf from a memfd,
performing a write-only sync (DMA_BUF_SYNC_WRITE without
DMA_BUF_SYNC_READ), and closing the file descriptor.

Fix this by storing the DMA direction used when the sg_table is first
created in begin_cpu_udmabuf(), and passing that same direction to
put_sg_table() in release_udmabuf().

Fixes: 284562e1f348 ("udmabuf: implement begin_cpu_access/end_cpu_access hooks")
Cc: stable@vger.kernel.org
Signed-off-by: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
---
 drivers/dma-buf/udmabuf.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 94b8ecb892bb..d0836febefdd 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -40,6 +40,7 @@ struct udmabuf {
 	struct folio **pinned_folios;
 
 	struct sg_table *sg;
+	enum dma_data_direction sg_dir;
 	struct miscdevice *device;
 	pgoff_t *offsets;
 };
@@ -235,7 +236,7 @@ static void release_udmabuf(struct dma_buf *buf)
 	struct device *dev = ubuf->device->this_device;
 
 	if (ubuf->sg)
-		put_sg_table(dev, ubuf->sg, DMA_BIDIRECTIONAL);
+		put_sg_table(dev, ubuf->sg, ubuf->sg_dir);
 
 	deinit_udmabuf(ubuf);
 	kfree(ubuf);
@@ -253,6 +254,8 @@ static int begin_cpu_udmabuf(struct dma_buf *buf,
 		if (IS_ERR(ubuf->sg)) {
 			ret = PTR_ERR(ubuf->sg);
 			ubuf->sg = NULL;
+		} else {
+			ubuf->sg_dir = direction;
 		}
 	} else {
 		dma_sync_sgtable_for_cpu(dev, ubuf->sg, direction);
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
