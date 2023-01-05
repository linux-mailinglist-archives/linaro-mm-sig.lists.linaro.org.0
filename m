Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B74EA65EA21
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Jan 2023 12:46:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB1323F045
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Jan 2023 11:46:41 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by lists.linaro.org (Postfix) with ESMTPS id 4CC4E3EF9A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Jan 2023 11:46:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=GgmdHZf5;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.41) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f41.google.com with SMTP id co23so35870243wrb.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Jan 2023 03:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pOH8zi6RR/eYdWs9hLvLYkO27payH15xQ5o2JpEneN0=;
        b=GgmdHZf5pmfo56symx+obJQB4jM3Rgz0vzH8laXYFoP4a2USJe8vM+l6iSETZFrl2Q
         KcnnF8V+BUV4WySvRf1baceB71BkjA3SuwLuAYzP8bO3kLKD/mjHYN//hHIj4p39LmIW
         /TlpUph5nVBMquBDEH2D0zm3HCtyPOyvqFVa8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pOH8zi6RR/eYdWs9hLvLYkO27payH15xQ5o2JpEneN0=;
        b=gT3RQEOL/NPX8Isy6JNC0SZA2pUFRPbmmqqQuHJNabNXgXvgTpJbq0Cwd4amab+tXy
         UemyJVoqsouaqzTVxWQ/2NPYL/ImMeErx8gXKLfBsjdzuLQ9dBOLee1FAK3a8p/zWRKa
         FNp+cLiVvkYoPNDXpZxLjTyXV63uWQmo7Fh395KRhH1DBlj1dHF7q0rfubQp4mqHSdGH
         wPePgfWGQAga6VuyOaJDlkuMpFv99JNwy2xkTr+P1siGyd4bgXmRYnD6Ufx4+URagC6h
         NYH7vUs6jP7GKH2KYRAWs/AakpiT1AST/ViHswz7z96Poxz/K3SV8J542wkHljmnE7xS
         IWgw==
X-Gm-Message-State: AFqh2kqmWj/qZdk3k+TiWc+AzinPNbmQD1Qux3tWb/T5EFmNhcNeqqWs
	OEBHU910sDgyBqs6Y3Z3GUNzvQ==
X-Google-Smtp-Source: AMrXdXuT1Ef/DURzQUPyUJiBfHJ9nC/lNGhv8tRkVkHajAgK8zACdpVtvcC+U0CawWYRbxYeWy9v4Q==
X-Received: by 2002:adf:ed47:0:b0:28f:6fe6:f963 with SMTP id u7-20020adfed47000000b0028f6fe6f963mr15613610wro.22.1672919196343;
        Thu, 05 Jan 2023 03:46:36 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id x16-20020a5d6510000000b002755e301eeasm34321842wru.100.2023.01.05.03.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 03:46:35 -0800 (PST)
Date: Thu, 5 Jan 2023 12:46:33 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <Y7a4mWBE1j/B46JP@phenom.ffwll.local>
References: <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
 <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
 <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
 <Y3zeYnufgXJHQAbN@phenom.ffwll.local>
 <ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
 <20221123103338.238571e1@eldfell>
 <Y35LcspZ385IC4lJ@phenom.ffwll.local>
 <ba6e42f04c436d93bfa71d5dee7fd35ef2245073.camel@ndufresne.ca>
 <Y4cw36MUO+ftP468@phenom.ffwll.local>
 <24b660e2-ea38-7038-c182-156e1371fdcb@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24b660e2-ea38-7038-c182-156e1371fdcb@amd.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,ndufresne.ca,gmail.com,chromium.org,pengutronix.de,fooishbar.org,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.221.41:from];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.41:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4CC4E3EF9A
