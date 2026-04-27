Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDBnOfI072mR+AAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 12:05:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFA5470810
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 12:05:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A03C3406B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 10:05:37 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 48754406EC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 10:05:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=p5Y3aQ6H;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 08AF76014C;
	Mon, 27 Apr 2026 10:05:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6142DC2BCB4;
	Mon, 27 Apr 2026 10:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777284323;
	bh=SVndXsE+vJSoc4y2vve+10Txah65FmuiC7sQ9fs8HE8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=p5Y3aQ6H388MRcQSXsJOmzF+Zbin0sXYZZt7q8zabS8xAXmcb1ohs9LMpzgKpVp2z
	 4GYNFwHort4UgTH+gH6ZhYr7trtai120IYj6dwt75PRg0KR8NWZbQTf2aJVxJ30ST2
	 DJPELv7KL2MffykRgEABtrzjEJIWQNxwgb0HFNYOyOZh4Ej9a3bCBgJzubQnHA173H
	 wOiEi8h356an+RTQ6pnAohok8pH999HcFEyTGpFDlIJWgqTS7GoYDh4PMsy38fjEFb
	 DIot8Y6VNuUkjwZFs1z6DJM0Jcn3cLYc9g97CS1RNfbYNADVHZrmFBdGei0KyZrw5q
	 bovyz6vkxKlBQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 27 Apr 2026 12:05:00 +0200
MIME-Version: 1.0
Message-Id: <20260427-dma-buf-heaps-as-modules-v5-4-b6f5678feefc@kernel.org>
References: <20260427-dma-buf-heaps-as-modules-v5-0-b6f5678feefc@kernel.org>
In-Reply-To: <20260427-dma-buf-heaps-as-modules-v5-0-b6f5678feefc@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=801; i=mripard@kernel.org;
 h=from:subject:message-id; bh=SVndXsE+vJSoc4y2vve+10Txah65FmuiC7sQ9fs8HE8=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJnvTa7kWk5615wvcTb0/pRpj5dwVL3MeMGr63RFIeF67
 ATGk+XlHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAi8f8ZG267Jr6UuCmx/qjX
 4eIlm+R55sVfTElyqVq48FLK2ZM/Dx+p/C647KLZ6ou6j1e+P1r15D5jJePy+fypp/cvt/oQlOZ
 cJVWpkMX9/82/0EX7lz9gsFl/Us58XuXPirkFmRtZzj7u15FhAQA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: VOYHCYYL4VCYB2DUFWAZTB3Y35KUULFE
X-Message-ID-Hash: VOYHCYYL4VCYB2DUFWAZTB3Y35KUULFE
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 4/4] arm64: defconfig: Enable dma-buf heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VOYHCYYL4VCYB2DUFWAZTB3Y35KUULFE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8BFA5470810
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.939];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

Now that the system and CMA heaps can be built as modules, enable both
as modules in the arm64 defconfig.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d905a0777f93..f33193b50e6b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1409,10 +1409,13 @@ CONFIG_RCAR_DMAC=y
 CONFIG_RENESAS_USB_DMAC=m
 CONFIG_RZ_DMAC=y
 CONFIG_TI_K3_UDMA=y
 CONFIG_TI_K3_UDMA_GLUE_LAYER=y
 CONFIG_STM32_DMA3=m
+CONFIG_DMABUF_HEAPS=y
+CONFIG_DMABUF_HEAPS_SYSTEM=m
+CONFIG_DMABUF_HEAPS_CMA=m
 CONFIG_VFIO=y
 CONFIG_VFIO_PCI=y
 CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_BALLOON=y
 CONFIG_VIRTIO_MMIO=y

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
