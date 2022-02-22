Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B944EAC44
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 13:28:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B61143EC11
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 11:28:44 +0000 (UTC)
Received: from out162-62-57-252.mail.qq.com (out162-62-57-252.mail.qq.com [162.62.57.252])
	by lists.linaro.org (Postfix) with ESMTPS id 9DA373ECBC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Feb 2022 11:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1645529422;
	bh=0Ms03xWBc+9VrtD4C/QoIp1ZOw2mnrwmYzl37UBKzPc=;
	h=From:To:Cc:Subject:Date;
	b=XzcvLrEZuaQz2uKvhQF+etfzmD5xnAyYMpA6sLv6oNJecc7qZgtkh0obt525dfYIK
	 3qOEojNu0nFPeSqsxfRk/M9DMpBs48oTOmCnLUg/XKebICkGfSEsvWQwL32tCeB7SR
	 twLj9DAiL1DiCIoe7h2MEN9fnmIVFn4sBjhVWd+4=
Received: from localhost.localdomain ([43.227.136.188])
	by newxmesmtplogicsvrszc7.qq.com (NewEsmtp) with SMTP
	id 791A02AE; Tue, 22 Feb 2022 19:30:17 +0800
X-QQ-mid: xmsmtpt1645529417tdyhv1w0j
Message-ID: <tencent_22C6C2E595DEFED1417A98A5736539482809@qq.com>
X-QQ-XMAILINFO: OE2SNMSfMbmOqWTaLvPkh1gzQ6LQ3QWbRi+ykRMCw6wayFRA56vcRnp4jqOcUy
	 r8eInt09NooaESLAgWeFLhZtuOa05vyguPZzHdzvcIfdhBBvQV5TgYlISohQe50GjzlrrHGVYyPl
	 VzifWo8oknq8HhPnCaic+n2M0XKZmgWiCETP7yRvqMsRZXhhNgrJ1Grt/Bl6JJ2UGafJbdmOiGo9
	 GYK9A8OyivVV6v3zE0AX8E6DrNrMWSldHe0jhivEwEb7GfoLZEeTzhclTgyAK9Tfgafkz/SXf50Y
	 xkTxjT8aFxSXAa1zx0LQa2AfXJLhY5QZdPIcrjSkLbt7akmgQKt8EcZbA4tTk1Gw3aWWIGTYQR1R
	 WCoiIbXNYS6SfQrMcbydCLK2iape5LgtIxvEXDE8gkO55yjaldWjOpOxSr3rtb0PXqap/dcWfcs3
	 0Noi/HcqCU2oyCOZssZMIFcixw4Z+vnlj976xzLmjNDkEjfua5yC3JatB8jw1Zelg2LOTntTd1ls
	 b3ZKe7p197WOfVi0E7yR0RqrkAUujNk4WR1naxyqwL4nPYpeQ22MgMgfeckrm+nLXjzfwAO39OW3
	 ozSRW76iMBVliUgk9V11egDp7S7fzMEJJXn3n1B8tIv51XZW8x4PNYU0+KwTK++mGo3KC7p0VZBL
	 ryTX6EEtByOIpths6V9Pt70rHZxPL2w81FZMLC20QQW4FQ52EadYgrA/3h4fzrTfJ1r4b+wrlUhj
	 fl/HDEkQKaK7ZFcEiZnaFzm4EXkstdU+LZE9wuz7xkL3d8UQ+cMZPqXNTdUJoVQmAeRjCSnZjEXU
	 ILdD39TWlLGiER20h3UZt768wmry3fORvCfaaFM7e8HHYv9aAvN1E0dlz0+cDPlPn8OQ003uEZne
	 Trxd+tjdSMzDRAFA8MmxvU9Koz3rHk/rbfmYB/Sk2q
From: xkernel.wang@foxmail.com
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Tue, 22 Feb 2022 19:30:05 +0800
X-OQ-MSGID: <20220222113005.3812-1-xkernel.wang@foxmail.com>
MIME-Version: 1.0
X-MailFrom: xkernel.wang@foxmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OAQ6BC47JCP3ROEJRCQGY6MUUINMT2JA
X-Message-ID-Hash: OAQ6BC47JCP3ROEJRCQGY6MUUINMT2JA
X-Mailman-Approved-At: Tue, 29 Mar 2022 11:28:41 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Xiaoke Wang <xkernel.wang@foxmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: check the return value of kstrdup()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OAQ6BC47JCP3ROEJRCQGY6MUUINMT2JA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Xiaoke Wang <xkernel.wang@foxmail.com>

kstrdup() is a memory allocation function which can return NULL when
some internaly memory errors happen. It is better to check the return
value of it to prevent further wrong memory access.

Signed-off-by: Xiaoke Wang <xkernel.wang@foxmail.com>
---
 drivers/dma-buf/selftest.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/dma-buf/selftest.c b/drivers/dma-buf/selftest.c
index c60b694..2c29e2a 100644
--- a/drivers/dma-buf/selftest.c
+++ b/drivers/dma-buf/selftest.c
@@ -50,6 +50,9 @@ static bool apply_subtest_filter(const char *caller, const char *name)
 	bool result = true;
 
 	filter = kstrdup(__st_filter, GFP_KERNEL);
+	if (!filter)
+		return false;
+
 	for (sep = filter; (tok = strsep(&sep, ","));) {
 		bool allow = true;
 		char *sl;
-- 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