X-Spamd-Bar: ---
Message-ID-Hash: DCYOILBM5AUISPIW75UWBYSHAZTIPAIH
X-Message-ID-Hash: DCYOILBM5AUISPIW75UWBYSHAZTIPAIH
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Nicolas Dufresne <nicolas@ndufresne.ca>, Pekka Paalanen <ppaalanen@gmail.com>, Rob Clark <robdclark@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DCYOILBM5AUISPIW75UWBYSHAZTIPAIH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 02, 2022 at 04:27:08PM +0100, Christian K=F6nig wrote:
> Am 30.11.22 um 11:30 schrieb Daniel Vetter:
> > On Fri, Nov 25, 2022 at 11:40:04AM -0500, Nicolas Dufresne wrote:
> > > Le mercredi 23 novembre 2022 =E0 17:33 +0100, Daniel Vetter a =E9crit=
=A0:
> > > > On Wed, Nov 23, 2022 at 10:33:38AM +0200, Pekka Paalanen wrote:
> > > > > On Tue, 22 Nov 2022 18:33:59 +0100
> > > > > Christian K=F6nig <christian.koenig@amd.com> wrote:
> > > > >=20
> > > > > > We should have come up with dma-heaps earlier and make it clear=
 that
> > > > > > exporting a DMA-buf from a device gives you something device sp=
ecific
> > > > > > which might or might not work with others.
> > > > > >=20
> > > > > > Apart from that I agree, DMA-buf should be capable of handling =
this.
> > > > > > Question left is what documentation is missing to make it clear=
 how
> > > > > > things are supposed to work?
> > > > > Perhaps somewhat related from Daniel Stone that seems to have been
> > > > > forgotten:
> > > > > https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Flore.kernel.org%2Fdri-devel%2F20210905122742.86029-1-daniels%40collabora=
.com%2F&amp;data=3D05%7C01%7Cchristian.koenig%40amd.com%7C45786a08e6dc4af28=
16508dad2bdf957%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63805401129352=
1624%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DGjsoJGNoPozTS2SWeeirURzQat=
I5vfl9%2B%2BfzoavgTbw%3D&amp;reserved=3D0
> > > > >=20
> > > > > It aimed mostly at userspace, but sounds to me like the coherency=
 stuff
> > > > > could use a section of its own there?
> > > > Hm yeah it would be great to land that and then eventually extend. =
Daniel?
> > > There is a lot of things documented in this document that have been s=
aid to be
> > > completely wrong user-space behaviour in this thread. But it seems to=
 pre-date
> > > the DMA Heaps. The document also assume that DMA Heaps completely sol=
ves the CMA
> > > vs system memory issue. But it also underline a very important aspect=
, that
> > > userland is not aware which one to use. What this document suggest th=
ough seems
> > > more realist then what has been said here.
> > >=20
> > > Its overall a great document, it unfortunate that it only makes it in=
to the DRM
> > > mailing list.
> > The doc is more about document the current status quo/best practices,
> > which is very much not using dma-heaps.
> >=20
> > The issue there is that currently userspace has no idea which dma-heap =
to
> > use for shared buffers, plus not all allocators are exposed through hea=
ps
> > to begin with. We had this noted as a todo item (add some device->heap
> > sysfs links was the idea), until that's done all you can do is hardcode
> > the right heaps for the right usage in userspace, which is what android
> > does. Plus android doesn't have dgpu, so doesn't need the missing ttm
> > heap.
>=20
> Hui? Why do you think we should have a TTM heap in the first place?

[sorry for the really late reply]

Extremely late reply, but p2p buffer sharing when you want it in vram is
only something ttm can provide you. And if the goal is to have all buffer
sharing needs served by dma-heaps, then eventually that'll be needed too.

But probably totally fine to just not have it for another few years
(decades?).

> As far as I can see we need three different ways of allocation:
> 1. Normal system memory.
> 2. CMA based.
> 3. Device specific.
>=20
> When any of the participating devices needs CMA then user space must use =
the
> CMA heap, when any of the participating devices needs device specific mem=
ory
> then user space must use device specific memory (from that device).
>=20
> It still can be that two devices can't talk with each other because both
> needs the buffer to be allocated from device specific memory for a
> particular use case, but at least all the cases for both none CPU cache
> coherent ARM devices as well as device specific memory for scanout should=
 be
> handled with this.

Yeah on ARM this should be enough.
-Daniel

>=20
> Regards,
> Christian.
>=20
> >=20
> > But yeah the long-term aspiration also hasn't changed, because the
> > dma-heap todo list is also very, very old by now :-/
> > -Daniel
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
