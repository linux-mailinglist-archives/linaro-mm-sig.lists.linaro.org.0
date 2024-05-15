Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F4E8C6800
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 15:58:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8E944478D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 13:58:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id D5D133F624
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 13:57:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Oj3FlSFO;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 81F8A614C4;
	Wed, 15 May 2024 13:57:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4CB9C4AF08;
	Wed, 15 May 2024 13:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715781468;
	bh=8ZuUxwBuqIl5xv9FwD6zxHdkEr4bqeDZSbsEsg2zPmU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Oj3FlSFOr68/qWfihvTAujUUhPEGoUh0a2EeRfwvOp8t6TcAJblJSqUhG15QQTajm
	 X0ZypIvahxAHTF82FIRmlU2JmeCiZMwvZg+EGvVdwOy+OSOe2xcXF1JXL/koBjWJ8f
	 uY1eH1kzAK3EKpSlqeE4zNl58tmABu/OHRqvET7KDksCSKN7RmxdJnLqrBLyDwRdHT
	 tj9PWxBrP/AM1H0vdT+uxhTO2BFPXx2o3XWUE0K/GWe/3iVt7N8oPjgzVElc+MOGeJ
	 74zzL/+8OcKcEv9NJp/Th0hDHXFns5PI1R9GkALEM+tDghU+PYNfMeHNgQ21rMnH+z
	 MvHx0X9dwRxgQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 15 May 2024 15:56:57 +0200
MIME-Version: 1.0
Message-Id: <20240515-dma-buf-ecc-heap-v1-2-54cbbd049511@kernel.org>
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
In-Reply-To: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1585; i=mripard@kernel.org;
 h=from:subject:message-id; bh=8ZuUxwBuqIl5xv9FwD6zxHdkEr4bqeDZSbsEsg2zPmU=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGku+/3WZlme0eHdaHF23mbWzIrm86HrbRLD7LyCko8rz
 uJ85re0YyoLgzAng6yYIssTmbDTy9sXVznYr/wBM4eVCWQIAxenAEzkYjpjndaJwD3Xp39eISqZ
 bOWhaGUqfPC+tbxHZce+b2VbV6lc4Ap8mKG7L8Nf/dPlvvmn739RZmw4p9u4J+i/zY7Hpn97nvC
 k2mQ5mV6d/XPaqwcblXumnVxr6J4cufGVjJSY2aW6VRcUq44BAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D5D133F624
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: LQIQAF5MLDJX53O6XNZAASB3Q35D35KY
X-Message-ID-Hash: LQIQAF5MLDJX53O6XNZAASB3Q35D35KY
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/8] of: Add helper to retrieve ECC memory bits
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LQIQAF5MLDJX53O6XNZAASB3Q35D35KY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The /memory device tree bindings allow to store the ECC detection and
correction bits through the ecc-detection-bits and ecc-correction-bits
properties.

Our next patches rely on whether ECC is enabled, so let's add a helper
to retrieve the ECC correction bits from the /memory node.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/linux/of.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/include/linux/of.h b/include/linux/of.h
index a0bedd038a05..2fbee65a7aa9 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1510,10 +1510,35 @@ static inline int of_get_available_child_count(const struct device_node *np)
 		num++;
 
 	return num;
 }
 
+/**
+ * of_memory_get_ecc_correction_bits() - Returns the number of ECC correction bits
+ *
+ * Search for the number of bits in memory that can be corrected by the
+ * ECC algorithm.
+ *
+ * Returns:
+ * The number of ECC bits, 0 if there's no ECC support, a negative error
+ * code on failure.
+ */
+static inline int of_memory_get_ecc_correction_bits(void)
+{
+	struct device_node *mem;
+	u32 val = 0;
+
+	mem = of_find_node_by_path("/memory");
+	if (!mem)
+		return -ENODEV;
+
+	of_property_read_u32(mem, "ecc-correction-bits", &val);
+	of_node_put(mem);
+
+	return val;
+}
+
 #define _OF_DECLARE_STUB(table, name, compat, fn, fn_type)		\
 	static const struct of_device_id __of_table_##name		\
 		__attribute__((unused))					\
 		 = { .compatible = compat,				\
 		     .data = (fn == (fn_type)NULL) ? fn : fn }

-- 
2.44.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
