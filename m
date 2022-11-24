Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AD163A146
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:33:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 962973F044
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:33:54 +0000 (UTC)
Received: from mxhk.zte.com.cn (mxhk.zte.com.cn [63.216.63.35])
	by lists.linaro.org (Postfix) with ESMTPS id CFA8A3EE40
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 11:26:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of yang.yang29@zte.com.cn designates 63.216.63.35 as permitted sender) smtp.mailfrom=yang.yang29@zte.com.cn;
	dmarc=pass (policy=none) header.from=zte.com.cn
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4NHwfx2tNGz5BNRf;
	Thu, 24 Nov 2022 19:26:17 +0800 (CST)
Received: from szxlzmapp04.zte.com.cn ([10.5.231.166])
	by mse-fl2.zte.com.cn with SMTP id 2AOBQAQp098428;
	Thu, 24 Nov 2022 19:26:10 +0800 (+08)
	(envelope-from yang.yang29@zte.com.cn)
Received: from mapi (szxlzmapp02[null])
	by mapi (Zmail) with MAPI id mid14;
	Thu, 24 Nov 2022 19:26:13 +0800 (CST)
Date: Thu, 24 Nov 2022 19:26:13 +0800 (CST)
X-Zmail-TransId: 2b04637f54d5ffffffffd03e764f
X-Mailer: Zmail v1.0
Message-ID: <202211241926133236370@zte.com.cn>
Mime-Version: 1.0
From: <yang.yang29@zte.com.cn>
To: <sumit.semwal@linaro.org>
X-MAIL: mse-fl2.zte.com.cn 2AOBQAQp098428
X-Fangmail-Gw-Spam-Type: 0
X-FangMail-Miltered: at cgslv5.04-192.168.250.138.novalocal with ID 637F54D9.000 by FangMail milter!
X-FangMail-Envelope: 1669289177/4NHwfx2tNGz5BNRf/637F54D9.000/10.5.228.133/[10.5.228.133]/mse-fl2.zte.com.cn/<yang.yang29@zte.com.cn>
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 637F54D9.000/4NHwfx2tNGz5BNRf
X-Rspamd-Queue-Id: CFA8A3EE40
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUBJ_EXCESS_BASE64(1.50)[];
	MV_CASE(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[63.216.63.35:from];
	DMARC_POLICY_ALLOW(-0.50)[zte.com.cn,none];
	R_SPF_ALLOW(-0.20)[+ip4:63.216.63.35];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:3491, ipnet:63.216.56.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zte.com:email];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[zte.com.cn:email,zte.com:email];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_SPAM(0.00)[0.198];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: yang.yang29@zte.com.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QILVSEZ2FQBPODLMIBXUAEWOJIBRDW5Z
X-Message-ID-Hash: QILVSEZ2FQBPODLMIBXUAEWOJIBRDW5Z
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:33:41 +0000
CC: christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, xu.panda@zte.com.cn, yang.yang29@zte.com.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH linux-next] dma-buf: use strscpy() to instead of strlcpy()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QILVSEZ2FQBPODLMIBXUAEWOJIBRDW5Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Xu Panda <xu.panda@zte.com.cn>

The implementation of strscpy() is more robust and safer.
That's now the recommended way to copy NUL terminated strings.

Signed-off-by: Xu Panda <xu.panda@zte.com.cn>
Signed-off-by: Yang Yang <yang.yang29@zte.com>
---
 drivers/dma-buf/dma-buf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index b6c36914e7c6..485cf4f3431e 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -51,7 +51,7 @@ static char *dmabuffs_dname(struct dentry *dentry, char *buffer, int buflen)
 	dmabuf = dentry->d_fsdata;
 	spin_lock(&dmabuf->name_lock);
 	if (dmabuf->name)
-		ret = strlcpy(name, dmabuf->name, DMA_BUF_NAME_LEN);
+		ret = strscpy(name, dmabuf->name, DMA_BUF_NAME_LEN);
 	spin_unlock(&dmabuf->name_lock);

 	return dynamic_dname(buffer, buflen, "/%s:%s",
-- 
2.15.2
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
