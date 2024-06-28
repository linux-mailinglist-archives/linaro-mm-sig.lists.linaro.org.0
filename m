Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5293E91C532
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 19:52:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4BE6E43D12
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 17:52:22 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 532093F2F7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 17:52:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=FvQxy1Z6;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.45) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42560ef9bcbso440045e9.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 10:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1719597138; x=1720201938; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kxrTIRDs0cwmby7T3ecKxZbdG3OO0xEmvVn6nUvR6Tc=;
        b=FvQxy1Z6NTJQcH9S5EnC3lQPDybIF7iA3gLf+aF5QqJz7YlBhuZubpiHHcA7uo4hFR
         hPQSQs8QKBlEJK1ea48/ZZ7Td8wtmuBdbLSuB8LoWSms5H8K9G4tLLi2XVchAUMAE/Kp
         pD/5BHNWm8Oh0dktFzZ4P6qv9GWiQOsicu6RA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719597138; x=1720201938;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kxrTIRDs0cwmby7T3ecKxZbdG3OO0xEmvVn6nUvR6Tc=;
        b=k3XgFDxSafgzBu5zDEg0Ix3Pat0UsCRomdKRroNsr6nrtqtzBdz2GWRzlRloBNLXjZ
         x3g8xfPUG0IVdxaa69FgTcTOzv6IYw5hFhihU1ULHzo0L10yySIRU5GPTNQzPFeftBe2
         Yq4X5IwRvrVJOa3tOoTn41odb3wfGNw8rdfoCwVk2CfDBxWLrb7Unt6339gfCuLKMd/r
         sp5Clx3O9JR+/gOkfFaXAZGx1c5t/Cv+7n2yTe5Ry7Qd8bw1LJ7f7JH4yhb6X58Wx77A
         YKtx4G6ZiULis2alu5l4vFSIdnerT564PufvVepIs+Di63Y0GkZ5qMLrjJCmLnFuBr82
         wF8A==
X-Forwarded-Encrypted: i=1; AJvYcCVfCWri+fpuKIBM3DNKDwaTEYa9BzeHnPydiHwznvN1nTuhTLSRIfRdW4BcwB5p0pGxGCovTRxRwIEy0Vv51kae3BD/3eRvD4iwvkEbbvE=
X-Gm-Message-State: AOJu0YyaCOtIr80G4YiEIgaVi5qqxeZb5iNb2Db3xutrpMfgru9M0LXF
	0w2kwzIQ7BAbU7P8+A5DJVioid5F+r6JU+zOtTeETzjv+BmuonNFBD0ta77H+q0=
X-Google-Smtp-Source: AGHT+IH0nbVw7WSc3wWGb8JBUniDcdCcc/mkr4847vbGKQfJCgOl6QLUJc7730g84/GHFOvhW/OdQw==
X-Received: by 2002:a05:600c:3c9d:b0:424:8b08:26aa with SMTP id 5b1f17b1804b1-42491783f09mr112182045e9.3.1719597138246;
        Fri, 28 Jun 2024 10:52:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b0c17f1sm44829805e9.44.2024.06.28.10.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 10:52:17 -0700 (PDT)
Date: Fri, 28 Jun 2024 19:52:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thierry Reding <thierry.reding@gmail.com>
Message-ID: <Zn74Tys4eCji2qm0@phenom.ffwll.local>
Mail-Followup-To: Thierry Reding <thierry.reding@gmail.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"mripard@kernel.org" <mripard@kernel.org>,
	Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>,
	"quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>,
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>,
	"sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"jkardatzke@google.com" <jkardatzke@google.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"joakim.bech@linaro.org" <joakim.bech@linaro.org>,
	Youlin Pei =?utf-8?B?KOijtOWPi+aelyk=?= <youlin.pei@mediatek.com>,
	"logang@deltatee.com" <logang@deltatee.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Kuohong Wang =?utf-8?B?KOeOi+Wci+m0uyk=?= <kuohong.wang@mediatek.com>,
	Jianjiao Zeng =?utf-8?B?KOabvuWBpeWnoyk=?= <Jianjiao.Zeng@mediatek.com>,
	"contact@emersion.fr" <contact@emersion.fr>,
	"benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
	"willy@infradead.org" <willy@infradead.org>,
	"pavel@ucw.cz" <pavel@ucw.cz>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"Brian.Starkey@arm.com" <Brian.Starkey@arm.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"tjmercier@google.com" <tjmercier@google.com>,
	"jstultz@google.com" <jstultz@google.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"robin.murphy@arm.com" <robin.murphy@arm.com>,
	Yong Wu =?utf-8?B?KOWQtOWLhyk=?= <Yong.Wu@mediatek.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ppaalanen@gmail.com" <ppaalanen@gmail.com>
