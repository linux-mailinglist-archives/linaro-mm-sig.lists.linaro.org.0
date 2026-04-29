Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JAnDghdBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4A4531FFF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58CBA40475
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:14:14 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id CDE2B3F7DA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 15:26:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="P/iQFjwv";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48374014a77so162933625e9.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777476383; x=1778081183; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bz5U140iikgjy9qkhQv9ANNAasoYi2fY/CedhAQlGZc=;
        b=P/iQFjwvMpDYaY2qwV84Z10QTAM962Z2Kd1rj1wvu7XsjThmQNsZIUZ0OqjqEBJ6LA
         aasIowjaGbbEPjwro5f17Yak0Zrlq3eCkifrUljXM3ONKCE2cDDDj2+x7O+HZCewcJSR
         Ltj1dUBsDWZ3yTFyDhvfx8aynNsv4v3gUQQ8cbHG0201bdq0Oexrdk1Mmpa9MLKQnQaM
         Az9ODGaplwldrYk069E7Ya+KEOdQXKFu7HToXHubTqdXLvaX70JIR7PrmA1FS6boB3fp
         98QlDwdbWPWQuiOkj4p1cFAOCcqbbvsHqTPJ21VtK8pH0Azw6VIw9WKnI3CE2CZIpoVY
         0Y2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777476383; x=1778081183;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Bz5U140iikgjy9qkhQv9ANNAasoYi2fY/CedhAQlGZc=;
        b=ByN3Nz25C68vwA3yMv9qKo3JiaqgvTxz0sC3jLV6qCZ78p+4TJcNRJlWtvrFfr+iCW
         vTSC6yONtbnagKW1rVzHz9htcEB1gzszZH11n0M91TLFqu9JqDzv+2MsIGeALf+G23xt
         x12zQBJWxjvDr/nS148LFmAou5M+yw92mQyoYWwT5IX9Ed9o810ySGg/f5HdDF5R9AtS
         4NytdaMA8LMaQOyvfdoTgXh5GjIq8hr45kbUj95HGRPOexQfFOzhJ/A0GshS6MzlGsn6
         HcH5AfxwTnh8qPUaIXFcXk6czUMirMW0/fNE+Uw2Tz7TUqt0lHMZIyzZHzCZHJMxn3es
         wQtw==
X-Forwarded-Encrypted: i=1; AFNElJ/IyUVIdhGFzHLuTjxZlkxDoOOoOh/1G4dESdoM48VI/5pzSkx6QpKtOEakMoBYg5oANjMsQmIQuYERH19o@lists.linaro.org
X-Gm-Message-State: AOJu0Yy2FgdSkGQcj1kRhy5puDsz16Apbaq0MiQEXsANIuFtlkrtW4iK
	DaiTnFR1j4ybU+lQiso4YmfoYTrmRbaXNP+7/j2kwk2HVz/Gc8PiLPMN
X-Gm-Gg: AeBDiet7W5s7OzuiPPj7zU9ChgkGLnhsoxoks86wphWq5Ospyd9jr6vVJyEWWOr7AF2
	wH83HDWV7YKZ0sYYkiM9fUwWWiO295DwabaMtknrrX8X/SFn/8wX8tSGnvGg407ThWquUyD17+S
	O3xVeTUeBXtGeLNMwolY869dx9jxkzbg6wOb2q2bHleDZ+ReVxlvPximh2+uCiZEOqYcnJbAXcQ
	Aq2WSNyDz7wIfaMCBnH5Z37Bz8dM8U8JSh7B1GylIDk+m3TXvuhGtrGI1GU58a4XVh8zXuIS1hg
	BxGWoyiaxbTcumMeF/QZI3zSBWkYKKzESh7fsnvRaYKsSyJvpdBORLanMFLc5/i8q9Axd0x26KW
	9BQ4un09U751eTz+sjNyi9KiQbwOmy/KvPJpaDgszV7V4c/Vb5/M5yhqvpqSlKuQiILMJMEKRN3
	/X2wLjEolzRHRPR6gWbis8M4EUZapH3UmBdZ3eDYwRx0sW2wk5Rzs2mu6rEiFc2l3/FO94w5GrJ
	6lQEkSKQIznqzS9kGSinE0xkyQ2FuYxqqh2DkswuXRd
X-Received: by 2002:a05:600c:3b13:b0:48a:52ee:5776 with SMTP id 5b1f17b1804b1-48a77ae049fmr129049305e9.11.1777476382406;
        Wed, 29 Apr 2026 08:26:22 -0700 (PDT)
Received: from 127.0.0.1localhost ([82.132.184.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b76e5c22sm6382951f8f.28.2026.04.29.08.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 08:26:21 -0700 (PDT)
From: Pavel Begunkov <asml.silence@gmail.com>
To: Jens Axboe <axboe@kernel.dk>,
	Keith Busch <kbusch@kernel.org>,
	Christoph Hellwig <hch@lst.de>,
	Sagi Grimberg <sagi@grimberg.me>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Christian Brauner <brauner@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	linux-fsdevel@vger.kernel.org,
	io-uring@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 29 Apr 2026 16:25:47 +0100
Message-ID: <ae941457cf6cacb9d4c16b6ec904da9ef7fed97f.1777475843.git.asml.silence@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1777475843.git.asml.silence@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CNG2ETWXFL54JNNTB3RPULFIGQN6SRUV
X-Message-ID-Hash: CNG2ETWXFL54JNNTB3RPULFIGQN6SRUV
X-Mailman-Approved-At: Wed, 13 May 2026 11:13:55 +0000
CC: asml.silence@gmail.com, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 01/10] file: add callback for creating long-term dmabuf maps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CNG2ETWXFL54JNNTB3RPULFIGQN6SRUV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: DD4A4531FFF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[331];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,samsung.com,intel.com,nvidia.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.881];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Introduce a new file callback that allows creating long-term dma
mapping. All necessary information together with a dmabuf will be passed
in the second argument of type struct io_dmabuf_token, which will be
defined in following patches.

Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
---
 include/linux/fs.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/fs.h b/include/linux/fs.h
index b5b01bb22d12..c5558aab4628 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -1920,6 +1920,7 @@ struct dir_context {
 
 struct io_uring_cmd;
 struct offset_ctx;
+struct io_dmabuf_token;
 
 typedef unsigned int __bitwise fop_flags_t;
 
@@ -1967,6 +1968,7 @@ struct file_operations {
 	int (*uring_cmd_iopoll)(struct io_uring_cmd *, struct io_comp_batch *,
 				unsigned int poll_flags);
 	int (*mmap_prepare)(struct vm_area_desc *);
+	int (*create_dmabuf_token)(struct file *, struct io_dmabuf_token *);
 } __randomize_layout;
 
 /* Supports async buffered reads */
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
