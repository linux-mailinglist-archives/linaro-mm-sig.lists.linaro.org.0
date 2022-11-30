Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A55263D371
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 11:31:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62BF23EF52
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 10:31:08 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id 757D03EA37
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 10:30:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b="cFwn//sQ";
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.43) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f43.google.com with SMTP id l39-20020a05600c1d2700b003cf93c8156dso1038351wms.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 02:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YXQc9XEWwXQO5oC1YosCl7efmTS9cTKVl0+Fl9Ojos8=;
        b=cFwn//sQuJyEF+Xqojf4F3dtCdu6AOypSnbLJkW3w/W2bvEbw3MBgE85Rlo8X/E9Hn
         vwQOJMOLxK031tjfVgULjfK7VQth9G9gdUafF2gebgGPWDePmMoHlZn/U4SxZldtR0Ml
         tNjZx9/SU8X1YZWdqC9XDCSlsM6k1qJVhaoQ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YXQc9XEWwXQO5oC1YosCl7efmTS9cTKVl0+Fl9Ojos8=;
        b=b+EJbU0fQLg4mu6x3PIUeGWTdi/i0j/2P979I9JMN/CcrXo9gCy++4RZQsCNuU7/9x
         jg4HFkDAylLndLmO1JUU7w2YAGI1tADG6+A5+KsLizsLydxrX8Mqyuu5QFWlTOl+08GC
         bYNfS28TTHg7uXJVcHhm4UK5/DxD426HbrQ44lGNM20mmfpQuIHEB0lHO3lFIw2iQGmC
         mG7qAOiRZbr+OHIyeONgrhwc5rHSH35JNpGmfj7leJ5aY7V8cdwx/5+AoTpXc0JOf98W
         TIgLQ33m92fTMG+VR59TH59+kWNj0fI7u69wqE8p0GGlGnMD36nac7bNMO9v3OWg/BS5
         +WNg==
X-Gm-Message-State: ANoB5pmyu9FpRfAzwMUw9Uk4oFaJzB9UOQJKvHX6Gvu6PRVPkuT3FMPr
	JnXljfxqaM0ZjIcGAG8XSzSWGQ==
X-Google-Smtp-Source: AA0mqf6SRJsk/MKKc9HQxdUZJsG0RmKyyQXTtpD31OSl0Vlst25pFdkXAN5H9o19tdez0HxXD0c9+A==
X-Received: by 2002:a05:600c:5407:b0:3cf:774b:ce5a with SMTP id he7-20020a05600c540700b003cf774bce5amr36233164wmb.0.1669804258491;
        Wed, 30 Nov 2022 02:30:58 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id u18-20020adfed52000000b00241d2df4960sm1109971wro.17.2022.11.30.02.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 02:30:57 -0800 (PST)
Date: Wed, 30 Nov 2022 11:30:55 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Message-ID: <Y4cw36MUO+ftP468@phenom.ffwll.local>
References: <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
 <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
 <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
 <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
 <Y3zeYnufgXJHQAbN@phenom.ffwll.local>
 <ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
 <20221123103338.238571e1@eldfell>
 <Y35LcspZ385IC4lJ@phenom.ffwll.local>
 <ba6e42f04c436d93bfa71d5dee7fd35ef2245073.camel@ndufresne.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba6e42f04c436d93bfa71d5dee7fd35ef2245073.camel@ndufresne.ca>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-Rspamd-Queue-Id: 757D03EA37
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,gmail.com,amd.com,chromium.org,pengutronix.de,fooishbar.org,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.128.43:from];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.43:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YXFNHD5TOFSUOBHQ5QZKR3CMOU6PGBYA
X-Message-ID-Hash: YXFNHD5TOFSUOBHQ5QZKR3CMOU6PGBYA
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Pekka Paalanen <ppaalanen@gmail.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YXFNHD5TOFSUOBHQ5QZKR3CMOU6PGBYA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 25, 2022 at 11:40:04AM -0500, Nicolas Dufresne wrote:
> Le mercredi 23 novembre 2022 =E0 17:33 +0100, Daniel Vetter a =E9crit=A0:
> > On Wed, Nov 23, 2022 at 10:33:38AM +0200, Pekka Paalanen wrote:
> > > On Tue, 22 Nov 2022 18:33:59 +0100
> > > Christian K=F6nig <christian.koenig@amd.com> wrote:
> > >=20
> > > > We should have come up with dma-heaps earlier and make it clear tha=
t=20
> > > > exporting a DMA-buf from a device gives you something device specif=
ic=20
> > > > which might or might not work with others.
> > > >=20
> > > > Apart from that I agree, DMA-buf should be capable of handling this=
.=20
> > > > Question left is what documentation is missing to make it clear how=
=20
> > > > things are supposed to work?
> > >=20
> > > Perhaps somewhat related from Daniel Stone that seems to have been
> > > forgotten:
> > > https://lore.kernel.org/dri-devel/20210905122742.86029-1-daniels@coll=
abora.com/
> > >=20
> > > It aimed mostly at userspace, but sounds to me like the coherency stu=
ff
> > > could use a section of its own there?
> >=20
> > Hm yeah it would be great to land that and then eventually extend. Dani=
el?
>=20
> There is a lot of things documented in this document that have been said =
to be
> completely wrong user-space behaviour in this thread. But it seems to pre=
-date
> the DMA Heaps. The document also assume that DMA Heaps completely solves =
the CMA
> vs system memory issue. But it also underline a very important aspect, th=
at
> userland is not aware which one to use. What this document suggest though=
 seems
> more realist then what has been said here.
>=20
> Its overall a great document, it unfortunate that it only makes it into t=
he DRM
> mailing list.

The doc is more about document the current status quo/best practices,
which is very much not using dma-heaps.

The issue there is that currently userspace has no idea which dma-heap to
use for shared buffers, plus not all allocators are exposed through heaps
to begin with. We had this noted as a todo item (add some device->heap
sysfs links was the idea), until that's done all you can do is hardcode
the right heaps for the right usage in userspace, which is what android
does. Plus android doesn't have dgpu, so doesn't need the missing ttm
heap.

But yeah the long-term aspiration also hasn't changed, because the
dma-heap todo list is also very, very old by now :-/
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
