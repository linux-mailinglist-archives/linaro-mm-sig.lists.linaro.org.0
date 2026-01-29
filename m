Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DtQJC4Q4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:37:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5234F411C2D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:37:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62CE244945
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:37:01 +0000 (UTC)
Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
	by lists.linaro.org (Postfix) with ESMTPS id E1C2F3F722
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jan 2026 21:04:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=fPt2W388;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="p os/8No";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 103.168.172.155 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfhigh.phl.internal (Postfix) with ESMTP id C92D214000FC;
	Thu, 29 Jan 2026 16:04:23 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Thu, 29 Jan 2026 16:04:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1769720663;
	 x=1769807063; bh=vDz61CCGqyTd2ueQYq7Ind9S5sxFgNDCq0qSE3tAvzU=; b=
	fPt2W388vtRo7ayaKEoqhFs1nFhGLnySqwnRo6OoM/EEZd/fl8ntd/4evCdZC1aI
	f6/TjJRJ2BpbC2LOH6WQWR52LbYQ1HY3aVm2/vEOPpZwv3dWwOtk51isBBsT2RKx
	LNvvohjp5uxKSbmqpICRwoShObSm+bg/aVCqYTw4RM6byBHq++20r40LXEt/Vyc1
	t6CNexdpAoKqr8n1hNmIkLBopi48tUlAlFEzriEB22fppAN5DeB1KHIPQZgpcgSE
	x5dTm8jF4zM1HXQbh63LT3ZUa7g1vvLXYUUIBAgzMiMgwyRng8Dbmdj5Mwba2nYU
	L5u8fibgfsKWjpATTDISKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1769720663; x=
	1769807063; bh=vDz61CCGqyTd2ueQYq7Ind9S5sxFgNDCq0qSE3tAvzU=; b=p
	os/8NoQ6cPF2X2PCWiTS5qhdLSdDy6W//1sP/QPIkuUhISM9SdW2winhh11n92IK
	AhSgjdQyRnFh1doClqeddUGgei1ZPKj1uUkksibZFHh+q7QzMtdqkRwS818hkpWj
	M2zrufzlyEsq6E8uRCfvWtlN1ftReS/Ipey7UQKKqQ7ZxRnYL73mwZ64G2q/KBDi
	2r4q69QzY+Mk37qsPd53G0l9Okn/wIj2K/StQUos2qWsBEroLcWuStpngJH3vl6c
	9Pwm3+Ri19Pv1AefbuK3pg0bZg/A17zQwvw/6n3h/i3i+IjiirKBWCoYkp2KVIq8
	BomabllBv20xQNMH4zADw==
X-ME-Sender: <xms:V8t7adYljAD27sU-OoX_zz4fif5AVpRrPitXg9r2Us5heKk0T2BKPQ>
    <xme:V8t7aWTI4P0hgV5dTW5NTniY7OJGE9HarZNkv_x_doxnjdkWADM7pgKWiFeuKqLCo
    jsM4XN4xBbz4jwgNeKdROr40GlMY8IipuT3JZtphZ0zyTkacaqo5g>
X-ME-Received: <xmr:V8t7aUlnr4vVo5Z4KDsEA062hnNDmX7Yu8j0wBWpd8SGL3gBK5XD67zziB4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduieejvddvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfofggtgfgsehtjeertdertddvnecuhfhrohhmpeetlhgvgicu
    hghilhhlihgrmhhsohhnuceorghlvgigsehshhgriigsohhtrdhorhhgqeenucggtffrrg
    htthgvrhhnpedvkeefjeekvdduhfduhfetkedugfduieettedvueekvdehtedvkefgudeg
    veeuueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grlhgvgiesshhhrgiisghothdrohhrghdpnhgspghrtghpthhtohepfeegpdhmohguvgep
    shhmthhpohhuthdprhgtphhtthhopehlvghonheskhgvrhhnvghlrdhorhhgpdhrtghpth
    htohepshhumhhithdrshgvmhifrghlsehlihhnrghrohdrohhrghdprhgtphhtthhopegt
    hhhrihhsthhirghnrdhkohgvnhhighesrghmugdrtghomhdprhgtphhtthhopegrlhgvgi
    grnhguvghrrdguvghutghhvghrsegrmhgurdgtohhmpdhrtghpthhtoheprghirhhlihgv
    ugesghhmrghilhdrtghomhdprhgtphhtthhopehsihhmohhnrgesfhhffihllhdrtghhpd
    hrtghpthhtohepkhhrrgigvghlsehrvgguhhgrthdrtghomhdprhgtphhtthhopegumhhi
    thhrhidrohhsihhpvghnkhhosegtohhllhgrsghorhgrrdgtohhmpdhrtghpthhtohepgh
    hurhgthhgvthgrnhhsihhnghhhsegthhhrohhmihhumhdrohhrgh
