Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E1ZfF8hgPWrY2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:09:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E476C7B62
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:09:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=HBr7I5NH;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC2DB4472F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:09:26 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 846463F7F9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 22:53:57 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4921eed3fa2so2935265e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 15:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782255236; x=1782860036; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kl7+6G6mEg9f9+ckJBvnEW32MGFOl9Otf3/P0x9y5MY=;
        b=HBr7I5NHoqmKGPQWdl/q8Hszu2cEcvY76GwlDdjeUqQ1R2n5DdOzf2c+bfZ3laEDMO
         g+Xy6774kymzz/dB8nhQR9wifDDLb3cS0CxqVWpTVUiW0s2RQLjuG2hZxIjX/DWdfMws
         F80fXxF0HjbP5B/6K2vtrYHYiqmS7lTm4bRlmF9bLJMlxkdnfRMf+jcfSv8+ukIC2q82
         hkOmzxYaLeVeAJ5KaP2D2pEZP4ZhczJGOy3HB/YD9B8AaWPz3YMmq0u3QYuSjosDkqqs
         AtTxOysEhXUEs5MCSKvDGu5/Qn34wnw+ldijDdOg8js+8bSEqY6FG4603V+/QuSbMzzj
         gZQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782255236; x=1782860036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Kl7+6G6mEg9f9+ckJBvnEW32MGFOl9Otf3/P0x9y5MY=;
        b=ro4PJnUJ5HjRNXqgm5hBwh9QX2iDw+YLhR0B5jVpoSyvlAttExy1ZHncoDyBAD/6Ay
         qJrEVfCA+JqPReyGPnZMkDC1STQ2T8bb8HDdKLMSFQZ2F0HNqQ7HrmdDRv+KKJUyI/Mr
         e1XbYvvL2T7YQ353ImPUw15RqfF2gfTlgFEwtEyAxUFuwXpW6RFo/nAQ3gwA4V214CpN
         p0siCvk1/Ch+3czueOh5YGEMT+3yl5TtN3fhJu9fpx7343ywmFBV/C1aGxIPBoeY9aOL
         o1TDJCzQ5kv38nFvWosBJRkHb8HgWRgSEVAZ5TsNyNUUW53m5doKo5kLiQRIXzWEdtl2
         vJ8A==
X-Forwarded-Encrypted: i=1; AFNElJ9IvEVpQn6EoWX7DfkfYVY2ttlHuBMV3h2SdYULoGBSq+vw9l02kHh51CICQOH7h1kmamWxBiMMGJhHpCud@lists.linaro.org
X-Gm-Message-State: AOJu0YwKkGuDFvz0YeYw38x0oeYnbeu8Bi3fAz48aEfobRWW/murjJ06
	dqd9d9Lfd+cKWyJErOp2xN5+5nacfHLMXBDQqT0kSkxGOBBLQ35/rYFn
X-Gm-Gg: AfdE7ckSguyfTlf8BQAWYjhQfGazKmL6tOid5nXztYsbgu8KYNf0ZAuU8u2ZHOQ9B4s
	XlbF7woYrqHoWpHDytDy8nXoru1uFRZV5A4OXYEJGLzYtLaHMLxRgimm3hv9kDqIYEqjNTgi+ho
	qyA9e8FafVBjhikrKS6vWKtEYl7iKsMtL9RLx5w7cXUfGnzyBQi+Rp7nwwH+o78ktqmtXJU3EBG
	qewAPwqi5UvDoh73LJwWVAKBm4yyedKj25EHRTey7oq5nEr9zQxuwFuk/0iPyBFUmWLz+zlUZGp
	cVpCIbhZNz0de0+5oo5ITG9m/oa5Ru8hkRnbIc3+UYNwICqXBnyF37BaZTYl1pIcKxnvG7lAjoj
	zlkyPcW5/Rwe1flQLZfUpCaAAkzzOHNR/G0iu1i3UWTi1joboGyVfeIY/Mt3qrPcPIYpp9vcnHR
	CORc+lGn5ihtGCCuTvLkfMCHzQc0GX0QnwbUCRpvC7nrsXpGkdSg==
X-Received: by 2002:a05:600c:699b:b0:492:6113:d4fc with SMTP id 5b1f17b1804b1-4926113d5camr183865e9.17.1782255236221;
        Tue, 23 Jun 2026 15:53:56 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49249207dabsm583674705e9.0.2026.06.23.15.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 15:53:54 -0700 (PDT)
