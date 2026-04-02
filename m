Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJDZDQRwzmnxngYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 15:32:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9AA389C88
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 15:32:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A51B7401E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Apr 2026 13:32:50 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 7F24B3F8FE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 13:32:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=tOveEdN2;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.50 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b9358dd7f79so168686166b.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 06:32:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775136766; cv=none;
        d=google.com; s=arc-20240605;
        b=egjXYC0O/AtQw2baxTyuOEi9FN+3LzfYii0IF1cDd+ZF+Df/8n7Qy6MQldECfS9mIC
         NFxr0XkZ2UMWHUDjcPCBKT32luELL7ledzNltAGAXa/SsI8ZP+EaDxsNbw6kPF2v4dsB
         iDWSQahFQy7tgeLjA8wjivGQWtzr8RhHKBBE8qgDWaNrUG09ySJ++f3Ff41dBQV8/2le
         G2G+sSMmlxgWPAWutCs4oDIhIKZ0/NmFETACekNQ2Fx60/P57qUkokbokEjQTpxjXvov
         MVYGt5MO1JZqy9JLAz/UbuJR2VdIpoY1jALoEkFDr+y5NcluERTkFvzCDEcOu0KLdwQT
         RAuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nsx2hYjw+sV8/0qohJ1DlKPwBoo2zkp1J5PdzUN8MV4=;
        fh=oX4p6L5ga7xYMTmLE6X6OgSJ/8JXcFp9jFBDbQLXC1s=;
        b=cFK3yax3LLV8qVBwIRO4z2Fp/trfAMF039DhIy+W47shjPkhSVFIHmJBroBDCReR0B
         5RzRZiGsO8HTLBlwKWhb+nWHjlVAGYh93ZmcGTWbrUrNkghrTKZCfYFqH+6Qkaix/w8D
         L/0+H1Ndz6WTMzti3y2MZElhZnmq18mJoLGqP/HKf4CrbU21zaegjTomBhT3R5U3Nq58
         IU8XnVTV0qO3gqEc/igQ6Z+7UexITQcX75H5jXC3WN3+faxxO0mMriXno0gQc6NWkf7d
         Hq8Nz14yMT6ZeKvahfL1FJLqsjyodlepan5GvyahQfyFMvppLI1b9qG7MKcqyYjadegb
         aeYg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775136766; x=1775741566; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nsx2hYjw+sV8/0qohJ1DlKPwBoo2zkp1J5PdzUN8MV4=;
        b=tOveEdN2TNzJ5xaUxQ7LOaxzZsG40rsh5d/avF6pnZUKdi/SSGRYL6ZqZzEmFoDYQW
         TQbn2l44dWjqzuSh2qI3DhNc3UJ+oOtLMguKspcNb733eLiy1VOhc/LYddpOKZUfbhx0
         ki5RflYof7SWoLlkdURGpcHFWFsD4CBURNcqVQn/cbx9n+94dvZ6NfqgQNe9HUvYDtpi
         HDSH8tVbHDN8RzSKBm3NWrm6XAAx0c4wjRvCKHWYjtRLZjLcO/jlgQlJ5ZewnmS+nDZP
         AtHoTVvFhj8J7XGEBrrNjJ3Zh7nCCtX/JmcQZM8nwLnKMcv0vGVfyLLSmxSTJGP2a25V
         e+sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775136766; x=1775741566;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nsx2hYjw+sV8/0qohJ1DlKPwBoo2zkp1J5PdzUN8MV4=;
        b=PJvdnf9yNi3rvuO8C9UofZpfPAMqcqTnMhBsM5XiGEFXPh7NoQT6ziG4MzkldSmYJ4
         h8AvY1w5bt28d0Fia380g/xuwV5ltk1EbRoxDPuSsvRXSVRhPJ6xGPmgybYGZ1DfRoF2
         bL4gVo37rFrOLUFJp301mjT+05w6MHTYHqvEldhhgwuyRZkLYKhvbQDK+yDdEODyvhqt
         sTWUVmW6uqc2OtMtSwRopm1VDlctNZUyUci3HAeWQiKKjwJtJGd+pleX6TNpe1e6c9et
         v7QKaHH4YqsIAThp6dHf0PW+SRQ6x07ulRBTZ1bYdpM8IP+f8IGV2VJifoQg/t3qmzqd
         hGyg==
