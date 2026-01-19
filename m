Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA53D3A0ED
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 09:04:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35AD83F9D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 08:04:17 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 52D9B3F74E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 08:04:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BDgV12G7;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A2E816014E;
	Mon, 19 Jan 2026 08:04:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C7CAC116C6;
	Mon, 19 Jan 2026 08:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768809850;
	bh=HRBEt4RF/jLlwOJnYEYMNWDtdCxSUN5YasBH6jxxKIg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BDgV12G7l5a1sp8yv1MAiOTY/L1jkmyTQZGAh3jpU9VjkGMv9/T3jgHh2lE5LuXTK
	 Q0XiE0/v6mTCIL++UG0OUkE3zwpNkiDWjOwRxhFFIi2wh+H4hSil6YHS5SELsgqCDn
	 WeDdVnUzfPkFP37afqzkaFH2kBs5cZ3OkLmqvQ8WC6xPHnyiZoM6tCbAr4Rpggc7r2
	 +twjbWsZJSrJk1zeM7aeq7DGnmBtEQc4wcipZGljnLygNxxBENIhR7XiKP9tHHgxTC
	 bG2/CJQU8uA+pwflgnBuItu8+MXhQXRs68HQNRr/vZQQeXMAP3G3vwl+sklL/3KSsp
	 iWYoOtPON0K+w==
Date: Mon, 19 Jan 2026 10:04:04 +0200
From: Leon Romanovsky <leon@kernel.org>
To: John Hubbard <jhubbard@nvidia.com>
Message-ID: <20260119080404.GF13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
 <d41d08e3-6a86-40a4-925c-6a3172670079@nvidia.com>
 <20260119072524.GD13201@unreal>
 <3380a80a-7574-4dbf-87cb-0735fb20cd15@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3380a80a-7574-4dbf-87cb-0735fb20cd15@nvidia.com>
X-Rspamd-Queue-Id: 52D9B3F74E
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[32];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HBINRE2GUHRMJUOSVPEZNWS6QB335DKQ
X-Message-ID-Hash: HBINRE2GUHRMJUOSVPEZNWS6QB335DKQ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualiz
 ation@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HBINRE2GUHRMJUOSVPEZNWS6QB335DKQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Jan 18, 2026 at 11:32:20PM -0800, John Hubbard wrote:
> On 1/18/26 11:25 PM, Leon Romanovsky wrote:
> > On Sun, Jan 18, 2026 at 01:40:11PM -0800, John Hubbard wrote:
> > > On 1/18/26 4:08 AM, Leon Romanovsky wrote:
> > > > From: Leon Romanovsky <leonro@nvidia.com>
> > > ...
> > > > +/**
> > > > + * dma_buf_attachment_is_revoke - check if a DMA-buf importer implements
> > > > + * revoke semantics.
> > > > + * @attach: the DMA-buf attachment to check
> > > > + *
> > > > + * Returns true if DMA-buf importer honors revoke semantics, which is
> > > > + * negotiated with the exporter, by making sure that importer implements
> > > > + * .invalidate_mappings() callback and calls to dma_buf_pin() after
> > > > + * DMA-buf attach.
> > > > + */
> > > > +static inline bool
> > > > +dma_buf_attachment_is_revoke(struct dma_buf_attachment *attach)
> > > 
> > > Maybe a slight rename, to dma_buf_attachment_is_revocable()?
> > 
> > I can do that. The issue is that even "dma_buf_attachment_is_revoke"
> > is already too long. :)
> > 
> 
> If you're really pressed for space for some reason,

Mainly aesthetics.

> maybe dma_buf_attach_revocable() ?
> 
> Just trying to hang on to the "revocable" part of the name, as
> I think it's an improvement.

Sure

> 
> thanks,
> -- 
> John Hubbard
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
