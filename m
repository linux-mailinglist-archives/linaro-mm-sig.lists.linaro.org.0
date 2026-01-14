Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePYfK7YL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6406F4118B9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 816453F823
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:17:57 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by lists.linaro.org (Postfix) with ESMTPS id C64F440145
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 01:19:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=mLXSkfCX;
	spf=pass (lists.linaro.org: domain of acelan@gmail.com designates 209.85.214.169 as permitted sender) smtp.mailfrom=acelan@gmail.com;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=canonical.com (policy=reject)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a0d67f1877so61869435ad.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 17:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768353564; x=1768958364; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=dlOXF98nQWsAI+xBrlydKqrONWGhVbP1fEx5oYHqnV4=;
        b=mLXSkfCX/dhJ3XWZ8G1s20PkbCnYGXGQCnWMtnrXGmz2YcZ2pvHBMY3QIV3eEefohM
         OdyvlPhhJnkmPZkGuFPPd+M63kSf4NwEAa7W9byaCu0cQADaIVbCMWs9aml1WSmD0G9V
         1bjEPu4ugwaE+JvD8aVqtDriETosDWvLSTpgS9mKj8dM2fkIsOOaFvyYRQD/JSHg1c+q
         opeYf80ivJ9xr6idUf+95UWzn9w0L6oAq0iaST/RHcUZ06t7gFdITsrRKVdS6XffNPD/
         weg6DJ6tCs2qzpPPascCoDObFy2NdowCIXI7EL56YCYsmOmH7PxW/2NrT4RCyDgsPP1T
         uCOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768353564; x=1768958364;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dlOXF98nQWsAI+xBrlydKqrONWGhVbP1fEx5oYHqnV4=;
        b=sqykzas86duU4Gs2B6YNmtnNHBeTbNxsVjEu5BxVAzXZuyX1D/IOgNxgxDMtRnMrwU
         hZap0p1IUWFYQLlhvoMxgNIYZwuLhPFn1SmTHYYmADdG/LK8e9aGyEe6rpy6erBkklBo
         4VduPb6bTf4dm9o5YOcGds1R5Jy9j/VheSoV4dOySqV0gvXHDwe029s9TqsuIaofSNGq
         NxBaf0asc8zpdPRA9848Bms/RyZlGd44jf11yt2Bh57uXrdAhw7jZBMzSRqiyGTiDAaf
         oKUSOt19QIOKnr4gGwomIjM4tn4/2FjRsMFevStCeoCf0PdZJZju2fxCGJ8LxF8CtYnX
         2sgA==
X-Forwarded-Encrypted: i=1; AJvYcCUTNnjxDo6Q1Gyd7skmNYFSNnwmJVO8bqqYJwoz9Zt3Al6xVlsZfiVy67yqeJKvIwsfxclp9FGc6nsY4UrW@lists.linaro.org
X-Gm-Message-State: AOJu0YwHbJPc0DPcrmrvwLv4nNeQrd1Jybu7zv0lscJe2UxKzVDJGYxl
	CO4G8CZa4GZsFYcY0GfHkgb/yjPb5qCbgaohRmGuojgJyB7ZB+vra86O
X-Gm-Gg: AY/fxX5SdDF22A+AMWAyWr2kL/49gAZQu6O/M74V5R2LwJZoD9vw52lKGu4k4ViStx+
	cPXia+5OP6DXVBdjSq88HcxFhYoIP1U8m9nVTXlbKYWeg3RpHKu9WTPBoeACobKemBlPkuJ/IQA
	cJdnvGRyQklCBFhK7TevzPh/bgpCgP1ZQn/pHZRld1842A342PI/vk3ft5vxWoHx8c5bKyVDQ9H
	AiET6mL4BkOM5dZMwJzQc5TshTbRmZ2cm0qx4S6nTcD6nFbFMHznRFGxAbcPMmOCcvcSiZ6DKnw
	pWAJUQjpPvInnPGbKPtGh2AxEbEjkrxK4bPD/xnvvHc6bWUUbNLDAfaulxaw/+8ZQ7Ev2qcdVMl
	gb6bFqAGXpy/4GHax+8PST/gxgDVf8oah++M5PDF6A4V6jI8dJifA/aom9vVVk4Q+7/FjjNAIX+
	LtQ0LO
X-Received: by 2002:a17:902:c410:b0:29e:a615:f508 with SMTP id d9443c01a7336-2a599e23086mr9306655ad.28.1768353563768;
        Tue, 13 Jan 2026 17:19:23 -0800 (PST)
Received: from localhost ([2001:67c:1562:8007::aac:4468])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2e26sm208067015ad.48.2026.01.13.17.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 17:19:23 -0800 (PST)
Sender: AceLan Kao <acelan@gmail.com>
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
Date: Wed, 14 Jan 2026 09:19:16 +0800
Message-ID: <20260114011917.241196-1-acelan.kao@canonical.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spamd-Bar: /
X-MailFrom: acelan@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CTTVLR2737BCZJW6KUGHSES7BQDGVFD2
X-Message-ID-Hash: CTTVLR2737BCZJW6KUGHSES7BQDGVFD2
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:57 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: set SB_I_NOEXEC and SB_I_NODEV on dmabuf filesystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CTTVLR2737BCZJW6KUGHSES7BQDGVFD2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[canonical.com : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[2222];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.682];
	FROM_NEQ_ENVFROM(0.00)[acelan.kao@canonical.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,canonical.com:mid,canonical.com:email]
X-Rspamd-Queue-Id: 6406F4118B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The VFS now warns if an inode flagged with S_ANON_INODE is located on a
filesystem that does not have SB_I_NOEXEC set. dmabuf inodes are
created using alloc_anon_inode(), which sets S_ANON_INODE.

This triggers a warning in path_noexec() when a dmabuf is mmapped, for
example by GStreamer's v4l2src element.

[   60.061328] WARNING: CPU: 2 PID: 2803 at fs/exec.c:125 path_noexec+0xa0/0xd0
...
[   60.061637]  do_mmap+0x2b5/0x680

The warning was introduced by commit 1e7ab6f67824 ("anon_inode: rework
assertions") which added enforcement that anonymous inodes must be on
filesystems with SB_I_NOEXEC set.

Fix this by setting SB_I_NOEXEC and SB_I_NODEV on the dmabuf filesystem
context, following the same pattern as commit ce7419b6cf23d ("anon_inode:
raise SB_I_NODEV and SB_I_NOEXEC") and commit 98f99394a104c ("secretmem:
use SB_I_NOEXEC").

Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
---
 drivers/dma-buf/dma-buf.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index a4d8f2ff94e46..dea79aaab10ce 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -221,6 +221,8 @@ static int dma_buf_fs_init_context(struct fs_context *fc)
 	if (!ctx)
 		return -ENOMEM;
 	ctx->dops = &dma_buf_dentry_ops;
+	fc->s_iflags |= SB_I_NOEXEC;
+	fc->s_iflags |= SB_I_NODEV;
 	return 0;
 }
 
-- 
2.51.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
