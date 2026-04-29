Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IL9/AAJdBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B1022531FE6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B983340492
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:14:08 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id D52C13F7DA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 15:26:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Dg8pqXa1;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-488a9033b2cso133240665e9.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777476378; x=1778081178; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G9kqbgnidQC23bEvrBAVDYa4e7L0vOouqvUY0ysfe8Y=;
        b=Dg8pqXa1pFmT7HIz8+E0CDeO/xRwisdCMONgHOmBasvhEN/CbnH3OnK/USVnw7nCAS
         3wobXaDDhoPQernpwYGUqCwl8EyFpwM7fyHKnDK6jbz+DHY4euAwt+08rfwmVoj5+9KR
         oFFsm5AnkIBK9Lylnff69H77GDwACVZSMuz8M/67lasm70sGacTy12UJcx+0pKhFHzQa
         YKE3EKcEb2b5hZLwK/Y9j6JV/PnOSHKjhlg525RaTJzSONqulPqZGuW/pSJqXsdGav3c
         adNzVGEcWniWlpfpfSd9WTph9JrlF/MY5CslZ4T3/pqORa8d+IC6um7Gy44rP08mqe1L
         tF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777476378; x=1778081178;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G9kqbgnidQC23bEvrBAVDYa4e7L0vOouqvUY0ysfe8Y=;
        b=k18lYNKzMRmVNGggujJDrkN0rEa7lPMOYuhSlnEjHDAeSwBTxAT+V83k7tXL10AhuA
         ivLkRjG4XNHfAa2xQrTd1cxUrlJFPFpsr2AgxORgVV1wDGQjsOURywE3DCiVybDn+yWq
         iemAq4Rj9U1gj0opG7CaPrlo3LKMOM7Uwz6pRxGktnqCNVx9LIcbWD1Gby9cV9Wy3d55
         xiLNjta8ppmP/jO67qYNdr2mVCxIGZe+wrw8onBo8WCOhGRtf4XvQW8vO6hxwNWJ60C/
         p52gCW4OXC+BNm3onxEaorH9TU20/Ra7dmelNNUnoW7ytW97GXC746Z/tVT8hlvI1NCU
         y/rQ==
X-Forwarded-Encrypted: i=1; AFNElJ+nRvTOOwSZNI2H0zUKeAqFP1kMv483BzIS+NlWoGAY6EjbidgZBx6afCrkQLFKDTwt/XWFrEuPu7cUVqxf@lists.linaro.org
X-Gm-Message-State: AOJu0YyPmRc6qG/7E7Gb6KRk6XC2arKRfTa8LtTIWCm85XDaXqFDWMDk
	j+RTLvoO+iaePhhxQz8VFLwV6ErE7d9ID4MO48nafobXFBFWjjjROuG4
X-Gm-Gg: AeBDiev5k3wZxT8AHEjpNG034wqneXCfcP7f47jhnVtlbO+HOQOKWV8UZIZiR4KNkBY
	a4RkjMykNzbWGq+p7+3q2+T/7h1XnBI3r6wihK0mp9ZcKc4AWJxwyLCGg3Gn3VCfHmv1dH1eWkS
	R1tHTvLau6rKasplgW6cE1eb4Ed08dkLvtWCFgoIR13ZscWacclSogHQ4rAt51d98G075AbX3eZ
	RJOirAaSxBzVYW1DEuIe4vFEmBSWimW+IWSnaA6t+0nDT+BHMT5KKBuyhrM9v7xCbme+//y1mCc
	OYsmzp1MQD4pe5dJNRmLK0BhqsA6gCpyAs13phjXnLnhPHQIQni6c182/xVZaMbVoztHakpn2V6
	1icJXU48lptw+iwvLhR88nGU6xSKDHPTpZjdMZU+hRuzNYUE8JM/iZa4d2ESPLUezFcou9XKSys
	6UmSbQCB091LWeqPj/WAOQ/xDetyM1I7qPvJP3p4sKpPaYtgfyldD60oKAWCXVO7mJW46+vhgH/
	EDvIYgs8H7phLHyPDTXkmdEK08mFHb9YzUQbJgx0sZH
X-Received: by 2002:a05:600c:4f92:b0:489:1ff1:74df with SMTP id 5b1f17b1804b1-48a77ae5430mr125646225e9.1.1777476377153;
        Wed, 29 Apr 2026 08:26:17 -0700 (PDT)
