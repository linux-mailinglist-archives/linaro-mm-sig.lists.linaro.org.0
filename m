Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 516528424C0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jan 2024 13:23:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FC88400A2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jan 2024 12:23:55 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 82E78400A2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jan 2024 12:23:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=Lv6jdOaQ;
	dmarc=pass (policy=none) header.from=crapouillou.net;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1706617427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+n8ItVGKEntF1q4atKJJA2NJbdTS+Zf0wFw3L1mGo3s=;
	b=Lv6jdOaQdchyQWN4DHxAvoCnvj0/mzDrE8k+Dr5pJcsLTiEG+reSL3O6QPCwhLeaDszKCu
	cRzpOCW4TQFqmEXaAJ1pHsu1AjJNjx6+Ip6LyAVCeCT9jhrt/vkvzf4TFcfPZVANebtntU
	EjtFP7R0OwxikAVSeQNnRvnGl431PHg=
From: Paul Cercueil <paul@crapouillou.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Tue, 30 Jan 2024 13:23:36 +0100
Message-ID: <20240130122340.54813-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 82E78400A2
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,crapouillou.net];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: QJYEKCQQ6UYCYLUT5RPBC2HI3A3ZJOQ5
X-Message-ID-Hash: QJYEKCQQ6UYCYLUT5RPBC2HI3A3ZJOQ5
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 0/4] usb: gadget: functionfs: DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QJYEKCQQ6UYCYLUT5RPBC2HI3A3ZJOQ5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This is the v6 of my patchset that adds a new DMABUF import interface to
FunctionFS.

Given that the cache coherency issue that has been discussed after my
v5 is a tangential problem and not directly related to this new
interface, I decided to drop the dma_buf_begin/end_access() functions
for now - but I'm open to the idea of re-introducing them in a
subsequent patchset.

The patchset was rebased on next-20240129.

Cheers,
-Paul

---
Changelog:
* Drop v5's patches [1/6] and [2/6].
* [3/4]: 
  - Drop use of dma_buf_begin/end_access(). We now make the assumption
    that the devices attached to the DMABUFs must be coherent between
    themselves. The cache coherency issue is a tangential problem, and
    those functions can be re-introduced in a subsequent patchset.
  - Unqueue pending requests on detach. Otherwise, when closing the data
    endpoint the DMABUF will never be signaled.
  - Use list_for_each_entry_safe() in ffs_dmabuf_detach(), because there
    is a list_del() in there.
  - use pr_vdebug() instead of pr_debug()
  - Rename ffs_dmabuf_unmap_work() -> ffs_dmabuf_cleanup()

---
Paul Cercueil (4):
  usb: gadget: Support already-mapped DMA SGs
  usb: gadget: functionfs: Factorize wait-for-endpoint code
  usb: gadget: functionfs: Add DMABUF import interface
  Documentation: usb: Document FunctionFS DMABUF API

 Documentation/usb/functionfs.rst    |  36 ++
 drivers/usb/gadget/Kconfig          |   1 +
 drivers/usb/gadget/function/f_fs.c  | 513 ++++++++++++++++++++++++++--
 drivers/usb/gadget/udc/core.c       |   7 +-
 include/linux/usb/gadget.h          |   2 +
 include/uapi/linux/usb/functionfs.h |  41 +++
 6 files changed, 579 insertions(+), 21 deletions(-)

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
