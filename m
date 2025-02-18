Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCC5A3A28B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 17:22:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63EE544AED
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 16:22:30 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by lists.linaro.org (Postfix) with ESMTPS id 85F0442501
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 16:22:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=BLp5SbGj;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.222.172 as permitted sender) smtp.mailfrom=daniel@fooishbar.org
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7c04df48a5bso484572085a.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 08:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1739895743; x=1740500543; darn=lists.linaro.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KjXMgQyDFOilO3Xu47Ib173LdeZX8gmPYDyKndrcKnk=;
        b=BLp5SbGjfKsuZ7rBQzYczbJcj6wC0yq6c2qkf3jWJhi3prM8ufOOnG1yy7iMnMsvnI
         Ch5FzJoBK64l59U8ATPxIKjp39oBZ9AZTBKsM2GRuXy8tpFMQfjLLZWhSrudPIJ3Q8f6
         WJKiCOlLjs/4JzbLsrpISZ/h67jiBGSzwm035/p9+00zQq4ZeK1/tZ63hjcuRrrq2MQd
         CbthqrNm0XL5emsSslczSDv1Et3X4ZL0byapzyGpDCmrm1mtJOuXiQskEl7qMUQHbZpn
         8LAgsRFDWWAXY3r5hdmvvVDDTsfwDb2QyLc3DbA3bB8mvkX4XIZQ+HwNizQ/F0JgzKvD
         sSqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739895743; x=1740500543;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KjXMgQyDFOilO3Xu47Ib173LdeZX8gmPYDyKndrcKnk=;
        b=HjpmBpMgqaqqZpfkhWimL5nspeXfsyhrOFPqO4NCXSNk/qCQPdxY74nOBZbzjNcvxW
         sTaHd4AhOiSE/a5g4J0iDfx4pwhdApNNFO7UH6ueOAXjOj5nC0+FP2pDp0uBvmpp4QJA
         uck5Rz/UNNGH+IAPq3gOI9CgzNWOzU/MpvM0ziuJeYOLqlrr6ACGMz3Fc2MtfkjiKk5U
         qT3CY0xtuuPGHSoK019dXlcdUgeJDKAIFECkvEp8XOZ+Q4ofW96l67Keo1TqLwNlQd6t
         dOHQuBwXteoAB5VQpyhCHdCxz5uVutKqcUJBw9OyhY7jFGmpgAqpbhaLRHU8X/RuoDOV
         rIBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXH4TLB1MAXLGQlb2XnUbxCo/6zq351RHyhBpJMT20zCqQnhXFTC6Cew+Cj0pVgd2xtsOpCmL1wssSxNJVk@lists.linaro.org
X-Gm-Message-State: AOJu0YzA95uxZNNzgsl1HFgKF4Ub0LP3vqE3V4PlESY0+xoYswHuueb4
	C+ULG/Z/juAXtaDTHu35agy5+cKAeF6MoxaE+8fHQof6QUyEZH3DAfb9QUgqjDyt6ZpIEACNmxH
	OUk22OwrzXylKsZ1G58JhAqMWhOjMi/egEM2Rzg==
X-Gm-Gg: ASbGncskEOdr8k6ny3CRPb8trlSMU9pzwyD1hnhhshkx0iKR2P4Pr0DjA613TA1Burr
	9ffGNjcadXDiTleG0m4XyLjfE6zM6ypIlcapItRAJtxwRqPBh6Jzj5tBGrZCng80h8ZQnsw==
