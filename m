Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB18589AF86
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Apr 2024 10:19:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 557CA3F4E0
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Apr 2024 08:19:08 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 891983F4E0
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Apr 2024 08:19:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bQL45DWu;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=vkoul@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1FF9E60BB5;
	Sun,  7 Apr 2024 08:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F29BC433F1;
	Sun,  7 Apr 2024 08:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712477945;
	bh=e9UXYTAc5sFI75CK5XgqAQXmOoDPNUpaUP0KGJszuPQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bQL45DWu0HxJomMb0clRFnENNm4bArAijal3EZ3qTPml9cdTdnQD/Jv+nZ6r4estn
	 tdFm3p3nVi1vJ7RNY79r2A213/2M8AZsb3FfhENk6Agglm3lvLZmkpgMrH5L3HWAuU
	 1mdfJp57B03c6ql4jqZ4OM6opBEQZTdC85Czud6bGKKwlGvmwv3roxGCrb88TvH02/
	 TPIjgoqyRoHs4zvdtsgjgaUksKCcFJEmaIFG1lDVXc4m8ISrskkrOi2Hn/iIHyNQtI
	 JNoPhQ3FBDp0yzYfHuEd/7iNzyF1QjxWLZZwhc+321A+Kax/Gni7nVcjqHjoPfQVAD
	 +9J6be2H9OZHg==
Date: Sun, 7 Apr 2024 13:49:00 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <ZhJW9JEqN2wrejvC@matsya>
References: <20240310124836.31863-1-paul@crapouillou.net>
 <20240310124836.31863-2-paul@crapouillou.net>
 <ZgUM1LFEWs3lwoAU@matsya>
 <599394c0220079b7b42dc732be817ca8a1eb4214.camel@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <599394c0220079b7b42dc732be817ca8a1eb4214.camel@crapouillou.net>
