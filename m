Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D33743FA1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jun 2023 18:21:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE5783EC7B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jun 2023 16:21:31 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id DDC543EC7B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jun 2023 16:21:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=Wl2L6CE3;
	spf=pass (lists.linaro.org: domain of 3-wCfZAcKDaQNWXYPXdKSSKPI.GSQPMREVS-QQ-WMKPMWXW.PMREVS.SVK@flex--jstultz.bounces.google.com designates 209.85.219.202 as permitted sender) smtp.mailfrom=3-wCfZAcKDaQNWXYPXdKSSKPI.GSQPMREVS-QQ-WMKPMWXW.PMREVS.SVK@flex--jstultz.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-c337c5c56ecso1917603276.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jun 2023 09:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1688142075; x=1690734075;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tmI1or0XTS7Hn6WBYUj9O4F+BRUYRNflOyMy4FV7LJM=;
        b=Wl2L6CE38QgBvIOu5iEIjH1dP66LLE6Ms7p8AfxgJ0snRicrG3kjNt5lF/w/oYArpt
         snZHK2JWiwKS1vQx/3eCgThyxArpAuKoJ7mDJtjQrfP6AYk6/pPEMsEDGAhnR6uoa5zF
         mKTGKUQmqz6eBx4jb9FRuD/3TMadTlPhYL39dXT0XLIwLcUBv2V3r+FZ2J+ua4UpSl9F
         b3gF2oAF/bW+84N2cy4PdiNse71SUaZwtxO6U5N6J1YyTXWDWm5f3M0fyNms5gJFwZoX
         9A1lgtm1u0UFRsMW+oMy1/UC52IZlHh+5j2QcoEsSh/UdfYlVJT0TtS55byoHtaee9Z9
         PbYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688142075; x=1690734075;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tmI1or0XTS7Hn6WBYUj9O4F+BRUYRNflOyMy4FV7LJM=;
        b=FUqstKYyJWmIsrehagLHr0N+IrShYIUormx2Qd3gv/kPQ5npuZ+2LnUSG1g8/8IFfo
         /GFrj012bdODJxoh5rD3kiw7A00vJmIOg2WAaEyiIhn6UzYkr7I4U+ub58ObIPoX/zJJ
         ndD3zu2LIRmsRcPhOjQTDA+HK56oi5eNFMMPXeytJOzK670pmeOz1tJsgKSEZbdfCN1N
         tdsrreW9GZqs1FBhCoKHW5Zvd3ej1WUAVHc4C3bu3dWSA4FCoOHwbwWLQoNjpIgrNAtW
         PSUJ0Kz6M9bm6Nxw6w0Idp30+yjiX/CaiS7ZkvAPo8XsaMpFNtMOlGhxZNcy9z6MXc6R
         ueUQ==
X-Gm-Message-State: ABy/qLav+OBRq5md3xYpGJwgQKcwLdOgSj9qh2rC0WQnQCkIX7bMQCX4
	WCGBq2srHLEOfFYZL+DGEuaVPz3Fa1c=
X-Google-Smtp-Source: APBJJlHD9CFDbrXlL1q/Tx0IjaqkF0QgIxLv3w4dEKVcSLFdBqoW9yS9DDKgdFV6JkUafSPiOI3r9J/kKFKe
X-Received: from jstultz-noogler2.c.googlers.com ([fda3:e722:ac3:cc00:24:72f4:c0a8:600])
 (user=jstultz job=sendgmr) by 2002:a25:6b12:0:b0:c24:7d1c:6145 with SMTP id
 g18-20020a256b12000000b00c247d1c6145mr27237ybc.2.1688142075426; Fri, 30 Jun
 2023 09:21:15 -0700 (PDT)
Date: Fri, 30 Jun 2023 16:20:33 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0.255.g8b1d071c50-goog
Message-ID: <20230630162111.3051783-1-jstultz@google.com>
From: John Stultz <jstultz@google.com>
To: LKML <linux-kernel@vger.kernel.org>
X-Spamd-Result: default: False [-2.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[jstultz@google.com,3-wCfZAcKDaQNWXYPXdKSSKPI.GSQPMREVS-QQ-WMKPMWXW.PMREVS.SVK@flex--jstultz.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.202:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.324];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,3-wCfZAcKDaQNWXYPXdKSSKPI.GSQPMREVS-QQ-WMKPMWXW.PMREVS.SVK@flex--jstultz.bounces.google.com];
	DKIM_TRACE(0.00)[google.com:+];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DDC543EC7B
X-Spamd-Bar: --
Message-ID-Hash: NLE6ROOQRDTTYGSWNDCPIN6LDV7MTN47
X-Message-ID-Hash: NLE6ROOQRDTTYGSWNDCPIN6LDV7MTN47
X-MailFrom: 3-wCfZAcKDaQNWXYPXdKSSKPI.GSQPMREVS-QQ-WMKPMWXW.PMREVS.SVK@flex--jstultz.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: John Stultz <jstultz@google.com>, Laura Abbott <labbott@kernel.org>, "T . J . Mercier" <tjmercier@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] MAINTAINERS: Remove Laura Abbott from DMA-BUF HEAPS FRAMEWORK
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NLE6ROOQRDTTYGSWNDCPIN6LDV7MTN47/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Laura's email address has not been valid for quite awhile now,
so wanted to clean up the reviewer list here.

I reached out to Laura who said it made sense to drop her from
the list, so this patch does that.

I do want to recognize Laura's long time contribution to this
area and her previous ION maintainership, as this couldn't
have gone upstream without her prior efforts. Many thanks!

Cc: Laura Abbott <labbott@kernel.org>
Cc: T.J. Mercier <tjmercier@google.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Brian Starkey <Brian.Starkey@arm.com>
Cc: John Stultz <jstultz@google.com>
Cc: linux-media@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linaro-mm-sig@lists.linaro.org
Cc: kernel-team@android.com
Acked-by: Laura Abbott <labbott@kernel.org>
Signed-off-by: John Stultz <jstultz@google.com>
---
 MAINTAINERS | 1 -
 1 file changed, 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index f4e92b968ed7..6b28b59cbdb9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6181,7 +6181,6 @@ F:	kernel/dma/
 DMA-BUF HEAPS FRAMEWORK
 M:	Sumit Semwal <sumit.semwal@linaro.org>
 R:	Benjamin Gaignard <benjamin.gaignard@collabora.com>
-R:	Laura Abbott <labbott@redhat.com>
 R:	Brian Starkey <Brian.Starkey@arm.com>
 R:	John Stultz <jstultz@google.com>
 R:	T.J. Mercier <tjmercier@google.com>
-- 
2.41.0.255.g8b1d071c50-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
