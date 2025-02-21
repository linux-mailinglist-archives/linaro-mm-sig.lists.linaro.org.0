Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DF7A3F6E3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Feb 2025 15:12:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 053CE44ACF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Feb 2025 14:12:22 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by lists.linaro.org (Postfix) with ESMTPS id 9DFFA3F4DA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Feb 2025 14:12:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=o5vus0YX;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.222.170 as permitted sender) smtp.mailfrom=daniel@fooishbar.org
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7c0b9f35dc7so281514485a.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Feb 2025 06:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1740147139; x=1740751939; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m9yE+NbJbzuXxkBEw/1a0dtqEVxR7Jj4LrNBop/jhXU=;
        b=o5vus0YXZmNisaXHjgbENEPNIZO2RTv15548mYkcfaiMTkK15g0H1stWGt4hPeFyN4
         0xNdBPUVBaz+4w8iA1HurTnXqxUlALO+3hI07MeaaDwUeUY30dFIK6oH9mnactlnW978
         /WdY7PUP+TW6Xu26ybPWza1AD7JpNXcWnpRYo+uNjjk1Kp05dau8gYRQ5zVhk92cy6ek
         okxlof0HaXIBhmO4kO59Pi7WATSwIuNX2H6RvupIM6AqJ5T7Lg5Gd6uV+Ntl2uY7jnVn
         Kh+DgWpo1BUR3FNxnlbfqvJmiztcljjsmNNmnnn5a3+j7K6N5TjWt4LxvS3TWhcTdlIk
         liOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740147139; x=1740751939;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m9yE+NbJbzuXxkBEw/1a0dtqEVxR7Jj4LrNBop/jhXU=;
        b=otxDpsHvX6GbTHn8iwnJhVE/tU36BrriGNmoxuNX5dPccv9EOnXIQdv2OCx3gBpM2o
         lcxNL1yI5dQRclm/c9YYli7/m6sae+zukKyLRr7k9i84KtXx/IjI1O/70DmMjLJWQZAv
         HLBDssGouPBIIyGJQ/KP/B6XK4qVNgErGS4g/CEyO93ZTu6FYbWJ8otSvYR0bDr/EAOA
         3+dF8YDJNRDxPMirRDL1bXnFm7pL2Hy7skUPdlGEpGBid9xZuXeleaZ0DRzQNqf+/120
         +LuHP9VTwd9XoeCVeF4fJRUPN0w+bsibeyxpeLzGq65pu6ujAY0D3a7u+4btN7lFen5X
         FXVA==
X-Forwarded-Encrypted: i=1; AJvYcCULicJuBggOOHnX0P6xswDOVC5arUyUHzaEm4HL50QNHWr9pO/HKKqWtm4QxeU+IyJOtj7VwEcJzVwXlSnQ@lists.linaro.org
X-Gm-Message-State: AOJu0YxLgDigpL5tTqg1/zudqhlCTIvP/FEBcEhzwgEYVGPw6V8dSXXt
	wAzMFHj1MgON2Ju8qkthprcbut8CtzOVt6qee8Y5fzsXY7Ulpl97mnba5sHLvmvd+YXG/uHjBjP
	Vfqksm2nK3gi4rKcAU4VCMi/furdaYzXmQk0qew==
X-Gm-Gg: ASbGncuIq0Ri5UzNaGma0iVsJW6yXfix8us4x6efzbNOGQ39zYVLU70kpphOVk9NJ5T
	2RB2ha8/z97u57Y6+lr7qVsQ8U0UrWs28lr9yuLOqjC7POLjrqCY/hDP7ZGnFT6GBfIDGC2YQYK
	Mfr3qltA==
X-Google-Smtp-Source: AGHT+IFieBNTxJ4hx1OI2gSZB618IgbZaKxKQewYduWvvTgUefuy7AogKvIO9imSGUNujouK58RLbPzlVZ8deqdW1G0=
X-Received: by 2002:a05:620a:171e:b0:7c0:7eb4:6635 with SMTP id
 af79cd13be357-7c0ceeff2f5mr489949685a.20.1740147139124; Fri, 21 Feb 2025
 06:12:19 -0800 (PST)
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
 <CAPj87rN-OYTzh5=Gdv619UQD5=x=U6Yt=uV4N1kCs4Zao4RVAg@mail.gmail.com> <CAFA6WYMLLLSuz3y5J+DuRFAGrmwpZoWax5sasfAUhXoQXmrNNA@mail.gmail.com>
