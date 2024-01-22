Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC5C836080
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jan 2024 12:06:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F034940EBD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jan 2024 11:06:19 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 913B23ED39
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jan 2024 11:06:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=sT8RYILN;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=vkoul@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 83F2DB8075F;
	Mon, 22 Jan 2024 11:06:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C865C433C7;
	Mon, 22 Jan 2024 11:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705921570;
	bh=V/MmW1yVoK0TjvFsg0TJRYR3IjhkDr66kgUMy4s5icQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sT8RYILNkg7DURq+DonPfOgYKWZzT9z1t7mKh5x8C8ZtDBgG2Ac0So6ocPeViznQk
	 +b371knvzEQWiydLKI1rfHATW4gAcoP59HbiRavhYPxlUmUDhWQYFGir8/FVGINZd4
	 4pbOy4f0jZXJrLq+pJ3U/hqDcEQirBEh7ORQTHlbVbDWuK1Bz5xSiDRJ61ytOBjCy+
	 MIKGPKdVLBk54rOk1kK1ZfjKmuXIlY6qfkGds5xNN06kmh+7o/uJaxX7pptL30KyeJ
	 KtePRH0INjn0SKiK3esQsx8GBl9w/Z8ZG+lbA3GAdrOUfJSnUjJhBs97oG+pTIzNU4
	 jhoAF4LEG4IIA==
Date: Mon, 22 Jan 2024 16:36:06 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <Za5MHkzSjyVUoytI@matsya>
References: <20231219175009.65482-1-paul@crapouillou.net>
 <20231219175009.65482-4-paul@crapouillou.net>
 <ZYRWbROAuMXftH07@matsya>
 <86a30af0db2232bd473a38cd001342156cd4012e.camel@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86a30af0db2232bd473a38cd001342156cd4012e.camel@crapouillou.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 913B23ED39
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,linaro.org,amd.com,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: T56VV4NC2BF2DX5KXHVQ4PE7JOS2SXBV
X-Message-ID-Hash: T56VV4NC2BF2DX5KXHVQ4PE7JOS2SXBV
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 3/8] dmaengine: Add API function dmaengine_prep_slave_dma_vec()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T56VV4NC2BF2DX5KXHVQ4PE7JOS2SXBV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul,


On 08-01-24, 13:20, Paul Cercueil wrote:
> Hi Vinod,
>=20
> Le jeudi 21 d=E9cembre 2023 =E0 20:44 +0530, Vinod Koul a =E9crit=A0:
> > On 19-12-23, 18:50, Paul Cercueil wrote:
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
> > > ---
> > > =A0include/linux/dmaengine.h | 25 +++++++++++++++++++++++++
> > > =A01 file changed, 25 insertions(+)
> > >=20
> > > diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
> > > index 3df70d6131c8..ee5931ddb42f 100644
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
>=20
> I don't want to be pushy, but I'd like to know how to solve this now,
> otherwise I'll just send the same patches for my v6.
>=20
> > so you want to transfer multiple buffers, right? why not use
> > dmaengine_prep_slave_sg(). If there is reason for not using that one?
>=20
> The reason is that we want to have the possibility to transfer less
> than the total size of the scatterlist, and that's currently very hard
> to do - scatterlists were designed to not be tampered with.
>=20
> Christian K=F6nig then suggested to introduce a "dma_vec" which had been
> on his TODO list for a while now.

Yeah for this interleaved seems overkill. Lets go with this api. I would
suggest change the name of the API replacing slave with peripheral
though

--=20
~Vinod
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