Received: from 127.0.0.1localhost ([82.132.184.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b76e5c22sm6382951f8f.28.2026.04.29.08.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 08:26:16 -0700 (PDT)
From: Pavel Begunkov <asml.silence@gmail.com>
To: Jens Axboe <axboe@kernel.dk>,
	Keith Busch <kbusch@kernel.org>,
	Christoph Hellwig <hch@lst.de>,
	Sagi Grimberg <sagi@grimberg.me>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Christian Brauner <brauner@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	linux-fsdevel@vger.kernel.org,
	io-uring@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 29 Apr 2026 16:25:46 +0100
Message-ID: <cover.1777475843.git.asml.silence@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: W7WGPDI626GXFGIHVIRMAAHM3MLAMDWU
X-Message-ID-Hash: W7WGPDI626GXFGIHVIRMAAHM3MLAMDWU
X-Mailman-Approved-At: Wed, 13 May 2026 11:13:55 +0000
CC: asml.silence@gmail.com, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 00/10] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W7WGPDI626GXFGIHVIRMAAHM3MLAMDWU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B1022531FE6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[331];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,samsung.com,intel.com,nvidia.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.892];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

The patch set allows to register a dmabuf to an io_uring instance for
a specified file and use it with io_uring read / write requests. The
infrastructure is not tied to io_uring and there could be more users
in the future. A similar idea was attempted some years ago by Keith [1],
from where I borrowed a good number of changes, and later was brough up
by Tushar and Vishal from Intel.

It's an opt-in feature for files, and they need to implement a new
file operation to use it. Only NVMe block devices are supported in this
series. The user API is built on top of io_uring's "registered buffers",
where a dmabuf is registered in a special way, but after it can be used
as any other "registered buffer" with IORING_OP_{READ,WRITE}_FIXED
requests. It's created via a new file operation and the resulted map is
then passed through the I/O stack in a new iterator type. There is some
additional infrastructure to bind it all, which also counts requests
using a dmabuf map and managing lifetimes, which is used to implement
map invalidation.

It was tested for GPU <-> NVMe transfers. Also, as it maintains a
long-term dma mapping, it helps with the IOMMU cost. The numbers
below are for udmabuf reads previously run by Anuj for different
IOMMU modes:

- STRICT: before = 570 KIOPS, after = 5.01 MIOPS
- LAZY: before = 1.93 MIOPS, after = 5.01 MIOPS
- PASSTHROUGH: before = 5.01 MIOPS, after = 5.01 MIOPS

There are some liburing tests that can serve as an example:
git: https://github.com/isilence/liburing.git rw-dmabuf-tests-v3
url: https://github.com/isilence/liburing/tree/rw-dmabuf-tests-v3

[1] https://lore.kernel.org/io-uring/20220805162444.3985535-1-kbusch@fb.com/

v3: - Rework io_uring registration
    - Move token/map infrastructure code out of blk-mq
    - Simplify callbacks: remove a separate blk-mq table, which was
      mostly just forwarding calls (to nvme).
    - Don't skip dma sync depending on request direction
    - Fix a couple of hangs
    - Rename s/dma/dmabuf/
    - Other small changes

v2: - Don't pass raw dma addresses, wrap it into a driver specific object
    - Split into two objects: token and map
    - Implement move_notify

Pavel Begunkov (10):
  file: add callback for creating long-term dmabuf maps
  iov_iter: add iterator type for dmabuf maps
  block: move bvec init into __bio_clone
  block: introduce dma map backed bio type
  lib: add dmabuf token infrastructure
  block: forward create_dmabuf_token to drivers
  nvme-pci: implement dma_token backed requests
  io_uring/rsrc: introduce buf registration structure
  io_uring/rsrc: extend buffer update
  io_uring/rsrc: add dmabuf backed registered buffers

 block/bio.c                     |  28 +++-
 block/blk-merge.c               |  14 ++
 block/blk.h                     |   3 +-
 block/fops.c                    |  16 ++
 drivers/nvme/host/pci.c         | 282 ++++++++++++++++++++++++++++++++
 include/linux/bio.h             |  19 ++-
 include/linux/blk-mq.h          |   9 +
 include/linux/blk_types.h       |   8 +-
 include/linux/fs.h              |   2 +
 include/linux/io_dmabuf_token.h |  92 +++++++++++
 include/linux/io_uring_types.h  |   5 +
 include/linux/uio.h             |  11 ++
 include/uapi/linux/io_uring.h   |  31 +++-
 io_uring/io_uring.c             |   3 +-
 io_uring/rsrc.c                 | 266 +++++++++++++++++++++++++-----
 io_uring/rsrc.h                 |  30 +++-
 io_uring/rw.c                   |   4 +-
 lib/Kconfig                     |   4 +
 lib/Makefile                    |   2 +
 lib/io_dmabuf_token.c           | 272 ++++++++++++++++++++++++++++++
 lib/iov_iter.c                  |  29 +++-
 21 files changed, 1071 insertions(+), 59 deletions(-)
 create mode 100644 include/linux/io_dmabuf_token.h
 create mode 100644 lib/io_dmabuf_token.c

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
