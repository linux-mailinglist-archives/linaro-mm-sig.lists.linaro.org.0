Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6845B985CA9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 14:51:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DB3E3F3D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 12:51:45 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by lists.linaro.org (Postfix) with ESMTPS id 163753F3D6
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Sep 2024 12:51:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=jAqhaMwu;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.173 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2f77fe7ccc4so65577671fa.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Sep 2024 05:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727268687; x=1727873487; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LGma69Sr28MXVjXEqnOY6cy8Xe0bfhYxw2mh4o1EehI=;
        b=jAqhaMwu4yn37AdN48nO30tucwXclCg0TrgnuTD4R5inD2QLFOBTQijArmHSGruGiN
         nY8LJsFq1g7dcIMrA6eEKnKxx+xIKSYLZe0dTZOTl7Nk+xIyWrmYpI0f8Q1r7Gpo6KJ0
         hli2nCci6DQtcuY2Jrdg1Djyc8mWhiG9cdDatNSA7V2zlxiGHIE6Z8v0jNVzpzvLTSmK
         1vo3s7tX1VVQL4Qln8tkkBLzul8GwHwHyhsnG2OU05m5pulH6oRnogWpBNf9LJ7A+866
         q2Aa/Y8mshoiLaRfDNrMcbgx/Xi3zii0hZcFjpYHe6bfF9G3opQu66Uc14t1wFxSmjBw
         txGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727268687; x=1727873487;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LGma69Sr28MXVjXEqnOY6cy8Xe0bfhYxw2mh4o1EehI=;
        b=N694P2zprsYv2qAmCb3wwOSHHkKlgjDV7WNYEl4Fyry6ZbqkhUJhhmL4JsD0Vq887E
         sCb1PmN4tnSm+GWpKe+19TZTl3+Ppw1oCeBVJjMefD5wNjQ7gtaTY9HX7ATOWtKSyZL0
         gCzJoa2pBRSOnkc0kmCqDKt+AVbA7MB9IUhll8BuPEO6D2/kwBsn4FYtNBLaWb+9FZWK
         ASb9kRB3YwWh2uSlyf3JIEDrzMbEviYFfXa6InprTfHpBYlLUWJTNRknQPj+LeYMz3Wf
         y+NkKG/+5xIj6nLsHWqF409MmKBYSbrSarjUqkM8NKYgvdfP6ta34a6TLaRiq0Rw/zo8
         6c0A==
X-Forwarded-Encrypted: i=1; AJvYcCVHd7R95Yu6AR1PQtjksBjDfmxzOp0A4NrwuUthbdriEjHgZJdiAoigSC2tTOB5IrwUN+JDnR3o+iX7SpBa@lists.linaro.org
X-Gm-Message-State: AOJu0YzGuPEmULO/FunxfNcl4tH+CuYZ6yP+Zqca2ntpiGzC8JphZ1ek
	rADg+9QPsZGGGKqa51vD/O/JBD/JTX20uNtbCBVlmoQ6FVXU8rzAvyYTzm4Bp1gPFQ==
X-Google-Smtp-Source: AGHT+IEGQnkRVJDhYLTjRbwCd1JcWlry2TnoRPviQ16wlDbXpkXhhkV0VphxcyVjJS5vqRD4q2JN9A==
X-Received: by 2002:a2e:90c3:0:b0:2f6:649e:bf70 with SMTP id 38308e7fff4ca-2f916012799mr14524141fa.26.1727268686577;
        Wed, 25 Sep 2024 05:51:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f8d28998e5sm4935891fa.101.2024.09.25.05.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 05:51:25 -0700 (PDT)
Date: Wed, 25 Sep 2024 15:51:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <lk7a2xuqrctyywuanjwseh5lkcz3soatc2zf3kn3uwc43pdyic@edm3hcd2koas>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
 <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com>
 <mzur3odofwwrdqnystozjgf3qtvb73wqjm6g2vf5dfsqiehaxk@u67fcarhm6ge>
 <e967e382-6cca-4dee-8333-39892d532f71@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e967e382-6cca-4dee-8333-39892d532f71@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 163753F3D6
