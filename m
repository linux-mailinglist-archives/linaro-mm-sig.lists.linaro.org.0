Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA606365E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 17:34:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFABC3EE73
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 16:34:06 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id D1D933EC37
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 16:33:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=LTaFlYw0;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.53) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f53.google.com with SMTP id s5so25546676edc.12
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 08:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vQ8nm6+WyKeJ4NSkaQqYp2teKXcJsmSR2OlnL5nJCng=;
        b=LTaFlYw0Pm8utr+zS/UXk0FrQTM6S4ZrXc7dE2wTm7nTS9rZ8ucryQq8shd4RhG9kc
         r71lmcHkASsmyfN1/CaYdQBfvLaqjDdGshMjTLB6NY6FGg2bX5UtJmqsuDDXnT6Fjk47
         ERYCfdANhr7rbF2w+N6ES5m3u7CEOUYzqV9sw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vQ8nm6+WyKeJ4NSkaQqYp2teKXcJsmSR2OlnL5nJCng=;
        b=58g20c9uiJ/tJPsguA+wLrQGtHVnRvNNmeK3XaTb8Ce3WwOFIUlMakaVP2n5ssaVyS
         vrwcyuD97dVKx/K/isd5CKSu3LKOswBN6UjddIyIVJotcGHFgDPzZMRNSnljMyI3dokh
         WZekclQg69RDJsX0YJi+h2JXvX/KwoTmgiflpQBalvr42kEYpc/PZsUiRoLwBT8yxe6v
         AphxSwGAgOa/jxDDRfwjqi192+KKhWbdQRJ5VLSC2sTPNJBBOBENbm7VP8TwDwJAKzDD
         +A2gPpcabYdXadibhAmHSDQ1kJqgdFe75KWY3jTyq7iOE77y+vw0jqIml28o38FB/Lye
         nuhg==
X-Gm-Message-State: ANoB5pn1CO7wu4iSHRXwnX4u75IOuTzJzG16xiDTT7xrv0pVRBLDjMLt
	ZVMfb0bM9kPYI+7LlotVcKOTJA==
X-Google-Smtp-Source: AA0mqf4Enr1qM6eoPL9aF0axGh9DxgF+M99FiwcrAbYtdUzrx2lqXegdh98KtI4edE32ukwrcdXh6Q==
X-Received: by 2002:a05:6402:3719:b0:461:4f34:d8f4 with SMTP id ek25-20020a056402371900b004614f34d8f4mr26937012edb.144.1669221236923;
        Wed, 23 Nov 2022 08:33:56 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id ez6-20020a056402450600b004643f1524f3sm7770969edb.44.2022.11.23.08.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 08:33:56 -0800 (PST)
Date: Wed, 23 Nov 2022 17:33:54 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Pekka Paalanen <ppaalanen@gmail.com>
Message-ID: <Y35LcspZ385IC4lJ@phenom.ffwll.local>
References: <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
 <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
 <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
 <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
 <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
 <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
 <Y3zeYnufgXJHQAbN@phenom.ffwll.local>
 <ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
 <20221123103338.238571e1@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221123103338.238571e1@eldfell>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-Rspamd-Queue-Id: D1D933EC37
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,ffwll.ch,gmail.com,ndufresne.ca,chromium.org,pengutronix.de,fooishbar.org,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:url,ffwll.ch:dkim,amd.com:email];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.208.53:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.53:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IVZ3CDZPGCOT74QW775SRENETVXAD4WG
X-Message-ID-Hash: IVZ3CDZPGCOT74QW775SRENETVXAD4WG
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Clark <robdclark@gmail.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IVZ3CDZPGCOT74QW775SRENETVXAD4WG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 23, 2022 at 10:33:38AM +0200, Pekka Paalanen wrote:
> On Tue, 22 Nov 2022 18:33:59 +0100
> Christian K=F6nig <christian.koenig@amd.com> wrote:
>=20
> > We should have come up with dma-heaps earlier and make it clear that=20
> > exporting a DMA-buf from a device gives you something device specific=20
> > which might or might not work with others.
> >=20
> > Apart from that I agree, DMA-buf should be capable of handling this.=20
> > Question left is what documentation is missing to make it clear how=20
> > things are supposed to work?
>=20
> Perhaps somewhat related from Daniel Stone that seems to have been
> forgotten:
> https://lore.kernel.org/dri-devel/20210905122742.86029-1-daniels@collabor=
a.com/
>=20
> It aimed mostly at userspace, but sounds to me like the coherency stuff
> could use a section of its own there?

Hm yeah it would be great to land that and then eventually extend. Daniel?
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