Date: Tue, 23 Jun 2026 23:53:50 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Pranjal Shrivastava <praan@google.com>
Message-ID: <20260623235350.6540eaa2@pumpkin>
In-Reply-To: <ajryxMaT5evDUxaq@google.com>
References: <20260621222130.1667453-1-xuehaohu@google.com>
	<20260623015459.1153884-1-xuehaohu@google.com>
	<20260623094446.4a8fc2ed@pumpkin>
	<ajryxMaT5evDUxaq@google.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MNBMNLQPRTZ2XODT4CUXMJVROC6NA5S7
X-Message-ID-Hash: MNBMNLQPRTZ2XODT4CUXMJVROC6NA5S7
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:27 +0000
CC: David Hu <xuehaohu@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, kpberry@google.com, chriscli@google.com, sashiko-bot@kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Split sgl into page-aligned 2G chunks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MNBMNLQPRTZ2XODT4CUXMJVROC6NA5S7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	DATE_IN_PAST(1.00)[42];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:praan@google.com,m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:kpberry@google.com,m:chriscli@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,bootlin.com:url,pumpkin:mid,widen.net:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D4E476C7B62

On Tue, 23 Jun 2026 20:55:32 +0000
Pranjal Shrivastava <praan@google.com> wrote:

> On Tue, Jun 23, 2026 at 09:44:46AM +0100, David Laight wrote:
> 
> Hi David,
> 
> > On Tue, 23 Jun 2026 01:54:59 +0000
> > David Hu <xuehaohu@google.com> wrote:
> >   
> > > Currently, `fill_sg_entry()` splits the scatterlist using `UINT_MAX`.
> > > This creates a non-page-aligned DMA length (`0xFFFFFFFF`) for the
> > > first entry, resulting in non-page-aligned DMA addresses for all
> > > subsequent entries.  
> > 
> > There is a separate issue of whether this code is even needed at all.
> > Where can transfers over 2G (never mind 4G) actually come from.
> > 
> > The read, write and similar system calls limit transfers to INT_MAX
> > (even on 64bit) and a lot of driver code will need fixing it longer
> > lengths are allowed though.
> > io_uring better enforce the same limits.
> > So the transfers can come directly from userspace.
> > 
> > Not only that but you also need a single physically contiguous buffer.
> > Good luck allocating that!
> > 
> > Now maybe there are some peer-to-peer places where the large buffer
> > is device memory, but they will be unusual and probably need
> > special treatment anyway.
> >   
> 
> I agree that traditional VFS read/write face the MAX_RW_COUNT limit 
> (~2GB), and io_uring has its limits, but I'm a little confused by the
> push to enforce these limits here in the SGL code?
> 
> File I/O seems to be only one side of the picture. In my view, this fix
> is necessary and certainly has a use-case:
> 
> For example, the RDMA subsystem has the capability to import dmabufs [1],
> which gives rise to use cases for dmabuf beyond standard file ops 
> (via VFS/io_uring). 
> 
> In these scenarios, GPU HBM can be exported as dmabufs. With recent GPUs,
> HBM capacity can be in the order of hundreds of GBs [2]. RDMA can employ
> infrastructure like the vfio-dmabuf-exporter [3] or similar dmabuf 
> exporters to frequently move huge blocks of data via P2PDMA.

Ok, that explains where big buffers can come from.
I just wasn't sure.

> If we restrict incoming dmabuf transfers to fit within VFS-centric 
> limits (2GB), we impose unnecessary overhead on the RDMA stack, forcing
> it to manage a significantly higher number of memory registrations. By 
> cleanly splitting these massive contiguous device buffers into 
> page-aligned SGL entries, we directly improve the efficiency of P2P 
> transfers and memory registration.

But a divide by '4G - PAGE_SIZE' is also non-trivial and (I think affects
a lot of io) when the quotient is always 1.
Splitting into 2G chunks is a lot cheaper.

> Since this change doesn't seem to have a negative impact on standard file
> I/O or break existing VFS constraints, I'm curious why we shouldn't 
> support splitting these >4GB P2P transfers? Am I missing something?

I was only wondering whether it was needed...
It does bring up the question of why the >4GB transfers even need splitting.
But that is another question.

If you want to split large transfers into 4G-PAGE_SIZE blocks
it is probably worth having a quick test that returns 1 for 'small' buffers.

	David

> 
> Thanks,
> Praan
> 
> [1] https://elixir.bootlin.com/linux/v7.1.1/source/drivers/infiniband/core/umem_dmabuf.c#L174 
> [2] https://nvdam.widen.net/s/fdvdqvfvj2/hopper-h200-nvl-product-brief (Table 2-2)
> [3] https://elixir.bootlin.com/linux/v7.1.1/source/drivers/vfio/pci/vfio_pci_dmabuf.c#L297
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
