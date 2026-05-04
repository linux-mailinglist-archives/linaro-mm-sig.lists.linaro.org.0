Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cE47BnleBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:20:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC9D532147
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:20:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CE5F3F91B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:20:23 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id E20E53F7FD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2026 15:30:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=NdvBaDFZ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of tom.leiming@gmail.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=tom.leiming@gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso33782045e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 04 May 2026 08:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777908615; x=1778513415; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JTReAJBRtrEN050pOinCvG1qLugpFlFxRiDBF5vEgm4=;
        b=NdvBaDFZvySU3uSnHY81nKmcn1XpNz64YGryOZmXK4om7k2JTSr7mR8Bl0pY9hU4Dz
         9MSa07uHZn9lwis3288jgPNaPxcgXUWQnaR7J9O8yzmZS2/HfLGELt3ghXGi8Rv1vq57
         3vaZ5XGFJfVHkC0wTEUt+CXbq9ntAvEPVudhUoFxj0lsvJZzetAuir0uR1FlGbsnsBeJ
         wKyvSi6En7P/+bZ2vexhv2QjTQKUetG5wMrjb6/CxmNc/hEK7kJz1WZbKESVUjiisaFt
         HC5n2zZYJGMHPev1JUZs8ENQLbv86UZIfe+/451nWWuTwBdOragvRxN8aiTz5LQ1sr4b
         D0wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777908615; x=1778513415;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTReAJBRtrEN050pOinCvG1qLugpFlFxRiDBF5vEgm4=;
        b=mnsJBgmGBB+pswf3guR7n7nzgiKEELA8ACe4fqz9OKMqMKGUlWHCD579S/MCkjRdYZ
         iOmVnPptTe9n9E5W2oEu8KDcrAs6bg6gqBPxvxUpRriUsuKLwDTYSQndZD0imV50OSST
         86AbjilcFTWSGbE2Cl1gq63rtZy3ebek+G29V4JqY/EoXlA1MyVkjSh+i4eVTzndkphR
         nPJ/IjGDSUMBa3TyIxiSkg7QayrrFBVnwerQos7Gzb+DbYG7g6L3qh8Z4npEgq7JFTCj
         EY8+L4ET9jPe34gbHLspZlkSxlHVH0VzT8NZEYXROOgSk0CEWOn+OtGtVCscyeRF1U2O
         CEcA==
X-Forwarded-Encrypted: i=1; AFNElJ/1DezBmw0w6NOFGAzQl0NwaIsbq0uwa81UPynDY1tQKVnRb8l6c4TWj3USy+eY+l7CEScTlReE6Ydd4lXY@lists.linaro.org
X-Gm-Message-State: AOJu0YxlJU0j/cK7lApuAnqgnHyppjgGnpPf8psuCDDpHXe9/bQ4gf9e
	J9RI6LErubh6m3T2hkuvJKE/DvilRzPicL+c1oUVjuq3T0vYdLm6naWG
X-Gm-Gg: AeBDiev8PxnsS0QFxpF3fqHJE3ck2ydEXF6kiAR/0NrB64n9tjkEu1iQISp5OoR8xok
	TJWygI7RB/lV0IVY4m5g2lkbtHSIZlwxP5tw9iHSxwcW+tWRHXOGKieleBdB/y5+woKm0DDx7pf
	ceBsXHCErzvvZvl9Ouk9J3Ep/W8GXR86oSlIbFuF4VC0j8qPeCx00mA/Fz29njCM6m9OQNI469U
	aJMSIegi1qT+ykwIURSPr/Vn4y979JgyztAI7dTjKIwA0Y2of8soek0Nk+gaF7lHrZkKInih9xX
	U/4TtE+fDK8pKz3LZP2PbeG88dpgU3jrBadtnlJr4LkrQoRqyL4K2KenqOEWRTdqhoOFKEI60l0
	1eSGduNQIM9vQ3PiL7RAbmVYwpCJjuOBTAhYzi4opLdp/0AMW939BKFQ1qS0cRN3UO3Jy/suZrO
	B1Av4WBtwYYsDHVyy8+ocUhlYso8o08jhIFf8EQEelDlxXT05MEfN1rwhwmH+3PIJmgWLl0N0Zq
	fuwri65jRIwt9r1+Fqus2HN
X-Received: by 2002:a05:600c:4f91:b0:489:1ba8:5be9 with SMTP id 5b1f17b1804b1-48a98676b26mr157938505e9.29.1777908614504;
        Mon, 04 May 2026 08:30:14 -0700 (PDT)
Received: from fedora (185-147-212-251.par.as62651.net. [185.147.212.251])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-44a8ea7cfd2sm25250825f8f.2.2026.05.04.08.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 08:30:13 -0700 (PDT)
Date: Mon, 4 May 2026 23:29:55 +0800
From: Ming Lei <tom.leiming@gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <afi7c-VUJWOLlC1m@fedora>
References: <cover.1777475843.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1777475843.git.asml.silence@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: tom.leiming@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZSASPCJYNZPHERHAZ52OKKOJ6VA5BONT
X-Message-ID-Hash: ZSASPCJYNZPHERHAZ52OKKOJ6VA5BONT
X-Mailman-Approved-At: Wed, 13 May 2026 11:19:39 +0000
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 00/10] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZSASPCJYNZPHERHAZ52OKKOJ6VA5BONT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: BEC9D532147
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[211];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.719];
	FROM_NEQ_ENVFROM(0.00)[tomleiming@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On Wed, Apr 29, 2026 at 04:25:46PM +0100, Pavel Begunkov wrote:
> The patch set allows to register a dmabuf to an io_uring instance for
> a specified file and use it with io_uring read / write requests. The
> infrastructure is not tied to io_uring and there could be more users
> in the future. A similar idea was attempted some years ago by Keith [1],
> from where I borrowed a good number of changes, and later was brough up
> by Tushar and Vishal from Intel.
> 
> It's an opt-in feature for files, and they need to implement a new
> file operation to use it. Only NVMe block devices are supported in this
> series. The user API is built on top of io_uring's "registered buffers",
> where a dmabuf is registered in a special way, but after it can be used
> as any other "registered buffer" with IORING_OP_{READ,WRITE}_FIXED
> requests. It's created via a new file operation and the resulted map is
> then passed through the I/O stack in a new iterator type. There is some
> additional infrastructure to bind it all, which also counts requests
> using a dmabuf map and managing lifetimes, which is used to implement
> map invalidation.
> 
> It was tested for GPU <-> NVMe transfers. Also, as it maintains a
> long-term dma mapping, it helps with the IOMMU cost. The numbers
> below are for udmabuf reads previously run by Anuj for different
> IOMMU modes:

Plain registered buffer is long-live too, which raises question: does this
framework need to take it into account from beginning?

BTW, inspired by this approach, I adds similar feature to ublk via UBLK_IO_F_SHMEM_ZC
which can maintain long-term vfio dma mapping over registered user-place aligned buffer.



Thanks, 
Ming
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
