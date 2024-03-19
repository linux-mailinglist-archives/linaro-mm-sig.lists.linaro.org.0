Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 700ED880816
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Mar 2024 00:16:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57F9045225
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Mar 2024 23:16:57 +0000 (UTC)
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
	by lists.linaro.org (Postfix) with ESMTPS id 60A1D45225
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Mar 2024 23:16:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ispras.ru header.s=default header.b=CtbjiIZZ;
	dmarc=pass (policy=none) header.from=ispras.ru;
	spf=pass (lists.linaro.org: domain of p.sakharov@ispras.ru designates 83.149.199.84 as permitted sender) smtp.mailfrom=p.sakharov@ispras.ru
Received: from localhost.localdomain (unknown [85.89.126.105])
	by mail.ispras.ru (Postfix) with ESMTPSA id 87CB640ADFF1;
	Tue, 19 Mar 2024 23:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 87CB640ADFF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
	s=default; t=1710890213;
	bh=bK361IhiE+XMAZTsxOEj0ZXg25Ch4uk2S2o4xZFwevs=;
	h=From:To:Cc:Subject:Date:From;
	b=CtbjiIZZOBd/GIX9iUGfUhyJyEejdhVoS+R3KZqQ1kwulOhDw75ifvkprBVahyjo9
	 ySOicKeGkCeYiVlww9iC1LWARppBVUfG6iKNM33C4Y2Pgm40ivwWZP3RpQ6duQe6zp
	 Tnqk22FtM4gyFlLElMgNzkvPkl0ckh4j4niFs0ps=
From: Pavel Sakharov <p.sakharov@ispras.ru>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed, 20 Mar 2024 04:15:23 +0500
Message-ID: <20240319231527.1821372-1-p.sakharov@ispras.ru>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: 60A1D45225
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ispras.ru,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:83.149.199.84];
	R_DKIM_ALLOW(-0.20)[ispras.ru:s=default];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:3267, ipnet:83.149.192.0/18, country:RU];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[83.149.199.84:from,85.89.126.105:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DKIM_TRACE(0.00)[ispras.ru:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ONNJMHGEV2STWJEP44BYAUSBE5M6N7DI
X-Message-ID-Hash: ONNJMHGEV2STWJEP44BYAUSBE5M6N7DI
X-MailFrom: p.sakharov@ispras.ru
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Pavel Sakharov <p.sakharov@ispras.ru>, Sumit Semwal <sumit.semwal@linaro.org>, Arvind Yadav <Arvind.Yadav@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Fedor Pchelkin <pchelkin@ispras.ru>, lvc-project@linuxtesting.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Fix NULL pointer dereference in sanitycheck()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ONNJMHGEV2STWJEP44BYAUSBE5M6N7DI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If due to a memory allocation failure mock_chain() returns NULL, it is
passed to dma_fence_enable_sw_signaling() resulting in NULL pointer
dereference there.

Call dma_fence_enable_sw_signaling() only if mock_chain() succeeds.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: d62c43a953ce ("dma-buf: Enable signaling on fence for selftests")
Signed-off-by: Pavel Sakharov <p.sakharov@ispras.ru>

---
 drivers/dma-buf/st-dma-fence-chain.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/st-dma-fence-chain.c b/drivers/dma-buf/st-dma-fence-chain.c
index 9c2a0c082a76..ed4b323886e4 100644
--- a/drivers/dma-buf/st-dma-fence-chain.c
+++ b/drivers/dma-buf/st-dma-fence-chain.c
@@ -84,11 +84,11 @@ static int sanitycheck(void *arg)
 		return -ENOMEM;

 	chain = mock_chain(NULL, f, 1);
-	if (!chain)
+	if (chain)
+		dma_fence_enable_sw_signaling(chain);
+	else
 		err = -ENOMEM;

-	dma_fence_enable_sw_signaling(chain);
-
 	dma_fence_signal(f);
 	dma_fence_put(f);

--
2.44.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
