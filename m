Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA15A34143
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 15:05:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8154445C6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 14:05:48 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by lists.linaro.org (Postfix) with ESMTPS id 159134417A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 14:05:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=e3oH9Trj;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.222.174 as permitted sender) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7c077c9cbb9so73118085a.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 06:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1739455533; x=1740060333; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fiZcI5pNzRU07XzzU8EnwEz/jsrm+hKHSzrUBfY4xZU=;
        b=e3oH9TrjBlnpex+t9erl7aGPYEdaYcdNGhM98GjJEFRatTV8WmTMTT4hTp1990HScc
         KkTghSGXfjRVnN+LgHMM8D0e5YPf/1mNJPxg7K5LEkkQnUPMi/C6ok0ioecJtSFhn5By
         Lg6Mwc267rBuTpFhSubuZ9C+K0DFliUzkU8s9tUOqM2UhO/3Hb49wNHKcpoyrOGiHH6n
         k2VqyY38FxD8ftyusV3SseD1uzQpStqZt/0X7gmXtTnl5SJHLmyCnmCWRRgB0X+aTxK+
         45P5H1GkbDlz68ehJBrhHdKHDVjp/WgLpubDy2vRD86bZrFKDh+7PL/BvGm/eXNHucIo
         5vaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739455533; x=1740060333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fiZcI5pNzRU07XzzU8EnwEz/jsrm+hKHSzrUBfY4xZU=;
        b=ULL1ILXKy3AIYNXZT1NP0QABk2xBaYh1xzXq6Z75fyMRiTIDhRj2y31V2HuyArgUty
         m4fzWMwyTXDzjkNrT8CUWT5cLfn8cZ0xDyENAeJn7dHPvS8cGOnSnjWSzjgSyj/IidDb
         HY9ykMli5QKHGtGxdYrZFN0PY6iWByPgeM5j9IH4Oho2d/oBDoFu0K7fBUa56CJcChOE
         sEDoRzSe82tsFYGGk6cgvQy5g2LN2RpfLQ35f6cKrQrOB0L9J+NtXXccYqsFXfO9VSWB
         qc25PoBDA/DWZwqz3FRi40Vg9C42b1fhFsrTFM3b0IGHZjHNNHlaTptj4IdEzKWY/0zp
         52kA==
X-Forwarded-Encrypted: i=1; AJvYcCVGmHXgo77/Glf8pX3zWRhDbJnw2ozfZpdjbajPvye9qEj5eI9OxjA1c6yK5s1KSNVWTJoCsMlha/WFSAcx@lists.linaro.org
X-Gm-Message-State: AOJu0Yw9bDqkZF8LBRQlgnNs61ykXCY1xrrebqcLUgqywFeF4YIYiOwp
	Hp+GOSW/2nSem4w+LjR94HEfTIpTa2KD/m6HywpafhB034RbugbJCx4U8Zd+XvpcZzydmyycz8D
	P2MrICwtn1/tofYL3cGWtx8oKbjNRlD6SKmj/pg==
X-Gm-Gg: ASbGncuTMlpFVXe7lrtAqdPnVUpQxCJnPKmoMsDDU8pmpduYjlo6Q/KPMc43M9Dh/c4
	DTszFtJ93pYqt0kahnvhEeMjvBQWX53ckIcYZcsM8/hIqVgU0WapU6K0y4IIOikY7JxaP+w==
X-Google-Smtp-Source: AGHT+IGMP88jINMPoFMOhhs/JAOS7v2yzIBooFPBVGpWjkqaheBF8kqUyMw9whWPj/OQ8rwmytDe/wVilf8O/rIqWwA=
X-Received: by 2002:a05:620a:6841:b0:7b6:d611:ce6f with SMTP id
 af79cd13be357-7c07a89294cmr506602985a.8.1739455533614; Thu, 13 Feb 2025
 06:05:33 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
 <20250213093557.278f5d19@collabora.com> <CAFA6WYOJkSRsH-15QdqXNMd08Q=Dg4NkRd1Cr9LXA+5nozTF6g@mail.gmail.com>
 <20250213134008.4cbef142@collabora.com>
