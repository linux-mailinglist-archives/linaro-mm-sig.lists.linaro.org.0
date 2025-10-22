Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MRBO8z24GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5583A40FC55
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DF644068B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:48:43 +0000 (UTC)
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	by lists.linaro.org (Postfix) with ESMTPS id 43A203F7A1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 04:31:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ssn.edu.in header.s=ssn header.b=CIvXJd33;
	dmarc=pass (policy=quarantine) header.from=ssn.edu.in;
	spf=pass (lists.linaro.org: domain of biancaa2210329@ssn.edu.in designates 209.85.214.194 as permitted sender) smtp.mailfrom=biancaa2210329@ssn.edu.in
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-26d0fbe238bso46722515ad.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Oct 2025 21:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ssn.edu.in; s=ssn; t=1761107476; x=1761712276; darn=lists.linaro.org;
        h=mime-version:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9f3uvbf2qrrt/ziC3rimn8Y/fAQpzGjeRz5deOCQI/U=;
        b=CIvXJd33S0CpFOGTgBDc7KAnQwI3EttYD5xHkuNVJrTCQcrOx/y71bK+9a7aUi/v3a
         DCJQEB9k/OvryBnZzOKGZHYTydE576M5S1mmotaCp2Lq/XLPMwl16gzAKj5LEzkkubgn
         3o8HTk7GFlV0cHnmFJiqc47ofreARd8MNH47I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761107476; x=1761712276;
        h=mime-version:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9f3uvbf2qrrt/ziC3rimn8Y/fAQpzGjeRz5deOCQI/U=;
        b=JO5bgomsQ7kSmFPsLEspKz0mnzhykMRhWQQy4dwNETAY5LDz0k4uER1rzb0C2CzBdV
         myPIiYIxqHOnVUfDS1Lgz1/w23sMb07gKzyPgKg1KhgzNQUrW8597dydziMTVRbt+WN4
         OT+DKQg76uT1q1E2KXsidxYge0gTUQ47TylR+nrASxb3/Q5HsfoCqksLpcYQRv9EasQv
         RQCtAn3SXagk/68p4mf9nAUNfr3+v1SVPd5TauQYoNF5ngJhqt4E1FrP9RkPEFRBnwIN
         rSIELZvPDIBPztYPhFQb3qGdzA8dSFEUaibSV/QaL963iDC6civKpK7TyZ3is0/WcLQ0
         DaHw==
X-Forwarded-Encrypted: i=1; AJvYcCU8ojVITnImKpMKng0i8YX573lrZGdhKeose7eU744qr5yBxEPHCHSO5IwFgxl9QCMZjnK/iOpwqjN0j8eN@lists.linaro.org
X-Gm-Message-State: AOJu0YxNhiLS6bp9MC9vNHhnI/lJ6yzgVByxGBG9RBQ8aLmx6elnFYKH
	Yf+vsJ/nREKXwKaJBUR08vNp0YNzK8VJ3QDpR7Be7bPJwPrLZulxaIDsqTCni3gNN5p/dfmxP54
	cipirnhQSWwhvGDaD7jDHi4TrbM2uiyQqm5+5JHxXvxPoybw7ZSkbyUOkPaM=
X-Gm-Gg: ASbGncth4Ymyz7TamSbEpLisq6GCk8LHGQcVslzphq1HpYvpmPOGQWITumyp2E2Uba0
	XXzCx1i59cbG+Y5HjW274JnLcxf5+dNFRb412+W3UjNFPJ8ITJ2ofxUGFuP5c2amf/HE32hAyOr
	I62oOWSeSKAZJGILYlsU36HJgMLkPyhnKwudXXONvLXip2DTrnER7IpxRLM8C4zkTDGxvI6OolQ
	aTz3UlmQMNw2FrcwV+ihB0ur31BqbhkIFAr26JU4RzqVSRIX5uQ07kLk/5Kf0js53zN8IwKpq81
	PUYVwJ75SK24/GPFVkzyr90XgYhV9SH3uLwLlSmRgMWJ/N/jJ7nJqyE/rY8N7/stv5t6U+FCamu
	70v1T6tzentWq5VGCNwsMwCxXyKXPZuQ7wWoIjt23ZvESh0vnGo36gn62vMGYOzxk6EJw/TZHdc
	+rwS6lp2/c5+ygQM/Ct+zgyQr5JFx1bGCiPzwQMMMg66ACo9VaEPtSO2+F4If/BpGBZtYoS8P+S
	UbnWN7KmKQi4PE=
X-Google-Smtp-Source: AGHT+IEd+bNYS6vl4w16DgOMSV/S7pPkiZN6xIuC+GDZaXXvAtfmV3zwE5YULJyf3rlJMlDMMOTqoQ==
X-Received: by 2002:a17:902:ce0e:b0:273:c463:7b2c with SMTP id d9443c01a7336-290c9c89680mr216879095ad.3.1761107476259;
        Tue, 21 Oct 2025 21:31:16 -0700 (PDT)
