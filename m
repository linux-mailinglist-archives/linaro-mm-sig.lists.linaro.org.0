Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E957433C3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jun 2023 06:53:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9383343C64
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jun 2023 04:53:14 +0000 (UTC)
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	by lists.linaro.org (Postfix) with ESMTPS id 5626F3EC7B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jun 2023 04:52:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=X0Nlx2Lf;
	spf=pass (lists.linaro.org: domain of 3qV-eZAcKDQ4x678z7Du22uzs.q20zw1o52-00-6wuzw676.zw1o52.25u@flex--jstultz.bounces.google.com designates 209.85.214.202 as permitted sender) smtp.mailfrom=3qV-eZAcKDQ4x678z7Du22uzs.q20zw1o52-00-6wuzw676.zw1o52.25u@flex--jstultz.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-1b7dec879e6so9924445ad.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jun 2023 21:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1688100777; x=1690692777;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=QMopF0yt6SNtXURrQJLWhNgsWSeXqZOwln5eBV7VSyg=;
        b=X0Nlx2LfwFLDoIreU6J/7nCFcprP8zXSy4BxreWWpmLt4DmeFREe1gl/cooDVrO5uc
         QvfY2Cbb1PQsTS1vCHzruuFKJFgZT4o/rEBTiTTuI19w3kh2dNLNlnCtLlAOMOukieA1
         ZJ38X6tokAgCiMV300QArFfYtblOiB+cgTo6Cv1/mSKKV1g5KsbxMKb0LDp8/UKgYjmX
         O4mNSebBakv5tTr3K5HipZ4wOpIN2KIqlVbwTV147KpuJJhFWrw6eZanI7EWuXcbJEJ2
         YFSYjRYsRWlbBpq6SsWcGytlzaik5q2Z19hTce/BKQ8N4XwlNB7lOnCpcebUkw3N5buX
         wvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688100777; x=1690692777;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QMopF0yt6SNtXURrQJLWhNgsWSeXqZOwln5eBV7VSyg=;
        b=Bb2sGEYyofBxLChK/6T6p5mGLENKvjbbcPm3SFRBsumNKuT9+EQKJ2EvkuguVUJd+p
         wBWoJK1Jhiza5s+YO4NIfXMPoOyumGM8KCT0QjrLBxMR/0yG3VNzVz9NEh/h0CCMtZyS
         +9HN++LKd+VG5UfUSfXtHZzSNtvoEJElBNWMp9tAdL+uxixe515G4SnkyWix3tVR3Znw
         yAQa6VFEjg0vWc+X7DVi3Mlr6dzsxtQk2/LiNyJBwwJSpmCArlWDk6zaOhArb2Sk46Um
         024nzr0YTq6xi8nlNATsvq0tlk0vIzTyEk0kywWD9WMXggGPeQiOSGk9BjKFqPJ2eVp7
         9vNQ==
X-Gm-Message-State: ABy/qLaoXRXZ7p0aud/F4Sz9IcdvV76dDGuQgioL1sF9hk2PiA7Q6p1k
	sGp9jIQ1XZXKkqcjwxcJBOrJ/262I8A=
X-Google-Smtp-Source: APBJJlEV+O7siKol/DY7iCP6fmNhLuKbzWPu98PuLcJd0QPskucrT7s+QKRfycseJlSmVxoSK0wgrz7omUNv
X-Received: from jstultz-noogler2.c.googlers.com ([fda3:e722:ac3:cc00:24:72f4:c0a8:600])
 (user=jstultz job=sendgmr) by 2002:a17:903:2041:b0:1b8:fd7:cb0c with SMTP id
 q1-20020a170903204100b001b80fd7cb0cmr873422pla.5.1688100777397; Thu, 29 Jun
 2023 21:52:57 -0700 (PDT)
Date: Fri, 30 Jun 2023 04:52:23 +0000
In-Reply-To: <CABdmKX0A8mqz5cS4+CqjRgpQQKuSp=3SvE1KJ_di09VjJQVoGg@mail.gmail.com>
Mime-Version: 1.0
References: <CABdmKX0A8mqz5cS4+CqjRgpQQKuSp=3SvE1KJ_di09VjJQVoGg@mail.gmail.com>
X-Mailer: git-send-email 2.41.0.255.g8b1d071c50-goog
Message-ID: <20230630045246.1674919-1-jstultz@google.com>
From: John Stultz <jstultz@google.com>
To: LKML <linux-kernel@vger.kernel.org>
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[jstultz@google.com,3qV-eZAcKDQ4x678z7Du22uzs.q20zw1o52-00-6wuzw676.zw1o52.25u@flex--jstultz.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.202:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.321];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,3qV-eZAcKDQ4x678z7Du22uzs.q20zw1o52-00-6wuzw676.zw1o52.25u@flex--jstultz.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,lists.freedesktop.org:email,collabora.com:email,arm.com:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5626F3EC7B
X-Spamd-Bar: --
Message-ID-Hash: JGEM2TPICU644DU7W6PBC723DTP5Y3PD
X-Message-ID-Hash: JGEM2TPICU644DU7W6PBC723DTP5Y3PD
X-MailFrom: 3qV-eZAcKDQ4x678z7Du22uzs.q20zw1o52-00-6wuzw676.zw1o52.25u@flex--jstultz.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] MAINTAINERS: Add T.J. Mercier as reviewer for DMA-BUF HEAPS FRAMEWORK
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JGEM2TPICU644DU7W6PBC723DTP5Y3PD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

T.J. has been responsible for dmab-buf items on the Android team
for awhile now, so it would be great to have him on as a reviewer.

Cc: T.J. Mercier <tjmercier@google.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Brian Starkey <Brian.Starkey@arm.com>
Cc: John Stultz <jstultz@google.com>
Cc: linux-media@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linaro-mm-sig@lists.linaro.org
Cc: kernel-team@android.com
Signed-off-by: John Stultz <jstultz@google.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cb075f52d97b..f4e92b968ed7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6184,6 +6184,7 @@ R:	Benjamin Gaignard <benjamin.gaignard@collabora.com>
 R:	Laura Abbott <labbott@redhat.com>
 R:	Brian Starkey <Brian.Starkey@arm.com>
 R:	John Stultz <jstultz@google.com>
+R:	T.J. Mercier <tjmercier@google.com>
 L:	linux-media@vger.kernel.org
 L:	dri-devel@lists.freedesktop.org
 L:	linaro-mm-sig@lists.linaro.org (moderated for non-subscribers)
-- 
2.41.0.255.g8b1d071c50-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
