Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKD+EusP4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:35:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DA1411BDD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:35:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFED743CE5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:35:53 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id C644C3F786
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jan 2026 20:38:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=2v2Ma2cR;
	spf=pass (lists.linaro.org: domain of praan@google.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=praan@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a76b39587aso2615ad.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jan 2026 12:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769459934; x=1770064734; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=heQW4XXGxVNpbsMWtr+Uf/Qjg2mRHLgzAq6EBq5z5Gc=;
        b=2v2Ma2cRqhLvtXl787yKvKX4i1xOT2lLiu5xbBfZvJyZwftW73epoPBxS0XQ9QvOQN
         PasOJhUa+otQ+JE+anm6+eAG9fg0mp8JhN1XKhgl36arIv/0oJ+6PoBGElgh12yqimyL
         NLzl7tHM9hQP/NdaRsB8ir1d8qPD2QXnhlijkw9ZeUlVe/oJyJVFpTMRhi2M4U99M33Z
         iEl+UfafDhWdXnnpNI6n38NySjzFBFG/G4pUJ0wMTqOZZ4yYADohowdrpUTJgA0s2ZC9
         70zP4bv6RVzATOK2oBv1Fe97hk0k9ZgRU4Km/KS22juWRVXn1jOs9hi8efIhoMpf0AG9
         zYdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769459934; x=1770064734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=heQW4XXGxVNpbsMWtr+Uf/Qjg2mRHLgzAq6EBq5z5Gc=;
        b=AswHZ8kn947pgC0BkL+IUn6q6JJMoyQFeXgwWbg03oAP2YNvTcUOrkSHGklEBAdQcX
         teh9ppXyMQyuDx9xJRlJLkr/LuEcUa3+qEA4IUNISL+zg8E2OP9e3XkKwuLHE0DUvvJY
         LX++3rn0pkZfTy+lQnEhFfhIfq84OmkmMd0DeYLs1VoN8xoHQOksTtJm/fRIXCK9d7KN
         yWAWcjYd9qOqMQfQeJeRo8C2PWSUUWM0LCTdy3KJfK9NZsBwZ6tuNmqTjVPKTByzzCUc
         r79Q1dOBtPLZic883NhvTRj9ffUMQ0OL0fpwYzKoYZxQDs3T0/kbyr5eVP/bnfju229l
         2QQw==
X-Forwarded-Encrypted: i=1; AJvYcCUggugzuoGQ/AAsGSrSaaW9O9g1m7quxwNWFpwN6JmElSDumDyhrF0t6nVb93AqbT5/WUZpnivKALktdTvx@lists.linaro.org
X-Gm-Message-State: AOJu0YyWKnOb533cfqUgZCpJm+8XOuEnv/uUCrPiblnZa4hKSzcnzDBf
	qfLG6p22n/M2jvSQ49oPpOdECQBrv5jnmxz/zzWo+7UTwUxT49hGzmKqp3TiRRUnAQ==
X-Gm-Gg: AZuq6aLIlD0GOHsEzfuc0cfydfSNkCuGl9QdXdLleRrN+i5FOSffcCRs/wkJf0LJAj7
	7vD/GxkO1POuYE/C1lrzvkHw3Ysas1ZzOsgndaoXn94KvHZxaMbb4SMd13WCIApA8f/zgqUryrG
	ClDm+oqsWOh9/I8imXC6OpuHkpi8ymEJTm3m4qacJcim+jRBy9QobwZC7d3036RA/GZT9K9XN3v
	aZ6Svff3+iCJSeSztKhj8JYrBQGXqzHbZwTgtrD2PqCLMsx+YzHm3lL9V+a+LeZVYHrOiRqVdmu
	k6cGGM9Z4YGIkCawffM/0d4jWkYuUEVTkOyFOstgesQn+9WqR7v4LQM199pnatbMwL50U7IBH8N
	59uiE+jYti1EpjZ2PpkrxvUaeLAVhvw5vWrOQs4tfQvSGtxX186b3oiCRdgf1Wme+i6FAnxCZwk
	c/RDG9mNqsV4+W5nVeFb6+aPguh9p80+lLBrZuUSQYahCq9P7g
X-Received: by 2002:a17:903:32d2:b0:2a7:7f07:340e with SMTP id d9443c01a7336-2a844901809mr3288195ad.4.1769459933510;
        Mon, 26 Jan 2026 12:38:53 -0800 (PST)
Received: from google.com (222.245.187.35.bc.googleusercontent.com. [35.187.245.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802fdce1fsm94536115ad.101.2026.01.26.12.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 12:38:53 -0800 (PST)
Date: Mon, 26 Jan 2026 20:38:44 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <aXfQ1LFNDUrfeuHf@google.com>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-6-f98fca917e96@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260124-dmabuf-revoke-v5-6-f98fca917e96@nvidia.com>
X-Spamd-Bar: ----
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: THV6DNB6ZXOVOWPT74FYH4SV5U22FWWV
X-Message-ID-Hash: THV6DNB6ZXOVOWPT74FYH4SV5U22FWWV
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:35:52 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-med
 ia@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 6/8] dma-buf: Add dma_buf_attach_revocable()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/THV6DNB6ZXOVOWPT74FYH4SV5U22FWWV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	DATE_IN_PAST(1.00)[1915];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[35];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.937];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: D7DA1411BDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Leon,

On Sat, Jan 24, 2026 at 09:14:18PM +0200, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Some exporters need a flow to synchronously revoke access to the DMA-buf
> by importers. Once revoke is completed the importer is not permitted to
> touch the memory otherwise they may get IOMMU faults, AERs, or worse.
> 
> DMA-buf today defines a revoke flow, for both pinned and dynamic
> importers, which is broadly:
> 
> 	dma_resv_lock(dmabuf->resv, NULL);
> 	// Prevent new mappings from being established
> 	priv->revoked = true;
> 
> 	// Tell all importers to eventually unmap
> 	dma_buf_invalidate_mappings(dmabuf);
> 
> 	// Wait for any inprogress fences on the old mapping
> 	dma_resv_wait_timeout(dmabuf->resv,
> 			      DMA_RESV_USAGE_BOOKKEEP, false,
> 			      MAX_SCHEDULE_TIMEOUT);
> 	dma_resv_unlock(dmabuf->resv, NULL);
> 
> 	// Wait for all importers to complete unmap
> 	wait_for_completion(&priv->unmapped_comp);
> 
> This works well, and an importer that continues to access the DMA-buf
> after unmapping it is very buggy.
> 
> However, the final wait for unmap is effectively unbounded. Several
> importers do not support invalidate_mappings() at all and won't unmap
> until userspace triggers it.
> 
> This unbounded wait is not suitable for exporters like VFIO and RDMA tha
> need to issue revoke as part of their normal operations.
> 
> Add dma_buf_attach_revocable() to allow exporters to determine the
> difference between importers that can complete the above in bounded time,
> and those that can't. It can be called inside the exporter's attach op to
> reject incompatible importers.
> 
> Document these details about how dma_buf_invalidate_mappings() works and
> what the required sequence is to achieve a full revocation.
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/dma-buf/dma-buf.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++-
>  include/linux/dma-buf.h   |  9 +++------
>  2 files changed, 50 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 1629312d364a..f0e05227bda8 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -1242,13 +1242,59 @@ void dma_buf_unmap_attachment_unlocked(struct dma_buf_attachment *attach,
>  }
>  EXPORT_SYMBOL_NS_GPL(dma_buf_unmap_attachment_unlocked, "DMA_BUF");
>  
> +/**
> + * dma_buf_attach_revocable - check if a DMA-buf importer implements
> + * revoke semantics.
> + * @attach: the DMA-buf attachment to check
> + *
> + * Returns true if the DMA-buf importer can support the revoke sequence
> + * explained in dma_buf_invalidate_mappings() within bounded time. Meaning the
> + * importer implements invalidate_mappings() and ensures that unmap is called as
> + * a result.
> + */
> +bool dma_buf_attach_revocable(struct dma_buf_attachment *attach)
> +{
> +	return attach->importer_ops &&
> +	       attach->importer_ops->invalidate_mappings;
> +}
> +EXPORT_SYMBOL_NS_GPL(dma_buf_attach_revocable, "DMA_BUF");
> +

I noticed that Patch 5 removes the invalidate_mappings stub from 
umem_dmabuf.c, effectively making the callback NULL for an RDMA 
importer. Consequently, dma_buf_attach_revocable() (introduced here)
will return false for these importers.

Since the cover letter mentions that VFIO will use
dma_buf_attach_revocable() to prevent unbounded waits, this appears to
effectively block paths like the VFIO-export -> RDMA-import path..

Given that RDMA is a significant consumer of dma-bufs, are there plans
to implement proper revocation support in the IB/RDMA core (umem_dmabuf)? 

It would be good to know if there's a plan for bringing such importers
into compliance with the new revocation semantics so they can interop
with VFIO OR are we completely ruling out users like RDMA / IB importing
any DMABUFs exported by VFIO?

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