X-Google-Smtp-Source: AGHT+IEbV3293ASWpwU6KwIQOOU1vJS5NgcKsmd6eL12KHdOz9KO5J5HKfrJx309aUhi1VkMOaqfdyrVi2QFW0IL94s=
X-Received: by 2002:a05:620a:1905:b0:7c0:7303:8d78 with SMTP id
 af79cd13be357-7c0b534e90cmr15243285a.44.1739895742877; Tue, 18 Feb 2025
 08:22:22 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
 <20250213093557.278f5d19@collabora.com> <CAFA6WYOJkSRsH-15QdqXNMd08Q=Dg4NkRd1Cr9LXA+5nozTF6g@mail.gmail.com>
 <20250213134008.4cbef142@collabora.com> <CAPj87rM5Y=-Jgf4mwukicF6Yb-vccn2fpG2X1jNq0upH2+cAEQ@mail.gmail.com>
 <CAHUa44G9hw-z6wzxg=HkVAxPKEW1yES5JTEqRWMvJUJAtcUDkQ@mail.gmail.com>
 <CAPj87rPHnME5Osgnf5-FSAu22mDpLj=dzvhi_NqEcOwr1ThgGw@mail.gmail.com>
 <CAHUa44Gs0D1fBD0=+EDgcQUMeDv4knci9trUkYEc1J98qFV7HQ@mail.gmail.com>
 <CAFA6WYOuTwRPEh3L7+hMyARB_E73xmp+OwhKyS-r4+ryS7=9sw@mail.gmail.com>
 <20250214164856.0d2ead8a@collabora.com> <CAFA6WYPc6EHQwcPuMZRm4C1P6SoDrCzEPUmju_meupB6NXQ1sg@mail.gmail.com>
