Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FutCNdl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BD930431EFB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4ACD3F70A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:43:49 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id 670333F804
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 05:41:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=cQ62R7cA;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of gxxa03070307@gmail.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=gxxa03070307@gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2aaf59c4f7cso29597545ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2026 22:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776231666; x=1776836466; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tunBQlCi4LkJrjuRpI6SbvkfyuiW6qh1ym4H60f4yAo=;
        b=cQ62R7cAxR45yymVuVWMD/J4/rYE505sytRBhTx2xttJ8EES1gJHCaAMnpLeBYoI+F
         leuAtIpsbUkgvccLZ8IIcY82NPgCUMkwAdbQQSIJbhHthVgqTn7qDpdwOABE/edE52sn
         ibDnZJMIWHWmE68jmFK6V67k+Mq1T8hZRBBB5LaN02MdRZBEEyhXs+OrDfKMvpBX8cgB
         jM4fcAQwKRQ2dWecdNZA+i5GK+pgJKaSSXk4YuUNfeI05bcxFZeDdTldzGNFo7wEyR4B
         txRAa2E0aal/SXIVH4JVtpG/FiPYB7qTn9z92QMlnQIjYAevc/R9WgRM+Q4N/iLHUKD5
         AEow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776231666; x=1776836466;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tunBQlCi4LkJrjuRpI6SbvkfyuiW6qh1ym4H60f4yAo=;
        b=pEm0olYyxlpW848M4Inj/UDCyX50ZHM449lANQ3OhOpL1abZquQcb2YC1o6+V1yFqN
         nbv1LzrYlHhstDER0LkUUKm7JLyKfX7FkuNAT5yrd3sWtedjEynchr+g003phb6RhfHw
         s6+ElW4/DJ6naI55Y+9ydvGI8aXYpCWzEQ1l3LkWIF+GwX8uHSF6Uq8cFIOkTT3xVu7e
         SkO2lGPGQNVWBGMerglyizti+nhYj4QzmMvMaBv5rlPRKsOeXcBtdGpWmbntQ90Z3xQc
         rJvFKFtg2JdsUwCn5xwf3dnEqZrCJm/qUbD8crnd3TPCrWPAyuInhmrvENZXzCLkE9h8
         3CEA==
X-Forwarded-Encrypted: i=1; AFNElJ9Ez+F/RCQ8LXswEQkesElpF49fGhxkBLCVZ8eJc8ErK77AvU+hbOc6Mo/MJfRsGvFMR20V4sXiu0E1tQM/@lists.linaro.org
X-Gm-Message-State: AOJu0YwUQYmqW9xLqqWD1kqEOqYgNxrDJlWgMDoWyh1senGNCY8ce1zs
	hOrWJBkAGSD10ACRXRPbpNuIbpHsBtgHpTDYSPJvMRMm5XTAmgZmy74r
X-Gm-Gg: AeBDieumvqq/1+hK0Snd46Z5999MU4kSTp3tPFLHqC/cTaY8xWz+sH9jcfHnm2DX2t/
	+Cie9uzpF2EgYO/MYKERkbxrUMSzm4IzyW0rD6rMu3WLNT/7QD1QJ5Ah2S2A+6apY+d4sgYCYrg
	dzqnouDR8ZeaH5n3bDdbBfhW9m1VD0o74VPaSJQ6qSeN3ci1UUr2Kr0JEwxYw6xY3GhtBUokJgE
	E96xJNA6+/RIH5//ecnLY67v/ZKYtBx9d7GITXHKf8vAbsna9y9fKWtOXdPYxTc4DKdayuXzXpA
	PBd95oyXyxUczK0SS423KdPyMVxctqhM96tkr6PE+i/6wtp9G7ADqJy2IafCh+8aA5dZck6tS48
	84S0hFrFwX6qa4XzsOVAEgSRpN24BrTJkGsj+a9gSsN0k4RCjx4eADl6V6PjkMax6PxnXmX4hC1
	2yiPeDX1Bo1whmssBSfEJ85nMxk0M+T5TM6jsTT/7mUzQ=
X-Received: by 2002:a17:902:ea05:b0:2b4:5f96:184d with SMTP id d9443c01a7336-2b45f961f07mr100131135ad.5.1776231666456;
        Tue, 14 Apr 2026 22:41:06 -0700 (PDT)
Received: from xiao.mioffice.cn ([43.224.245.230])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b4780f0258sm7973305ad.5.2026.04.14.22.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2026 22:41:05 -0700 (PDT)
From: Xiang Gao <gxxa03070307@gmail.com>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Wed, 15 Apr 2026 13:41:01 +0800
Message-Id: <20260415054101.535520-1-gxxa03070307@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: gxxa03070307@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: K5BKIBPYHPSITLJGBFGEPIMO7SEHFLCX
X-Message-ID-Hash: K5BKIBPYHPSITLJGBFGEPIMO7SEHFLCX
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:31 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Xiang Gao <gaoxiang17@xiaomi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix stale @lock references in struct dma_buf documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K5BKIBPYHPSITLJGBFGEPIMO7SEHFLCX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[132];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[gxxa03070307@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[xiaomi.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: BD930431EFB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Xiang Gao <gaoxiang17@xiaomi.com>

The kernel-doc comments for vmapping_counter and vmap_ptr in struct
dma_buf reference "@lock" as the protecting lock, but struct dma_buf
no longer has a "lock" member. The mutex was removed in favor of using
the dma_resv lock exclusively. The implementation correctly uses
dma_resv_assert_held(dmabuf->resv) in dma_buf_vmap() and
dma_buf_vunmap(), so update the documentation to reference @resv
instead.

Signed-off-by: gaoxiang17 <gaoxiang17@xiaomi.com>
---
 include/linux/dma-buf.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 133b9e637b55..ef6d93fd7a2c 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -322,13 +322,13 @@ struct dma_buf {
 	 * @vmapping_counter:
 	 *
 	 * Used internally to refcnt the vmaps returned by dma_buf_vmap().
-	 * Protected by @lock.
+	 * Protected by @resv.
 	 */
 	unsigned vmapping_counter;
 
 	/**
 	 * @vmap_ptr:
-	 * The current vmap ptr if @vmapping_counter > 0. Protected by @lock.
+	 * The current vmap ptr if @vmapping_counter > 0. Protected by @resv.
 	 */
 	struct iosys_map vmap_ptr;
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