X-Spamd-Bar: -
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[ti.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	DNSWL_BLOCKED(0.00)[2001:14ba:a0c3:3a00::b8c:received,209.85.208.173:from];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.173:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: SVBFLYZQ6OVD3JKWYFTUNRTT3FWXPUCG
X-Message-ID-Hash: SVBFLYZQ6OVD3JKWYFTUNRTT3FWXPUCG
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SVBFLYZQ6OVD3JKWYFTUNRTT3FWXPUCG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 25, 2024 at 10:51:15AM GMT, Christian K=F6nig wrote:
> Am 25.09.24 um 01:05 schrieb Dmitry Baryshkov:
> > On Tue, Sep 24, 2024 at 01:13:18PM GMT, Andrew Davis wrote:
> > > On 9/23/24 1:33 AM, Dmitry Baryshkov wrote:
> > > > Hi,
> > > >=20
> > > > On Fri, Aug 30, 2024 at 09:03:47AM GMT, Jens Wiklander wrote:
> > > > > Hi,
> > > > >=20
> > > > > This patch set is based on top of Yong Wu's restricted heap patch=
 set [1].
> > > > > It's also a continuation on Olivier's Add dma-buf secure-heap pat=
ch set [2].
> > > > >=20
> > > > > The Linaro restricted heap uses genalloc in the kernel to manage =
the heap
> > > > > carvout. This is a difference from the Mediatek restricted heap w=
hich
> > > > > relies on the secure world to manage the carveout.
> > > > >=20
> > > > > I've tried to adress the comments on [2], but [1] introduces chan=
ges so I'm
> > > > > afraid I've had to skip some comments.
> > > > I know I have raised the same question during LPC (in connection to
> > > > Qualcomm's dma-heap implementation). Is there any reason why we are
> > > > using generic heaps instead of allocating the dma-bufs on the device
> > > > side?
> > > >=20
> > > > In your case you already have TEE device, you can use it to allocat=
e and
> > > > export dma-bufs, which then get imported by the V4L and DRM drivers.
> > > >=20
> > > This goes to the heart of why we have dma-heaps in the first place.
> > > We don't want to burden userspace with having to figure out the right
> > > place to get a dma-buf for a given use-case on a given hardware.
> > > That would be very non-portable, and fail at the core purpose of
> > > a kernel: to abstract hardware specifics away.
> > Unfortunately all proposals to use dma-buf heaps were moving in the
> > described direction: let app select (somehow) from a platform- and
> > vendor- specific list of dma-buf heaps. In the kernel we at least know
> > the platform on which the system is running. Userspace generally doesn't
> > (and shouldn't). As such, it seems better to me to keep the knowledge in
> > the kernel and allow userspace do its job by calling into existing
> > device drivers.
>=20
> The idea of letting the kernel fully abstract away the complexity of inter
> device data exchange is a completely failed design. There has been plenty=
 of
> evidence for that over the years.
>=20
> Because of this in DMA-buf it's an intentional design decision that
> userspace and *not* the kernel decides where and what to allocate from.

Hmm, ok.

>=20
> What the kernel should provide are the necessary information what type of
> memory a device can work with and if certain memory is accessible or not.
> This is the part which is unfortunately still not well defined nor
> implemented at the moment.
>=20
> Apart from that there are a whole bunch of intentional design decision wh=
ich
> should prevent developers to move allocation decision inside the kernel. =
For
> example DMA-buf doesn't know what the content of the buffer is (except for
> it's total size) and which use cases a buffer will be used with.
>=20
> So the question if memory should be exposed through DMA-heaps or a driver
> specific allocator is not a question of abstraction, but rather one of the
> physical location and accessibility of the memory.
>=20
> If the memory is attached to any physical device, e.g. local memory on a
> dGPU, FPGA PCIe BAR, RDMA, camera internal memory etc, then expose the
> memory as device specific allocator.

So, for embedded systems with unified memory all buffers (maybe except
PCIe BARs) should come from DMA-BUF heaps, correct?

>=20
> If the memory is not physically attached to any device, but rather just
> memory attached to the CPU or a system wide memory controller then expose
> the memory as DMA-heap with specific requirements (e.g. certain sized pag=
es,
> contiguous, restricted, encrypted, ...).

Is encrypted / protected a part of the allocation contract or should it
be enforced separately via a call to TEE / SCM / anything else?

--=20
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