In-Reply-To: <20250213134008.4cbef142@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 13 Feb 2025 14:05:22 +0000
X-Gm-Features: AWEUYZn29uWPvEYSBg2IY8QVofzDJvdO9H1dHkQQoSFoIsbJfLKOXfSzgdbP8WY
Message-ID: <CAPj87rM5Y=-Jgf4mwukicF6Yb-vccn2fpG2X1jNq0upH2+cAEQ@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 159134417A
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.44 / 15.00];
	BAYES_HAM(-2.94)[99.72%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_6(1.00)[209.85.222.174:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	TAGGED_RCPT(0.00)[];
	DMARC_NA(0.00)[fooishbar.org];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.174:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	R_DKIM_ALLOW(0.00)[fooishbar.org:s=google];
	DKIM_TRACE(0.00)[fooishbar.org:+]
Message-ID-Hash: 5K7GAZD3LHSAY3SS4INPUKEIMSY3BOKP
X-Message-ID-Hash: 5K7GAZD3LHSAY3SS4INPUKEIMSY3BOKP
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Garg <sumit.garg@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5K7GAZD3LHSAY3SS4INPUKEIMSY3BOKP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Thu, 13 Feb 2025 at 12:40, Boris Brezillon
<boris.brezillon@collabora.com> wrote:
> On Thu, 13 Feb 2025 14:46:01 +0530 Sumit Garg <sumit.garg@linaro.org> wrote:
> > Yeah but all the prior vendor specific secure/restricted DMA heaps
> > relied on DT information.
>
> Right, but there's nothing in the DMA heap provider API forcing that.

Yeah. DMA heaps are just a way to allocate memory from a specific
place. It allows people to settle on having a single way to do
allocations from weird platform-specific places; the only weird
platform-specific part userspace needs to deal with is figuring out
the name to use. The rest is at least a unified API: the point of
dma-heaps was exactly to have a single coherent API for userspace, not
to create one API for ZONE_CMA and DT ranges and everyone else doing
their own thing.

> > Rather than that it's better
> > for the user to directly ask the TEE device to allocate restricted
> > memory without worrying about how the memory restriction gets
> > enforced.
>
> If the consensus is that restricted/protected memory allocation should
> always be routed to the TEE, sure, but I had the feeling this wasn't as
> clear as that. OTOH, using a dma-heap to expose the TEE-SDP
> implementation provides the same benefits, without making potential
> future non-TEE based implementations a pain for users. The dma-heap
> ioctl being common to all implementations, it just becomes a
> configuration matter if we want to change the heap we rely on for
> protected/restricted buffer allocation. And because heaps have
> unique/well-known names, users can still default to (or rely solely on)
> the TEE-SPD implementation if they want.
>
> > There have been several attempts with DMA heaps in the past which all
> > resulted in a very vendor specific vertically integrated solution. But
> > the solution with TEE subsystem aims to make it generic and vendor
> > agnostic.
>
> Just because all previous protected/restricted dma-heap effort
> failed to make it upstream, doesn't mean dma-heap is the wrong way of
> exposing this feature IMHO.

To be fair, having a TEE implementation does give us a much better
chance of having a sensible cross-vendor plan. And the fact it's
already (sort of accidentally and only on one platform AFAICT) ready
for a 'test' interface, where we can still exercise protected
allocation paths but without having to go through all the
platform-specific setup that is inaccessible to most people, is also
really great! That's probably been the biggest barrier to having this
tested outside of IHVs and OEMs.

But just because TEE is one good backend implementation, doesn't mean
it should be the userspace ABI. Why should userspace care that TEE has
mediated the allocation instead of it being a predefined range within
DT? How does userspace pick which TEE device to use?  What advantage
does userspace get from having to have a different codepath to get a
different handle to memory?  What about x86?

I think this proposal is looking at it from the wrong direction.
Instead of working upwards from the implementation to userspace, start
with userspace and work downwards. The interesting property to focus
on is allocating memory, not that EL1 is involved behind the scenes.

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