X-ME-Proxy: <xmx:V8t7aaLYLymEhWlbSeuIaPww935SeNPDVlZPXlInmQIdXBSdBAcwDg>
    <xmx:V8t7aYo-5ahqoh-lBEhkgQXbAqDJUCbjG7hXS33mHpSjqoZrgBVudA>
    <xmx:V8t7ad49AJLRPkYRKjdo-LZ7okMymbdSAv2VWRVBrvFAi0n38v_8UQ>
    <xmx:V8t7aZZguCwrj-QEN9K87drbl4RRtIgZi6SL_KI98ZeXYNQgWh7Fsg>
    <xmx:V8t7adw0DThKq4gLvaOf3PhP-CEQkYvUwrSMajwQtP6A6ztnNhBE8DKN>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Jan 2026 16:04:20 -0500 (EST)
Date: Thu, 29 Jan 2026 14:04:20 -0700
From: Alex Williamson <alex@shazbot.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260129140420.50d323a3@shazbot.org>
In-Reply-To: <20260124-dmabuf-revoke-v5-7-f98fca917e96@nvidia.com>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
	<20260124-dmabuf-revoke-v5-7-f98fca917e96@nvidia.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GR6QQJ5LHYPOPQPRGXT2W4BBTFSHIMXF
X-Message-ID-Hash: GR6QQJ5LHYPOPQPRGXT2W4BBTFSHIMXF
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:35:55 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.free
 desktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GR6QQJ5LHYPOPQPRGXT2W4BBTFSHIMXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[1843];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,nvidia.com,vger.kernel.org,lists.free,lists.linaro.org,lists.freedesktop.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.891];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[shazbot.org:mid,shazbot.org:email,linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5234F411C2D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, 24 Jan 2026 21:14:19 +0200
Leon Romanovsky <leon@kernel.org> wrote:

> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Till now VFIO has rejected pinned importers, largely to avoid being used
> with the RDMA pinned importer that cannot handle a move_notify() to revoke
> access.
> 
> Using dma_buf_attach_revocable() it can tell the difference between pinned
> importers that support the flow described in dma_buf_invalidate_mappings()
> and those that don't.
> 
> Thus permit compatible pinned importers.
> 
> This is one of two items IOMMUFD requires to remove its private interface
> to VFIO's dma-buf.
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 15 +++------------
>  1 file changed, 3 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> index 485515629fe4..3c8dc56e2238 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> @@ -22,16 +22,6 @@ struct vfio_pci_dma_buf {
>  	u8 revoked : 1;
>  };
>  
> -static int vfio_pci_dma_buf_pin(struct dma_buf_attachment *attachment)
> -{
> -	return -EOPNOTSUPP;
> -}
> -
> -static void vfio_pci_dma_buf_unpin(struct dma_buf_attachment *attachment)
> -{
> -	/* Do nothing */
> -}
> -
>  static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
>  				   struct dma_buf_attachment *attachment)
>  {
> @@ -43,6 +33,9 @@ static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
>  	if (priv->revoked)
>  		return -ENODEV;
>  
> +	if (!dma_buf_attach_revocable(attachment))
> +		return -EOPNOTSUPP;
> +
>  	return 0;
>  }
>  
> @@ -107,8 +100,6 @@ static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
>  }
>  
>  static const struct dma_buf_ops vfio_pci_dmabuf_ops = {
> -	.pin = vfio_pci_dma_buf_pin,
> -	.unpin = vfio_pci_dma_buf_unpin,
>  	.attach = vfio_pci_dma_buf_attach,
>  	.map_dma_buf = vfio_pci_dma_buf_map,
>  	.unmap_dma_buf = vfio_pci_dma_buf_unmap,
> 

I'm not sure what the merge plan is for the remaining patches, but I'll
toss my ack in so that it can all go through Christian's tree if he
prefers.  Thanks

Reviewed-by: Alex Williamson <alex@shazbot.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
