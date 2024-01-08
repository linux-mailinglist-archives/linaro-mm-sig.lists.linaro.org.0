Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E141826D7F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jan 2024 13:11:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2051840B1E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jan 2024 12:11:57 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 7C6F843D30
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jan 2024 12:11:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=W6fod49M;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1704715263;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kw2xnPE5HtY1SEvsv8OuzuBAyMF2igZ6CutMKzqtu08=;
	b=W6fod49MZzGKeKASfexzXo/74JFcIFld1pbmYxXq7OXhAtPX5G7Ifl0VWUswisMuN4S04y
	5NLkk/CClNpn75kJB2PiGGoRGMhR8rj1e35NH8jmlUixSdz4bWBc396mUHcI9K7lAaVlvM
	g+LHGTNPldL6HMuN9Gh4QWWyJURIlkw=
From: Paul Cercueil <paul@crapouillou.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Jonathan Corbet <corbet@lwn.net>
Date: Mon,  8 Jan 2024 13:00:52 +0100
Message-ID: <20240108120056.22165-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Action: add header
X-Spamd-Result: default: False [4.00 / 15.00];
	SPAM_FLAG(5.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:c];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[15];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	TAGGED_RCPT(0.00)[];
	GREYLIST(0.00)[pass,body];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,collabora.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,crapouillou.net];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.946];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Spam-Level: ****
X-Rspamd-Queue-Id: 7C6F843D30
X-Spamd-Bar: ++++
Message-ID-Hash: ASOAINLKANELO4A4GT2CGE4H7EU53ROW
X-Message-ID-Hash: ASOAINLKANELO4A4GT2CGE4H7EU53ROW
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/4] usb: gadget: functionfs: DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ASOAINLKANELO4A4GT2CGE4H7EU53ROW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spam: Yes

Hi,

This small patchset adds three new IOCTLs that can be used to attach,
detach, or transfer from/to a DMABUF object.

This interface is being used at Analog Devices, to transfer data from
high-speed transceivers to USB in a zero-copy fashion, using also the
DMABUF import interface to the IIO subsystem which is being upstreamed
in parallel [1] (and has high chances to be accepted for 5.9, I think
Jonathan can confirm). The two are used by the Libiio software [2].

On a ZCU102 board with a FMComms3 daughter board, using the combination
of these two new interfaces yields a drastic improvement of the
throughput, from about 127 MiB/s using IIO's buffer read/write interface
+ read/write to the FunctionFS endpoints, to about 274 MiB/s when
passing around DMABUFs, for a lower CPU usage (0.85 load avg. before,
vs. 0.65 after).

Right now, *technically* there are no users of this interface, as
Analog Devices wants to wait until both interfaces are accepted upstream
to merge the DMABUF code in Libiio into the main branch, and Jonathan
wants to wait and see if this patchset is accepted to greenlight the
DMABUF interface in IIO as well. I think this isn't really a problem;
once everybody is happy with its part of the cake, we can merge them all
at once.

This is obviously for 5.9, and based on next-20240108.

Changelog:

- [3/4]:
  - Inline to_ffs_dma_fence() which was called only once.
  - Simplify ffs_dma_resv_lock()
  - Add comment explaining why we unref twice in ffs_dmabuf_detach()
  - Document uapi struct usb_ffs_dmabuf_transfer_req and IOCTLs
- [4/4]: New patch, as I figured out having documentation wouldn't hurt.

Cheers,
-Paul

[1] https://lore.kernel.org/linux-iio/219abc43b4fdd4a13b307ed2efaa0e6869e68e3f.camel@gmail.com/T/
[2] https://github.com/analogdevicesinc/libiio/tree/pcercuei/dev-new-dmabuf-api

Paul Cercueil (4):
  usb: gadget: Support already-mapped DMA SGs
  usb: gadget: functionfs: Factorize wait-for-endpoint code
  usb: gadget: functionfs: Add DMABUF import interface
  Documentation: usb: Document FunctionFS DMABUF API

 Documentation/usb/functionfs.rst    |  36 +++
 drivers/usb/gadget/function/f_fs.c  | 463 ++++++++++++++++++++++++++--
 drivers/usb/gadget/udc/core.c       |   7 +-
 include/linux/usb/gadget.h          |   2 +
 include/uapi/linux/usb/functionfs.h |  41 +++
 5 files changed, 528 insertions(+), 21 deletions(-)

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