References: <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
 <ZnxWWtdShekGSUif@phenom.ffwll.local>
 <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
 <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
 <20240627-impetuous-aboriginal-cougar-cdcbbf@houat>
 <w3xcvakoytubud6dw4wxr6ntbe6uvfrldihnd26vai6uyyto6j@vcq7gizxolag>
 <c96f82e3-bbd6-407e-a71b-3a794a56585b@amd.com>
 <fh37zowioui7hcabzrco7xqxttze2lufijq67wbzylah3e3ry6@ahwnr2rspt3l>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fh37zowioui7hcabzrco7xqxttze2lufijq67wbzylah3e3ry6@ahwnr2rspt3l>
X-Operating-System: Linux phenom 6.8.9-amd64 
X-Rspamd-Queue-Id: 532093F2F7
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,kernel.org,mediatek.com,ffwll.ch,quicinc.com,collabora.com,linaro.org,google.com,deltatee.com,lists.freedesktop.org,emersion.fr,gmail.com,lists.infradead.org,lists.linaro.org,infradead.org,ucw.cz,linux-foundation.org,arm.com,vger.kernel.org];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[ffwll.ch];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WPND7HAI3PF76IDL5TSHCKMVKVA5W7JH
X-Message-ID-Hash: WPND7HAI3PF76IDL5TSHCKMVKVA5W7JH
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "mripard@kernel.org" <mripard@kernel.org>, Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, Youlin Pei =?utf-8?B?KOijtOWPi+aelyk=?= <youlin.pei@mediatek.com>, "logang@deltatee.com" <logang@deltatee.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Kuohong Wang =?utf-8?B?KOeOi+Wci+m0uyk=?= <kuohong.wang@mediatek.com>, Jianjiao Zeng =?utf-8?B?KOabvuWBpeWnoyk=?= <Jianjiao.Zeng@mediatek.com>, "contact@emersion.fr" <contact@emersion.fr>, "
 benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "willy@infradead.org" <willy@infradead.org>, "pavel@ucw.cz" <pavel@ucw.cz>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tjmercier@google.com" <tjmercier@google.com>, "jstultz@google.com" <jstultz@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, Yong Wu =?utf-8?B?KOWQtOWLhyk=?= <Yong.Wu@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WPND7HAI3PF76IDL5TSHCKMVKVA5W7JH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 28, 2024 at 03:57:49PM +0200, Thierry Reding wrote:
