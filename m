Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0524DA7E674
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Apr 2025 18:29:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 254D7446B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Apr 2025 16:29:33 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 5F57D40B40
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Apr 2025 16:29:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Hkw3eI6v;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 59847A46BC2;
	Mon,  7 Apr 2025 16:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DF55C4CEDD;
	Mon,  7 Apr 2025 16:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744043354;
	bh=3b8VOVmMJmDs0QpE3iKQtkDExxkK0Dq6HU5GYSoisSE=;
	h=From:Subject:Date:To:Cc:From;
	b=Hkw3eI6vj91noQE6GzOxEKcYtFf4tYUyPwWSmOv3fL+C1AyrFvVxvJnf+eewKVJEo
	 35LSz+uz+4gD9QGRe9myNBx5GfKu+P76lSmrbo390mYbgQq7B923EwL19f969vWe1C
	 7DzEVzmEIjarW038+yn0RJ0OBF9/tcAOqgo/O6Zh4aTSo4Pf7fBS3Or11nzqKooRmJ
	 vtF+iFB8MhjXG3npGaON056hS7pRL5wIOgRau4yGXGuS1Ek7DhXLv7zz5j71CcaXNk
	 l7j3JWVTOeHJlf2IuBrcftbR68L15gqObiksS8y2WCffYbOLWS6VjZ3O4eX2fPwuvw
	 4OdKsL13RlF7Q==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 07 Apr 2025 18:29:06 +0200
Message-Id: <20250407-dma-buf-ecc-heap-v3-0-97cdd36a5f29@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFL982cC/33NQQrCMBCF4auUrB2ZSROxrryHuEiTaRvUtiQal
 NK7mxZcCOLyfzDfTCJy8BzFoZhE4OSjH/oc5aYQtjN9y+BdbiFRKtSkwd0M1I8G2Fro2Iwg96Y
 kctJWikU+GwM3/rmSp3Puzsf7EF7rh0TL+gdLBAha2bp2qCpNdLxw6Pm6HUIrFi3Jj6BRIf0QZ
 BZQlY1D3BkyzZcwz/MbLVRT7fMAAAA=
X-Change-ID: 20240515-dma-buf-ecc-heap-28a311d2c94e
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2571; i=mripard@kernel.org;
 h=from:subject:message-id; bh=3b8VOVmMJmDs0QpE3iKQtkDExxkK0Dq6HU5GYSoisSE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOmf/4bdq3o6g8vi0aM649iXBvdOlHe49D5oixSo6e3pv
 HbtbeCXjlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEzk5hOGvzLaO15/1z99YI1M
 6UOx5G+/RSxj9tsvVty1Ze7ix+n+H2IYGVqsl5l+nWdgyd+UNftMVPL+jfPFFc87tjGa13v5my/
 azAgA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 5F57D40B40
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_IN_DNSWL_MED(-0.20)[147.75.193.91:from];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DF3AV3UESMP67RFEDU3ZOU756FDFOKUI
X-Message-ID-Hash: DF3AV3UESMP67RFEDU3ZOU756FDFOKUI
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/2] dma-buf: heaps: Support carved-out heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DF3AV3UESMP67RFEDU3ZOU756FDFOKUI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This series is the follow-up of the discussion that John and I had some
time ago here:

https://lore.kernel.org/all/CANDhNCquJn6bH3KxKf65BWiTYLVqSd9892-xtFDHHqqyrroCMQ@mail.gmail.com/

The initial problem we were discussing was that I'm currently working on
a platform which has a memory layout with ECC enabled. However, enabling
the ECC has a number of drawbacks on that platform: lower performance,
increased memory usage, etc. So for things like framebuffers, the
trade-off isn't great and thus there's a memory region with ECC disabled
to allocate from for such use cases.

After a suggestion from John, I chose to first start using heap
allocations flags to allow for userspace to ask for a particular ECC
setup. This is then backed by a new heap type that runs from reserved
memory chunks flagged as such, and the existing DT properties to specify
the ECC properties.

After further discussion, it was considered that flags were not the
right solution, and relying on the names of the heaps would be enough to
let userspace know the kind of buffer it deals with.

Thus, even though the uAPI part of it has been dropped in this second
version, we still need a driver to create heaps out of carved-out memory
regions. In addition to the original usecase, a similar driver can be
found in BSPs from most vendors, so I believe it would be a useful
addition to the kernel.

I submitted a draft PR to the DT schema for the bindings used in this
PR:
https://github.com/devicetree-org/dt-schema/pull/138

Let me know what you think,
Maxime

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
Changes in v3:
- Reworked global variable patch
- Link to v2: https://lore.kernel.org/r/20250401-dma-buf-ecc-heap-v2-0-043fd006a1af@kernel.org

Changes in v2:
- Add vmap/vunmap operations
- Drop ECC flags uapi
- Rebase on top of 6.14
- Link to v1: https://lore.kernel.org/r/20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org

---
Maxime Ripard (2):
      dma-buf: heaps: system: Remove global variable
      dma-buf: heaps: Introduce a new heap for reserved memory

 drivers/dma-buf/heaps/Kconfig         |   8 +
 drivers/dma-buf/heaps/Makefile        |   1 +
 drivers/dma-buf/heaps/carveout_heap.c | 360 ++++++++++++++++++++++++++++++++++
 drivers/dma-buf/heaps/system_heap.c   |   3 +-
 4 files changed, 370 insertions(+), 2 deletions(-)
---
base-commit: fcbf30774e82a441890b722bf0c26542fb82150f
change-id: 20240515-dma-buf-ecc-heap-28a311d2c94e

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