Received: from biancaa-HP-Pavilion-Laptop-15-eg2xxx.. ([2406:7400:1c3:33f3:2f80:d146:31b0:93aa])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-293113c1f4fsm2240455ad.116.2025.10.21.21.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 21:31:15 -0700 (PDT)
From: Biancaa Ramesh <biancaa2210329@ssn.edu.in>
To: sumit.semwal@linaro.org
Date: Wed, 22 Oct 2025 10:01:07 +0530
Message-ID: <20251022043108.7197-1-biancaa2210329@ssn.edu.in>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: biancaa2210329@ssn.edu.in
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y74YMYS6U4GPM2TIRF3BK4JRQNWSAGOR
X-Message-ID-Hash: Y74YMYS6U4GPM2TIRF3BK4JRQNWSAGOR
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:14 +0000
CC: christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, lkp@intel.com, Biancaa Ramesh <biancaa2210329@ssn.edu.in>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] Signed-off-by: Biancaa Ramesh <biancaa2210329@ssn.edu.in>
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y74YMYS6U4GPM2TIRF3BK4JRQNWSAGOR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[ssn.edu.in : SPF not aligned (relaxed), No valid DKIM,quarantine];
	DATE_IN_PAST(1.00)[4234];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	NEURAL_SPAM(0.00)[0.502];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[biancaa2210329@ssn.edu.in,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,ssn.edu.in:email,ssn.edu.in:mid,ssn.edu.in:url]
X-Rspamd-Queue-Id: 5583A40FC55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

dma-buf: improve dma_buf_show_fdinfo output

Improve the readability of /proc/<pid>/fdinfo output for DMA-BUF by
including file flags and ensuring consistent format specifiers for size
and other fields.

This patch also fixes incorrect format specifiers and removes references
to obsolete struct members (num_attachments and num_mappings) that no
longer exist in the DMA-BUF framework.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202510220802.svbgdYsJ-lkp@intel.com/
---
 drivers/dma-buf/dma-buf.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 1c0035601c4f..4541f8ec5d62 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -571,24 +571,22 @@ static long dma_buf_ioctl(struct file *file,
 	}
 }
 
-static void dma_buf_show_fdinfo(struct seq_file *s, struct file *f)
+static void dma_buf_show_fdinfo(struct seq_file *s, struct file *file)
 {
-    struct dma_buf *dmabuf = f->private_data;
+	struct dma_buf *dmabuf;
 
-    if (!dmabuf)
-        return;
+	dmabuf = file->private_data;
+	if (!dmabuf)
+		return;
 
-    seq_printf(s, "flags:\t%lu\n", f->f_flags);
-    seq_printf(s, "size:\t%llu\n", dmabuf->size);
-    seq_printf(s, "count:\t%ld\n", file_count(dmabuf->file) - 1);
-    seq_printf(s, "attachments:\t%d\n", atomic_read(&dmabuf->num_attachments));
-    seq_printf(s, "mappings:\t%d\n", atomic_read(&dmabuf->num_mappings));
-    seq_printf(s, "exp_name:\t%s\n", dmabuf->exp_name ? dmabuf->exp_name : "N/A");
+	seq_printf(s, "size:\t%zu\n", dmabuf->size);
+	seq_printf(s, "count:\t%ld\n", file_count(dmabuf->file) - 1);
+	seq_printf(s, "exp_name:\t%s\n", dmabuf->exp_name ? dmabuf->exp_name : "N/A");
 
-    spin_lock(&dmabuf->name_lock);
-    if (dmabuf->name)
-        seq_printf(s, "name:\t%s\n", dmabuf->name);
-    spin_unlock(&dmabuf->name_lock);
+	spin_lock(&dmabuf->name_lock);
+	if (dmabuf->name)
+		seq_printf(s, "name:\t%s\n", dmabuf->name);
+	spin_unlock(&dmabuf->name_lock);
 }
 
 
-- 
2.43.0


-- 
::DISCLAIMER::

---------------------------------------------------------------------
The 
contents of this e-mail and any attachment(s) are confidential and
intended 
for the named recipient(s) only. Views or opinions, if any,
presented in 
this email are solely those of the author and may not
necessarily reflect 
the views or opinions of SSN Institutions (SSN) or its
affiliates. Any form 
of reproduction, dissemination, copying, disclosure,
modification, 
distribution and / or publication of this message without the
prior written 
consent of authorized representative of SSN is strictly
prohibited. If you 
have received this email in error please delete it and
notify the sender 
immediately.
---------------------------------------------------------------------
Header of this mail should have a valid DKIM signature for the domain 
ssn.edu.in <http://www.ssn.edu.in/>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