In-Reply-To: <CAFA6WYPc6EHQwcPuMZRm4C1P6SoDrCzEPUmju_meupB6NXQ1sg@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 18 Feb 2025 16:22:10 +0000
X-Gm-Features: AWEUYZm4DmHXwV4iRPDNo2H2j8DSqPPY_t2q4WxWwnT6ATyeMsQki0rC9akhuRA
Message-ID: <CAPj87rN-OYTzh5=Gdv619UQD5=x=U6Yt=uV4N1kCs4Zao4RVAg@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
	Jens Wiklander <jens.wiklander@linaro.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Media Mailing List <linux-media@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
	"moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, op-tee@lists.trustedfirmware.org,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>,
	Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com,
	Florent Tomasin <florent.tomasin@arm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 85F0442501
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.99 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.222.172:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[fooishbar.org:s=google];
	DMARC_NA(0.00)[fooishbar.org];
	FREEMAIL_TO(0.00)[collabora.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	DKIM_TRACE(0.00)[fooishbar.org:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_NIXSPAM_FAIL(0.00)[209.85.222.172:server fail];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_RCPT(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.172:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: DYEP7ZX7UEXPGUMSPS7NC7NXKYJN4JWA
X-Message-ID-Hash: DYEP7ZX7UEXPGUMSPS7NC7NXKYJN4JWA
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DYEP7ZX7UEXPGUMSPS7NC7NXKYJN4JWA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Sumit,

On Mon, 17 Feb 2025 at 06:13, Sumit Garg <sumit.garg@linaro.org> wrote:
> On Fri, 14 Feb 2025 at 21:19, Boris Brezillon <boris.brezillon@collabora.com> wrote:
> > I would say one heap per-profile.
>
> And then it would have a per vendor multiplication factor as each
> vendor enforces memory restriction in a platform specific manner which
> won't scale.

Yes, they do enforce it in a platform-specific manner, but so does
TEE. There is no one golden set of semantics which is globally
applicable between all hardware and all products in a useful manner.

So, if we define protected,secure-video +
protected,secure-video-record + protected,trusted-ui heap names, we
have exactly the same number of axes. The only change is from uint32_t
to string.

> > > Christian gave an historical background here [1] as to why that hasn't
> > > worked in the past with DMA heaps given the scalability issues.
> > >
> > > [1] https://lore.kernel.org/dri-devel/e967e382-6cca-4dee-8333-39892d532f71@gmail.com/
> >
> > Hm, I fail to see where Christian dismiss the dma-heaps solution in
> > this email. He even says:
> >
> > > If the memory is not physically attached to any device, but rather just
> > memory attached to the CPU or a system wide memory controller then
> > expose the memory as DMA-heap with specific requirements (e.g. certain
> > sized pages, contiguous, restricted, encrypted, ...).
>
> I am not saying Christian dismissed DMA heaps but rather how
> scalability is an issue. What we are proposing here is a generic
> interface via TEE to the firmware/Trusted OS which can perform all the
> platform specific memory restrictions. This solution will scale across
> vendors.

I read something completely different into Christian's mail.

What Christian is saying is that injecting generic constraint solving
into the kernel doesn't scale. It's not OK to build out generic
infrastructure in the kernel which queries a bunch of leaf drivers and
attempts to somehow come up with something which satisfies
userspace-provided constraints.

But this isn't the same thing as saying 'dma-heaps is wrong'! Again,
there is no additional complexity in the kernel between a dma-heap
which bridges over to TEE, and a TEE userspace interface which also
bridges over to TEE. Both of them are completely fine according to
what he's said.

> > Honestly, when I look at dma-heap implementations, they seem
> > to be trivial shells around existing (more complex) allocators, and the
> > boiler plate [1] to expose a dma-heap is relatively small. The dma-buf
> > implementation, you already have, so we're talking about a hundred
> > lines of code to maintain, which shouldn't be significantly more than
> > what you have for the new ioctl() to be honest.
>
> It will rather be redundant vendor specific code under DMA heaps
> calling into firmware/Trusted OS to enforce memory restrictions as you
> can look into Mediatek example [1]. With TEE subsystem managing that
> it won't be the case as we will provide a common abstraction for the
> communication with underlying firmware/Trusted OS.

Yes, it's common for everyone who uses TEE to implement SVP. It's not
common for the people who do _not_ use TEE to implement SVP. Which
means that userspace has to type out both, and what we're asking in
this thread is: why?

Why should userspace have to support dma-heap allocation for platforms
supporting SVP via a static DT-defined carveout as well as supporting
TEE API allocation for platforms supporting SVP via a dynamic
carveout? What benefit does it bring to have this surfaced as a
completely separate uAPI?

> > And I'll insist on what
> > Daniel said, it's a small price to pay to have a standard interface to
> > expose to userspace. If dma-heaps are not used for this kind things, I
> > honestly wonder what they will be used for...
>
> Let's try not to forcefully find a use-case for DMA heaps when there
> is a better alternative available.

What makes it better? If you could explain very clearly the benefit
userspace will gain from asking TEE to allocate $n bytes for
TEE_IOC_UC_SECURE_VIDEO_PLAY, compared to asking dma-heap to allocate
$n bytes for protected,secure-video, I think that would really help.
Right now, I don't understand how it would be better in any way
whatsoever for userspace. And I think your decision to implement it as
a separate API is based on a misunderstanding of Christian's position.

> I am still failing to see why you
> don't consider following as a standardised user-space interface:
>
> "When user-space has to work with restricted memory, ask TEE device to
> allocate it"

As far as I can tell, having userspace work with the TEE interface
brings zero benefit (again, please correct me if I'm wrong and explain
how it's better). The direct cost - call it a disbenefit - it brings
is that we have to spend a pile of time typing out support for TEE
allocation in every media/GPU/display driver/application, and when we
do any kind of negotiation, we have to have one protocol definition
for TEE and one for non-TEE.

dma-heaps was created to solve the problem of having too many
'allocate $n bytes from $specialplace' uAPIs. The proliferation was
painful and making it difficult for userspace to do what it needed to
do. Userspace doesn't _yet_ make full use of it, but the solution is
to make userspace make full use of it, not to go create entirely
separate allocation paths for unclear reasons.

Besides, I'm writing this from a platform that implements SVP not via
TEE. I've worked on platforms which implement SVP without any TEE,
where the TEE implementation would be at best a no-op stub, and at
worst flat-out impossible.

So that's 'why not TEE as the single uAPI for SVP'. So, again, let's
please turn this around: _why_ TEE? Who benefits from exposing this as
completely separate to the more generic uAPI that we specifically
designed to handle things like this?

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