> On Fri, Jun 28, 2024 at 02:34:24PM GMT, Christian K=F6nig wrote:
> > Am 28.06.24 um 13:47 schrieb Thierry Reding:
> > > [SNIP]
> > > > > The reason I ask is that encryption here looks just like another =
parameter
> > > > > for the buffer, e.g. like format, stride, tilling etc..
> > > > >=20
> > > > > So instead of this during buffer import:
> > > > >=20
> > > > > mtk_gem->secure =3D (!strncmp(attach->dmabuf->exp_name, "restrict=
ed", 10));
> > > > > mtk_gem->dma_addr =3D sg_dma_address(sg->sgl);
> > > > > mtk_gem->size =3D attach->dmabuf->size;
> > > > > mtk_gem->sg =3D sg;
> > > > >=20
> > > > > You can trivially say during use hey this buffer is encrypted.
> > > > >=20
> > > > > At least that's my 10 mile high view, maybe I'm missing some exte=
nsive key
> > > > > exchange or something like that.
> > > > That doesn't work in all cases, unfortunately.
> > > >=20
> > > > If you're doing secure video playback, the firmware is typically in
> > > > charge of the frame decryption/decoding, and you'd get dma-buf back=
 that
> > > > aren't accessible by the CPU (or at least, not at the execution lev=
el
> > > > Linux runs with).
> > > Can you clarify which firmware you're talking about? Is this secure
> > > firmware, or firmware running on the video decoding hardware?
> > >=20
> > > > So nobody can map that buffer, and the firmware driver is the one w=
ho
> > > > knows that this buffer cannot be accessed by anyone. Putting this o=
n the
> > > > userspace to know would be pretty weird, and wouldn't solve the case
> > > > where the kernel would try to map it.
> > > Doesn't userspace need to know from the start whether it's trying to =
do
> > > secure playback or not? Typically this involves more than just the
> > > decoding part. You'd typically set up things like HDCP as part of the
> > > process, so userspace probably already does know that the buffers bei=
ng
> > > passed around are protected.
> > >=20
> > > Also, the kernel shouldn't really be mapping these buffers unless
> > > explicitly told to. In most cases you also wouldn't want the kernel to
> > > map these kinds of buffers, right? Are there any specific cases where
> > > you expect the kernel to need to map these?
> > >=20
> > > I've been looking at this on the Tegra side recently and the way it
> > > works on these chips is that you basically get an opaque carveout reg=
ion
> > > that has been locked down by secure firmware or early bootloaders, so
> > > only certain hardware blocks can access it. We can allocate from that
> > > carveout and then pass the buffers around.
> > >=20
> > > It may be possible to use these protected carveout regions exclusively
> > > from the DRM/KMS driver and share them with multimedia engines via DM=
A-
> > > BUF, but I've also been looking into perhaps using DMA-BUF heaps to
> > > expose the carveout, which would make this a bit more flexible and al=
low
> > > either userspace to allocate the buffers or have multiple kernel driv=
ers
> > > share the carveout via the DMA-BUF heap. Though the latter would requ=
ire
> > > that there be in-kernel APIs for heaps, so not too sure about that ye=
t.
> >=20
> > Yeah as far as I can see that would be a perfectly valid use case for
> > DMA-Buf heaps.
> >=20
> > One question here: How does the HDCP setup work on Tegra? From your com=
ment
> > I guess you pass most of the information through userspace as well.
>=20
> Well, we don't currently support HDCP at all. I do have proof-of-concept
> patches from a long time ago and, yes, judging by that we'd need to
> control all of this from userspace. The way I imagine that this would
> work is that userspace needs to first set the "Content Protection" and
> "HDCP Content Type" properties and wait for the state change. Once that
> has happened it can go and allocate the protected memory and start
> decoding into it and then scan out from these buffers.

Yeah this is how this is meant to work, because some userspace is happy
with just hdcp, while the buffers are not encrypted/protected, the only
protection is system lockdown with secure boot.

So enable hdcp first, then allocate secure buffers and display them there.
And the hardware needs to make sure that if we ever drop hcpd, the screen
goes black (or encrypted garbage) when trying to display encrypted/secure
buffers.

> > Or is there any info inside the DMA-buf for this? In other words would =
you
> > also need to know if a buffer is then allocated from this special carve=
out?
>=20
> I don't think so. It's possible to scan out an unprotected buffer with
> HDCP enabled. It may also be possible to scan out a protected buffer
> even if HDCP wasn't enabled, though you would obviously want to prevent
> that somehow. Not sure if there's a common way to do this, but I guess
> in end-user devices you'd need a fully trusted boot chain to do that in
> a compliant way.

Where I know how it works it's hardware making that guarantee.

> It's been a long time since I looked at this, but I seem to recall that
> at the time all software that could do DRM-protected playback on Linux
> was proprietary for reasons like these.

Yeah it's still not much better unfortunately :-/
-Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
