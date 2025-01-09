Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 654E9A07173
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 10:28:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69F5144966
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 09:28:34 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id BA2F143F17
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jan 2025 09:28:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XxSyn6Ok;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E243BA41301;
	Thu,  9 Jan 2025 09:26:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 807A9C4CED2;
	Thu,  9 Jan 2025 09:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736414908;
	bh=cm/GOqwwiMkALA/fEFsX5hEEy5V6SjOqxswcdV/STbM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XxSyn6OkLmGCUGT46Xejk0oVc9wYD6k8fTUvHOcwReKi7cu6apM1Vv1rk43TPDSbX
	 7sksEqWG8naX3qZ+x3+Ac6FeG0lmDUVJPikfxBnc5gug7Hx8qjQxIgvULeiBnFWXuj
	 SM8vT7SquKvEx0eHIPKAsmANxGan3rbJGW9vVoaVZqc3tkai/PWNcix/6rQRChz9Nb
	 2KoIvEiL7LeXPhq2jWy/Yhkp7s+tJ3Ly3EX1EZxh9Cs3SAjKPyzxFcQ05qLBYB3Y2W
	 yr50Zso/lxP8NEHsbimRm8FzQti0ZSbgPIyYUmWNhduiWnACP6D+kuhmH+FRBFL4ZS
	 onQxs8GNPbFsw==
Date: Thu, 9 Jan 2025 11:28:23 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20250109092823.GI87447@unreal>
References: <20250107142719.179636-1-yilun.xu@linux.intel.com>
 <20250107142719.179636-2-yilun.xu@linux.intel.com>
 <b1f3c179-31a9-4592-a35b-b96d2e8e8261@amd.com>
 <20250108132358.GP5556@nvidia.com>
 <f3748173-2bbc-43fa-b62e-72e778999764@amd.com>
 <20250108145843.GR5556@nvidia.com>
 <5a858e00-6fea-4a7a-93be-f23b66e00835@amd.com>
 <20250108162227.GT5556@nvidia.com>
 <0e7f92bd-7da3-4328-9081-0957b3d155ca@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e7f92bd-7da3-4328-9081-0957b3d155ca@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BA2F143F17
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.98%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: OOICOCJUCU7XVH23QUKOA7R2BFXAWEJX
X-Message-ID-Hash: OOICOCJUCU7XVH23QUKOA7R2BFXAWEJX
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Christoph Hellwig <hch@lst.de>, Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OOICOCJUCU7XVH23QUKOA7R2BFXAWEJX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 09, 2025 at 10:10:01AM +0100, Christian K=F6nig wrote:
> Am 08.01.25 um 17:22 schrieb Jason Gunthorpe:
> > [SNIP]
> > > > For P2P cases we are going toward (PFN + P2P source information) as
> > > > input to the DMA API. The additional "P2P source information" provi=
des
> > > > a good way for co-operating drivers to represent private address
> > > > spaces as well. Both importer and exporter can have full understand=
ing
> > > > what is being mapped and do the correct things, safely.
> > > I can say from experience that this is clearly not going to work for =
all use
> > > cases.
> > >=20
> > > It would mean that we have to pull a massive amount of driver specific
> > > functionality into the DMA API.
> > That isn't what I mean. There are two distinct parts, the means to
> > describe the source (PFN + P2P source information) that is compatible
> > with the DMA API, and the DMA API itself that works with a few general
> > P2P source information types.
> >=20
> > Private source information would be detected by co-operating drivers
> > and go down driver private paths. It would be rejected by other
> > drivers. This broadly follows how the new API is working.
> >=20
> > So here I mean you can use the same PFN + Source API between importer
> > and exporter and the importer can simply detect the special source and
> > do the private stuff. It is not shifting things under the DMA API, it
> > is building along side it using compatible design approaches. You
> > would match the source information, cast it to a driver structure, do
> > whatever driver math is needed to compute the local DMA address and
> > then write it to the device. Nothing is hard or "not going to work"
> > here.
>=20
> Well to be honest that sounds like an absolutely horrible design.
>=20
> You are moving all responsibilities for inter driver handling into the
> drivers themselves without any supervision by the core OS.
>=20
> Drivers are notoriously buggy and should absolutely not do things like th=
at
> on their own.

IMHO, you and Jason give different meaning to word "driver" in this
discussion. It is upto to the subsystems to decide how to provide new
API to the end drivers. Worth to read this LWN article first.

Dancing the DMA two-step - https://lwn.net/Articles/997563/

>=20
> Do you have pointers to this new API?

Latest version is here - https://lore.kernel.org/all/cover.1734436840.git.l=
eon@kernel.org/
Unfortunately, I forgot to copy/paste cover letter but it can be seen in
previous version https://lore.kernel.org/all/cover.1733398913.git.leon@kern=
el.org/.

The most complex example is block layer implementation which hides DMA API =
from
block drivers. https://lore.kernel.org/all/cover.1730037261.git.leon@kernel=
.org/

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