X-Forwarded-Encrypted: i=1; AJvYcCXndnTD+2/m4sEN4JvCRv6SiTo75pdJck1owqE/+ibc8E1jAjHJRz58vS2SLSyspi0mA4CcJLqZnmdRwqJv@lists.linaro.org
X-Gm-Message-State: AOJu0YzIoJG/Z4d4MA79GpaQMA0Gr33BfckVgiRgm78DUnGOqZJVdscv
	nEHwQs6yleHRPlsDcIXXQqDbucCIhVGemwCZij2Y7kAvadS+tnJLNq9KnZmYuaqeSIJp73MN+tC
	ChISHFkiK9TzBstgHtlLrzGrX6lewWciCku0HZdfYdx/0
X-Gm-Gg: ATEYQzywiWIRXI+cr2osFYSLuhOOIm6RKC0Rh1Ci8eYbDPO1fbFml8LMwiYl6iqxuzN
	F+wiQ6bhX7xfvJAXPFTMTGX71S9Cu9IDVtX9CjLMN7F6pPnGtL1C5pnLyk0XRAQ7keYC9dg4GKp
	7fgrgm8AmLhN5Edki5arJFTNGfZJA/s4xlDJK0/zz00BCCAZIZ6RasOUnC+gbjDkgOnn0bDL/am
	heR4Vpv24tI6ElM8qcmkR90MV9FzS+F4lVzyUWZmBZqq40vyNrAwiGvkRD44Gt9q0Pf69kJab5o
	9vNSWNg=
X-Received: by 2002:a17:906:4912:b0:b98:695:ec53 with SMTP id
 a640c23a62f3a-b9c138c110amr392586266b.18.1775136766273; Thu, 02 Apr 2026
 06:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20260331100026eucas1p19bdc2aaca4c9a48c6f6ac8fec71478d8@eucas1p1.samsung.com>
 <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
 <46397de2-eedf-4e09-a83a-3b683d154fe7@samsung.com> <CAO_48GEFQE_FJjuq1UqP=DC6LJE8jjE3C+4FdAyB4uEZDsnFJw@mail.gmail.com>
 <20260402-burrowing-fine-bloodhound-afcebc@houat>
In-Reply-To: <20260402-burrowing-fine-bloodhound-afcebc@houat>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 2 Apr 2026 19:02:34 +0530
X-Gm-Features: AQROBzBU7_o7IRQH6mzOKTP-KDFv7IkPoqq1yaLRTD3AfvGaKguQAkczWk5rypY
Message-ID: <CAO_48GHzMpKHQxmS9ADd_Z9G56uWOPfJ-qhNek7ubgkk_yjGDg@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: SZ32DB5GUBP4JTMEFLTL3FIU75JBS2SC
X-Message-ID-Hash: SZ32DB5GUBP4JTMEFLTL3FIU75JBS2SC
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/8] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SZ32DB5GUBP4JTMEFLTL3FIU75JBS2SC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.01 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	NEURAL_SPAM(0.00)[0.986];
	DKIM_TRACE(0.00)[linaro.org:-];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,samsung.com:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: BE9AA389C88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Maxime,

On Thu, 2 Apr 2026 at 18:42, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Apr 02, 2026 at 10:36:48AM +0530, Sumit Semwal wrote:
> > Hello Maxime,
> >
> > On Tue, 31 Mar 2026 at 18:24, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
> > >
> > > On 31.03.2026 12:00, Maxime Ripard wrote:
> > > > The recent introduction of heaps in the optee driver [1] made possible
> > > > the creation of heaps as modules.
> > > >
> > > > It's generally a good idea if possible, including for the already
> > > > existing system and CMA heaps.
> > > >
> > > > The system one is pretty trivial, the CMA one is a bit more involved,
> > > > especially since we have a call from kernel/dma/contiguous.c to the CMA
> > > > heap code. This was solved by turning the logic around and making the
> > > > CMA heap call into the contiguous DMA code.
> > > >
> > > > Let me know what you think,
> > > > Maxime
> > > >
> > > > 1: https://lore.kernel.org/dri-devel/20250911135007.1275833-4-jens.wiklander@linaro.org/
> > > >
> > > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> >
> > Thank you for this patch series; now that it is needed by more folks,
> > I think we can merge this.
> >
> > Marek, I'll coordinate with you on this - thank you!
>
> If Marek plans on sending it during the next merge window, maybe the
> best thing to do for us is just to wait for -rc1 and apply the rest of
> the patches. Otherwise, we can merge the branch in drm-misc.

We could do that. Are we ok to wait till -rc1?
>
> Maxime

Best,
Sumit
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
