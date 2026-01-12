Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B3330D13464
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 15:47:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B983F4015F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 14:47:28 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B276E3F6E7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 14:47:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Ja8gTeB5;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2BCDE4325F;
	Mon, 12 Jan 2026 14:47:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51CD3C16AAE;
	Mon, 12 Jan 2026 14:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768229242;
	bh=vBh5+7wjLDHMjWPyGtwhZ1my9Rro606jkpR3pcAw3YI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ja8gTeB5MahdT23MVQBoYgJrO93p0hWyv5JUUGX3QoI1ZyxeX/ep04GYPubefUxwp
	 DMTeCAoAa1NUMi76WVlvlfE+etWgXgDk1LndNWRrIjc1aXJ4yKFCO1GeZMEdP0m/ss
	 AILsKaV4OzNnTChZErOf3yuzDXtWW46O3nFPP2zX8Ff+9jJtcDXRJUIaWqkcYwv4J/
	 uOZQiQOkE++PZ+zT3bjIPNUzaUwYARCc70pOwFp3BPEFVg6Bfm3lAPYIIMqUFGmpyV
	 9pqcSJ1cNiFX50QSWtbg0Jwatt7FBCV+NFw9WPxt2vlizh6kK1aGeeUlP6ItpIpjyh
	 p0nS0bUoEr/jA==
Date: Mon, 12 Jan 2026 16:47:16 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20260112144716.GA179508@unreal>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
 <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
 <20260112121956.GE14378@unreal>
 <2db90323-9ddc-4408-9074-b44d9178bc68@amd.com>
 <20260112141440.GE745888@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112141440.GE745888@ziepe.ca>
X-Rspamd-Queue-Id: B276E3F6E7
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[sea.source.kernel.org:helo,sea.source.kernel.org:rdns,unreal:mid];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZBYULRU7QMY3GLPWJRY3VQWHNLPSTUUE
X-Message-ID-Hash: ZBYULRU7QMY3GLPWJRY3VQWHNLPSTUUE
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Williamson <alex@shazbot.org>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZBYULRU7QMY3GLPWJRY3VQWHNLPSTUUE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 10:14:40AM -0400, Jason Gunthorpe wrote:
> On Mon, Jan 12, 2026 at 01:57:25PM +0100, Christian K=F6nig wrote:
> > Clear NAK to that plan. This is not something DMA-buf should need to
> > deal with and as far as I can see is incompatible with the UAPI.
>=20
> We had this discussion with Simona and you a while back and there was
> a pretty clear direction we needed to add a revoke to sit inbetween
> pin and move. I think Leon has no quite got the "dmabuf lingo" down
> right to explain this.
>=20
>  https://lore.kernel.org/dri-devel/Z4Z4NKqVG2Vbv98Q@phenom.ffwll.local/

<...>

> It is not intended to be UAPI changing, and Leon is not trying to say
> that importers have to drop their attachment. The attachment just
> becomes permanently non-present.

Leon also ensures that no UAPI semantic changes are introduced here; the
existing interface is simply extended.

Thanks

>=20
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