X-Rspamd-Queue-Id: 891983F4E0
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QEITNZMWCSLVG2UYRKU45MGMHWR5Z7H4
X-Message-ID-Hash: QEITNZMWCSLVG2UYRKU45MGMHWR5Z7H4
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Nuno Sa <nuno.sa@analog.com>, Michael Hennerich <michael.hennerich@analog.com>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 1/6] dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QEITNZMWCSLVG2UYRKU45MGMHWR5Z7H4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On 02-04-24, 13:31, Paul Cercueil wrote:
> Hi Vinod,
>=20
> Le jeudi 28 mars 2024 =E0 11:53 +0530, Vinod Koul a =E9crit=A0:
> > On 10-03-24, 13:48, Paul Cercueil wrote:
> > > This function can be used to initiate a scatter-gather DMA
> > > transfer,
> > > where the address and size of each segment is located in one entry
> > > of
> > > the dma_vec array.
> > >=20
> > > The major difference with dmaengine_prep_slave_sg() is that it
> > > supports
> > > specifying the lengths of each DMA transfer; as trying to override
> > > the
> > > length of the transfer with dmaengine_prep_slave_sg() is a very
> > > tedious
> > > process. The introduction of a new API function is also justified
> > > by the
> > > fact that scatterlists are on their way out.
> > >=20
> > > Note that dmaengine_prep_interleaved_dma() is not helpful either in
> > > that
> > > case, as it assumes that the address of each segment will be higher
> > > than
> > > the one of the previous segment, which we just cannot guarantee in
> > > case
> > > of a scatter-gather transfer.
> > >=20
> > > Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> > > Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> > >=20
> > > ---
> > > v3: New patch
> > >=20
> > > v5: Replace with function dmaengine_prep_slave_dma_vec(), and
> > > struct
> > > =A0=A0=A0 'dma_vec'.
> > > =A0=A0=A0 Note that at some point we will need to support cyclic
> > > transfers
> > > =A0=A0=A0 using dmaengine_prep_slave_dma_vec(). Maybe with a new "fla=
gs"
> > > =A0=A0=A0 parameter to the function?
> > >=20
> > > v7:
> > > =A0 - Renamed *device_prep_slave_dma_vec() ->
> > > device_prep_peripheral_dma_vec();
> > > =A0 - Added a new flag parameter to the function as agreed between
> > > Paul
> > > =A0=A0=A0 and Vinod. I renamed the first parameter to prep_flags as i=
t's
> > > supposed to
> > > =A0=A0=A0 be used (I think) with enum dma_ctrl_flags. I'm not really =
sure
> > > how that API
> > > =A0=A0=A0 can grow but I was thinking in just having a bool cyclic
> > > parameter (as the
> > > =A0=A0=A0 first intention of the flags is to support cyclic transfers)
> > > but ended up
> > > =A0=A0=A0 "respecting" the previously agreed approach.
> > > ---
> > > =A0include/linux/dmaengine.h | 27 +++++++++++++++++++++++++++
> > > =A01 file changed, 27 insertions(+)
> > >=20
> > > diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
> > > index 752dbde4cec1..856df8cd9a4e 100644
> > > --- a/include/linux/dmaengine.h
> > > +++ b/include/linux/dmaengine.h
> > > @@ -160,6 +160,16 @@ struct dma_interleaved_template {
> > > =A0	struct data_chunk sgl[];
> > > =A0};
> > > =A0
> > > +/**
> > > + * struct dma_vec - DMA vector
> > > + * @addr: Bus address of the start of the vector
> > > + * @len: Length in bytes of the DMA vector
> > > + */
> > > +struct dma_vec {
> > > +	dma_addr_t addr;
> > > +	size_t len;
> > > +};
> > > +
> > > =A0/**
> > > =A0 * enum dma_ctrl_flags - DMA flags to augment operation
> > > preparation,
> > > =A0 *=A0 control completion, and communicate status.
> > > @@ -910,6 +920,10 @@ struct dma_device {
> > > =A0	struct dma_async_tx_descriptor
> > > *(*device_prep_dma_interrupt)(
> > > =A0		struct dma_chan *chan, unsigned long flags);
> > > =A0
> > > +	struct dma_async_tx_descriptor
> > > *(*device_prep_peripheral_dma_vec)(
> > > +		struct dma_chan *chan, const struct dma_vec *vecs,
> > > +		size_t nents, enum dma_transfer_direction
> > > direction,
> > > +		unsigned long prep_flags, unsigned long flags);
> > > =A0	struct dma_async_tx_descriptor *(*device_prep_slave_sg)(
> > > =A0		struct dma_chan *chan, struct scatterlist *sgl,
> > > =A0		unsigned int sg_len, enum dma_transfer_direction
> > > direction,
> > > @@ -973,6 +987,19 @@ static inline struct dma_async_tx_descriptor
> > > *dmaengine_prep_slave_single(
> > > =A0						=A0 dir, flags,
> > > NULL);
> > > =A0}
> > > =A0
> > > +static inline struct dma_async_tx_descriptor
> > > *dmaengine_prep_peripheral_dma_vec(
> > > +	struct dma_chan *chan, const struct dma_vec *vecs, size_t
> > > nents,
> > > +	enum dma_transfer_direction dir, unsigned long prep_flags,
> > > +	unsigned long flags)
> > > +{
> > > +	if (!chan || !chan->device || !chan->device-
> > > >device_prep_peripheral_dma_vec)
> > > +		return NULL;
> > > +
> > > +	return chan->device->device_prep_peripheral_dma_vec(chan,
> > > vecs, nents,
> > > +							=A0=A0=A0 dir,
> > > prep_flags,
> > > +							=A0=A0=A0
> > > flags);
> > > +}
> >=20
> > API looks good to me, thanks
> > Few nits though:
> > - Can we add kernel-doc for this new API please
> > - Also update the documentation adding this new api
> > - Lastly, we seem to have two flags, I know you have added a comment
> > but
> > =A0 I dont seem to recall the discussion (looked at old threads for
> > clue
> > =A0 as well), can you please remind me why we need both? And in your
> > case,
> > =A0 what is the intended usage of these flags, i would prefer single
> > =A0 clean one...
> >=20
>=20
> The "prep_flags" is a mask of "enum dma_ctrl_flags".
>=20
> The second "flags" was supposed to be specific to this function, and
> was to future-proof the API as we eventually want to have a "cyclic"
> flag, which would emulate a cyclic transfer by linking the SG hardware
> descriptors accordingly.
>=20
> However - I think we can already do that with DMA_PREP_REPEAT and
> DMA_PREP_LOAD_EOT, right? So we can probably drop the second "flags".

Yeah that could be done, we should add Documentation to clarify this

--=20
~Vinod
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
