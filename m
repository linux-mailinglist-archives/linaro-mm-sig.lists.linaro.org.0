Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D748633F0A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 15:36:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F69D3ECFB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 14:36:30 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by lists.linaro.org (Postfix) with ESMTPS id 232A13EB80
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 14:36:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=cIyvgEbX;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.43) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f43.google.com with SMTP id i12so21147609wrb.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 06:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JJAX9bh44USRdwqCCs1XRembKQE+7Zn41PI7dnWPC7c=;
        b=cIyvgEbXTJlKKpJ5dS3YZLtxi9nJcf1bLVSWFgPYiWNAfO4UjcYaJulhMczfGqPe6K
         m8bS6+WO/fHS+xvAhObz2CUed/99J/g/zZJJdO3qQH4go4Nogj7z3xa/xFvpuatC5MP9
         qJ2eMHD28sUV+BMVuv547L7hpGp30MJ2QcBjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JJAX9bh44USRdwqCCs1XRembKQE+7Zn41PI7dnWPC7c=;
        b=6wvk9coauUezKUdjg5y3bsGmoKVflLqQ651tadZ0Ae8XdXj6jtm9suH8ktfXXjYjR+
         Vl2eKaEYG1jsQpFclokHx/7Hev1UPgXjjDrkHGUTuEDU4gnOpJZtqZNMH4UqdSnCA7LA
         KpYR+Z25qQni8HHmiLTI6GOI/QOW9tprZ77kk0EQgGI/jIhPlMfanp/ZYXOokCa9VAx0
         jlwulyU8P64KYsoHQE0pMiNyNvHUZOqnhshmT/rpIIcCmqel5c802grB9T4ZzKQfgWRc
         DspBBLqLHeJpxLEVaVPorccmMwSUBCGqZTTUVLvvYcX0A63N8y6GMaZLoaBWwCARPS5W
         GQOQ==
X-Gm-Message-State: ANoB5pkSS1sGy8wy8BFWCj9MNqgPFpCjvd8gZ+QqV0ukhuavFLGy6sQE
	uRByKN2aPkn8TKkS15SlwkaHnQ==
X-Google-Smtp-Source: AA0mqf40CZNOgsBdGjKcG0OTGUB1GivriUFnhQB4elBdUJ8Ho+SYd7WuislfYUUdfraPuU4/cfTTxw==
X-Received: by 2002:a5d:6284:0:b0:236:64b1:bd30 with SMTP id k4-20020a5d6284000000b0023664b1bd30mr14342309wru.667.1669127781096;
        Tue, 22 Nov 2022 06:36:21 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id d9-20020adfef89000000b00241dd5de644sm4063176wro.97.2022.11.22.06.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 06:36:20 -0800 (PST)
Date: Tue, 22 Nov 2022 15:36:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <Y3zeYnufgXJHQAbN@phenom.ffwll.local>
References: <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com>
 <4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
 <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
 <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
 <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
 <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
 <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
 <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-Rspamd-Queue-Id: 232A13EB80
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[gmail.com];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ndufresne.ca,amd.com,chromium.org,pengutronix.de,fooishbar.org,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[212.51.149.33:received];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.43:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JWPTPZCZULXKGDCPU7LZMFAV4EWAKDYA
X-Message-ID-Hash: JWPTPZCZULXKGDCPU7LZMFAV4EWAKDYA
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JWPTPZCZULXKGDCPU7LZMFAV4EWAKDYA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 18, 2022 at 11:32:19AM -0800, Rob Clark wrote:
> On Thu, Nov 17, 2022 at 7:38 AM Nicolas Dufresne <nicolas@ndufresne.ca> w=
rote:
> >
> > Le jeudi 17 novembre 2022 =E0 13:10 +0100, Christian K=F6nig a =E9crit :
> > > > > DMA-Buf let's the exporter setup the DMA addresses the importer u=
ses to
> > > > > be able to directly decided where a certain operation should go. =
E.g. we
> > > > > have cases where for example a P2P write doesn't even go to memor=
y, but
> > > > > rather a doorbell BAR to trigger another operation. Throwing in C=
PU
> > > > > round trips for explicit ownership transfer completely breaks that
> > > > > concept.
> > > > It sounds like we should have a dma_dev_is_coherent_with_dev() which
> > > > accepts two (or an array?) of devices and tells the caller whether =
the
> > > > devices need explicit ownership transfer.
> > >
> > > No, exactly that's the concept I'm pushing back on very hard here.
> > >
> > > In other words explicit ownership transfer is not something we would
> > > want as requirement in the framework, cause otherwise we break tons of
> > > use cases which require concurrent access to the underlying buffer.
> >
> > I'm not pushing for this solution, but really felt the need to correct =
you here.
> > I have quite some experience with ownership transfer mechanism, as this=
 is how
> > GStreamer framework works since 2000. Concurrent access is a really com=
mon use
> > cases and it is quite well defined in that context. The bracketing syst=
em (in
> > this case called map() unmap(), with flag stating the usage intention l=
ike reads
> > and write) is combined the the refcount. The basic rules are simple:
>=20
> This is all CPU oriented, I think Christian is talking about the case
> where ownership transfer happens without CPU involvement, such as via
> GPU waiting on a fence

Yeah for pure device2device handover the rule pretty much has to be that
any coherency management that needs to be done must be done from the
device side (flushing device side caches and stuff like that) only. But
under the assumption that _all_ cpu side management has been done already
before the first device access started.

And then the map/unmap respectively begin/end_cpu_access can be used what
it was meant for with cpu side invalidation/flushing and stuff like that,
while having pretty clear handover/ownership rules and hopefully not doing
no unecessary flushes. And all that while allowing device acces to be
pipelined. Worst case the exporter has to insert some pipelined cache
flushes as a dma_fence pipelined work of its own between the device access
when moving from one device to the other. That last part sucks a bit right
now, because we don't have any dma_buf_attachment method which does this
syncing without recreating the mapping, but in reality this is solved by
caching mappings in the exporter (well dma-buf layer) nowadays.

True concurrent access like vk/compute expects is still a model that
dma-buf needs to support on top, but that's a special case and pretty much
needs hw that supports such concurrent access without explicit handover
and fencing.

Aside from some historical accidents and still a few warts, I do think
dma-buf does support both of these models. Of course in the case of
gpu/drm drivers, userspace must know whats possible and act accordingly,
otherwise you just get to keep all the pieces.
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
