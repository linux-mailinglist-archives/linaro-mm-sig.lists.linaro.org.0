Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 493B18C6807
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 15:58:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C3DC40074
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 13:58:50 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 786F540074
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 13:57:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=efVBkvUH;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4F677CE16B6;
	Wed, 15 May 2024 13:57:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 029F0C116B1;
	Wed, 15 May 2024 13:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715781461;
	bh=0Om0EsLkpFBVKkvz9olitc46qsiUdNn1/n5ZWkf37uM=;
	h=From:Subject:Date:To:Cc:From;
	b=efVBkvUHMwvEPS9v5viutvHv7Nwmm+sJx1bgg68pjDdL5tQOBfNrGoz42YlvUCiAj
	 kn9/Q2v6QxgRiNb+6xYMD68qCd3reid6n/aqHUK1/+u2URPhCIsEV/12vnr3ycQvhH
	 0X615sQhaDfm/PRn0AnpVG2lmlq4fRLOXY2gH6Yal52hYHSmyhf+K+pMjXbHKAP6/u
	 CnZ59ZBD4F6zQ+ImRB82ZBpf4m/Is/rzzkq/FbSk/XwB7v0qyM3VAREipiMF3oxUIk
	 hZJcPiSda5+9Wpt+dsWVmhoHvv5Ce8HWDlr5HjCVBPxAidyY1xdcYyuZosqcDBUqa5
	 bW1opPrItcBIA==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 15 May 2024 15:56:55 +0200
Message-Id: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACe/RGYC/x3MQQqAIBBA0avIrBtIS6iuEi1Mx5pFJkoRhHdPW
 r7F/y9kSkwZJvFCopszn6FCNgLsbsJGyK4aVKv6VkuN7jC4Xh7JWtzJRFSD6aR0yo49Qc1iIs/
 Pv5yXUj7AlIV2YgAAAA==
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2381; i=mripard@kernel.org;
 h=from:subject:message-id; bh=0Om0EsLkpFBVKkvz9olitc46qsiUdNn1/n5ZWkf37uM=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGku+50Tp5XnH/PUiwzWiHWN5qhb6TVvj+JzU9WQlR+vH
 hINFfXtmMrCIMzJICumyPJEJuz08vbFVQ72K3/AzGFlAhnCwMUpABO5OZWxzoZzzf/AWs7XRS8b
 b2ve+P/28/yayTKc7TP4yu8EKcs9T/BblnA2Ni96fpTEgzBOSf0PjA0bdl68zBtx8n3vjmrdCjb
 5sNayFR9yDVdVeth++TrprFWp9qWS08IBj13Lo87oGvAt+QUA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 786F540074
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
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
Message-ID-Hash: SGQXBEHFTXKOA7IDZ6CO2FTJYTL354FB
X-Message-ID-Hash: SGQXBEHFTXKOA7IDZ6CO2FTJYTL354FB
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SGQXBEHFTXKOA7IDZ6CO2FTJYTL354FB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This series is the follow-up of the discussion that John and I had a few
months ago here:

https://lore.kernel.org/all/CANDhNCquJn6bH3KxKf65BWiTYLVqSd9892-xtFDHHqqyrroCMQ@mail.gmail.com/

The initial problem we were discussing was that I'm currently working on
a platform which has a memory layout with ECC enabled. However, enabling
the ECC has a number of drawbacks on that platform: lower performance,
increased memory usage, etc. So for things like framebuffers, the
trade-off isn't great and thus there's a memory region with ECC disabled
to allocate from for such use cases.

After a suggestion from John, I chose to start using heap allocations
flags to allow for userspace to ask for a particular ECC setup. This is
then backed by a new heap type that runs from reserved memory chunks
flagged as such, and the existing DT properties to specify the ECC
properties.

We could also easily extend this mechanism to support more flags, or
through a new ioctl to discover which flags a given heap supports.

I submitted a draft PR to the DT schema for the bindings used in this
PR:
https://github.com/devicetree-org/dt-schema/pull/138

Let me know what you think,
Maxime

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
Maxime Ripard (8):
      dma-buf: heaps: Introduce a new heap for reserved memory
      of: Add helper to retrieve ECC memory bits
      dma-buf: heaps: Import uAPI header
      dma-buf: heaps: Add ECC protection flags
      dma-buf: heaps: system: Remove global variable
      dma-buf: heaps: system: Handle ECC flags
      dma-buf: heaps: cma: Handle ECC flags
      dma-buf: heaps: carveout: Handle ECC flags

 drivers/dma-buf/dma-heap.c            |   4 +
 drivers/dma-buf/heaps/Kconfig         |   8 +
 drivers/dma-buf/heaps/Makefile        |   1 +
 drivers/dma-buf/heaps/carveout_heap.c | 330 ++++++++++++++++++++++++++++++++++
 drivers/dma-buf/heaps/cma_heap.c      |  10 ++
 drivers/dma-buf/heaps/system_heap.c   |  29 ++-
 include/linux/dma-heap.h              |   2 +
 include/linux/of.h                    |  25 +++
 include/uapi/linux/dma-heap.h         |   5 +-
 9 files changed, 407 insertions(+), 7 deletions(-)
---
base-commit: a38297e3fb012ddfa7ce0321a7e5a8daeb1872b6
change-id: 20240515-dma-buf-ecc-heap-28a311d2c94e

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