In-Reply-To: <CAFA6WYMLLLSuz3y5J+DuRFAGrmwpZoWax5sasfAUhXoQXmrNNA@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 21 Feb 2025 14:12:07 +0000
X-Gm-Features: AWEUYZmP2uYJ9getqaxkEL4eegweLIaIcbeabrpYDd9o5HHeksDQJ2ryFyndM6w
Message-ID: <CAPj87rN7J6u9NsviAdw8=OenEYc8t719Lds6u6-BhFKrtkLZ-A@mail.gmail.com>
To: Sumit Garg <sumit.garg@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9DFFA3F4DA
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.222.170:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[fooishbar.org:s=google];
	DMARC_NA(0.00)[fooishbar.org];
	FREEMAIL_CC(0.00)[collabora.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[fooishbar.org:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.170:from];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: ACIJRSFIQYLBH7PLK6T7MI6HWSFNXRNK
X-Message-ID-Hash: ACIJRSFIQYLBH7PLK6T7MI6HWSFNXRNK
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Boris Brezillon <boris.brezillon@collabora.com>, Jens Wiklander <jens.wiklander@linaro.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, op-tee@lists.trustedfirmware.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ACIJRSFIQYLBH7PLK6T7MI6HWSFNXRNK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Sumit,

On Fri, 21 Feb 2025 at 11:24, Sumit Garg <sumit.garg@linaro.org> wrote:
> On Tue, 18 Feb 2025 at 21:52, Daniel Stone <daniel@fooishbar.org> wrote:
> > dma-heaps was created to solve the problem of having too many
> > 'allocate $n bytes from $specialplace' uAPIs. The proliferation was
> > painful and making it difficult for userspace to do what it needed to
> > do. Userspace doesn't _yet_ make full use of it, but the solution is
> > to make userspace make full use of it, not to go create entirely
> > separate allocation paths for unclear reasons.
> >
> > Besides, I'm writing this from a platform that implements SVP not via
> > TEE. I've worked on platforms which implement SVP without any TEE,
> > where the TEE implementation would be at best a no-op stub, and at
> > worst flat-out impossible.
>
> Can you elaborate the non-TEE use-case for Secure Video Path (SVP) a
> bit more? As to how the protected/encrypted media content pipeline
> works? Which architecture support does your use-case require? Is there
> any higher privileged level firmware interaction required to perform
> media content decryption into restricted memory? Do you plan to
> upstream corresponding support in near future?

You can see the MTK SVP patches on list which use the MTK SMC to mediate it.

There are TI Jacinto platforms which implement a 'secure' area
configured statically by (IIRC) BL2, with static permissions defined
for each AXI endpoint, e.g. CPU write + codec RW + dispc read. I've
heard of another SoC vendor doing the same, but I don't think I can
share those details. There is no TEE interaction.

I'm writing this message from an AMD laptop which implements
restricted content paths outside of TEE. I don't have the full picture
of how SVP is implemented on AMD systems, but I do know that I don't
have any TEE devices exposed.

> Let me try to elaborate on the Secure Video Path (SVP) flow requiring
> a TEE implementation (in general terms a higher privileged firmware
> managing the pipeline as the kernel/user-space has no access
> permissions to the plain text media content):
>
> - [...]

Yeah, I totally understand the TEE usecase. I think that TEE is a good
design to implement this. I think that TEE should be used for SVP
where it makes sense.

Please understand that I am _not_ arguing that no-one should use TEE for SVP!

> > So, again, let's
> > please turn this around: _why_ TEE? Who benefits from exposing this as
> > completely separate to the more generic uAPI that we specifically
> > designed to handle things like this?
>
> The bridging between DMA heaps and TEE would still require user-space
> to perform an IOCTL into TEE to register the DMA-bufs as you can see
> here [1]. Then it will rather be two handles for user-space to manage.

Yes, the decoder would need to do this. That's common though: if you
want to share a buffer between V4L2 and DRM, you have three handles:
the V4L2 buffer handle, the DRM GEM handle, and the dmabuf you use to
bridge the two.

> Similarly during restricted memory allocation/free we need another
> glue layer under DMA heaps to TEE subsystem.

Yep.

> The reason is simply which has been iterated over many times in the
> past threads that:
>
>     "If user-space has to interact with a TEE device for SVP use-case
> then why it's not better to ask TEE to allocate restricted DMA-bufs
> too"

The first word in your proposition is load-bearing.

Build out the usecase a little more here. You have a DRMed video
stream coming in, which you need to decode (involving TEE for this
usecase). You get a dmabuf handle to the decoded frame. You need to
pass the dmabuf across to the Wayland compositor. The compositor needs
to pass it to EGL/Vulkan to import and do composition, which in turn
passes it to the GPU DRM driver. The output of the composition is in
turn shared between the GPU DRM driver and the separate KMS DRM
driver, with the involvement of GBM.

For the platforms I'm interested in, the GPU DRM driver needs to
switch into protected mode, which has no involvement at all with TEE -
it's architecturally impossible to have TEE involved without moving
most of the GPU driver into TEE and destroying performance. The
display hardware also needs to engage protected mode, which again has
no involvement with TEE and again would need to have half the driver
moved into TEE for no benefit in order to do so. The Wayland
compositor also has no interest in TEE: it tells the GPU DRM driver
about the protected status of its buffers, and that's it.

What these components _are_ opinionated about, is the way buffers are
allocated and managed. We built out dmabuf modifiers for this usecase,
and we have a good negotiation protocol around that. We also really
care about buffer placement in some usecases - e.g. some display/codec
hardware requires buffers to be sourced from contiguous memory, other
hardware needs to know that when it shares buffers with another
device, it needs to place the buffers outside of inaccessible/slow
local RAM. So we built out dma-heaps, so every part of the component
in the stack can communicate their buffer-placement needs in the same
way as we do modifiers, and negotiate an acceptable allocation.

That's my starting point for this discussion. We have a mechanism to
deal with the fact that buffers need to be shared between different IP
blocks which have their own constraints on buffer placement, avoiding
the current problem of having every subsystem reinvent their own
allocation uAPI which was burying us in impedance mismatch and
confusion. That mechanism is dma-heaps. It seems like your starting
point from this discussion is that you've implemented a TEE-centric
design for SVP, and so all of userspace should bypass our existing
cross-subsystem special-purpose allocation mechanism, and write
specifically to one implementation. I believe that is a massive step
backwards and an immediate introduction of technical debt.

Again, having an implementation of SVP via TEE makes a huge amount of
sense. Having _most_ SVP implementations via TEE still makes a lot of
sense. Having _all_ SVP implementations eventually be via TEE would
still make sense. But even if we were at that point - which we aren't
- it still doesn't justify telling userspace 'use the generic dma-heap
uAPI for every device-specific allocation constraint, apart from SVP
which has a completely different way to allocate some bytes'.

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
