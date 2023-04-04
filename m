Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E28BA6D66AD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 17:03:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF9B03E923
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 15:03:19 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by lists.linaro.org (Postfix) with ESMTPS id AED8E3E923
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Apr 2023 15:03:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=THjN01mL;
	spf=pass (lists.linaro.org: domain of christian.gmeiner@gmail.com designates 209.85.167.173 as permitted sender) smtp.mailfrom=christian.gmeiner@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id w13so13035812oik.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Apr 2023 08:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680620588;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xvMCqRQRf/gGIv7OESh2ryqIvc636JRA//u6AB/lZ4A=;
        b=THjN01mLcxpN6nEW6PKJXdgOD1D4GaYChzH3W5H6niJWUCXWhI7RaAngZIFev3s8Gp
         oHOsZbBavP8a8/hECytyMn551H51eOcqTtRsmO89S0TzyppAHiyoHvtE2eLcRQNWQS+8
         wHitkjaufmYDX+Q7o24Oelk6ywfk9LapLfgWEhzr/FHTieviZolxgEnau83VtmiazUyf
         Zeh18rzvW87PHZy9cqMXBac7CiiFI3oYSdSEQD9WdB3PN8yQSBoFHNOLsZaDD3Y18uEO
         snrCVBXOdZKK0xBp/SHd/mpnsQ6yqCOVhlFdQLPdIyaHUpx69aLHYHC6O0Ki6XvEGkO8
         EVQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680620588;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xvMCqRQRf/gGIv7OESh2ryqIvc636JRA//u6AB/lZ4A=;
        b=715Sx7GkY2bPDquanJcmFKq0mLUAO8/jeFe/S/22McOjxbF8HbjTnkjRoPSTz41QJP
         2HyGpLuDd7NKnIgS7duAygv7hwgf5n75vIOZrhKO4Kc0sewiVQbzAN9DOZKh1S5DhhHF
         5RP2ktyCKJMzCZCHu7PI0eptoQ8UTP2wjJfV+fM8CxyUZei4gME1K1iZKY2vp1U1B6Lh
         XO3GE/ExxYuzg9Sd2QN2WBF/CNkJY7CT84XgAs/k9uD6+DOLzefw6v4tvhtZr/wuG9mb
         PYhW+ohG6yuPwEHak3OJ+H2fQVqMz62dPA/A/4nOC0Tom17rDKixeO8gh5lyG4ASIGe+
         8uaw==
X-Gm-Message-State: AAQBX9f2fsK8uTseTHN48kUgjN/jc5YHbT+Osp60apwGBKeSC3XGCE56
	EttMdQnm6zOOS7Vf30mUBedIP9He+zsf7w4yxII=
X-Google-Smtp-Source: AKy350YujKRNGsMRUoIBrj18JGfp8lOKGzmP0vrL73jovQXuRFBnIqFrFxusFkVvnVKSVyi/K382RHA1Ks4k7VxPTtw=
X-Received: by 2002:aca:120e:0:b0:387:7fe1:a5 with SMTP id 14-20020aca120e000000b003877fe100a5mr1057927ois.6.1680620588073;
 Tue, 04 Apr 2023 08:03:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200424222740.16259-1-afd@ti.com> <CAL_Jsq+4mf6QHX27knoHTXA4vnsC3swuvAH7zK1DpyaV-p_qbw@mail.gmail.com>
 <f46c097a-b2a6-6368-a8a4-e30995a54d17@ti.com> <CAH9NwWeZnDEkundm98=KL6xB9bVO3nOkk48xMF-eQnztP4DD4g@mail.gmail.com>
 <99f1da4f-810e-986d-388a-af136ade745e@ti.com>
In-Reply-To: <99f1da4f-810e-986d-388a-af136ade745e@ti.com>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Tue, 4 Apr 2023 17:02:56 +0200
Message-ID: <CAH9NwWcafkmcZd=5WN_hoJmfkwUJJrewaPnSmCK-izrC3hwKnA@mail.gmail.com>
To: Andrew Davis <afd@ti.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AED8E3E923
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.41 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.91)[99.61%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.167.173:from];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.173:from];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[]
Message-ID-Hash: 3HSOHMN6WOJA52MJV6D2N2MC47VNLHUA
X-Message-ID-Hash: 3HSOHMN6WOJA52MJV6D2N2MC47VNLHUA
X-MailFrom: christian.gmeiner@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] misc: sram: Add dma-heap-export reserved SRAM area type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3HSOHMN6WOJA52MJV6D2N2MC47VNLHUA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> > Hi Andrew
> >
> >>
> >>
> >> Okay, will split for v2.
> >>
> >>
> >
> > Was there a follow-up v2 of this patchset? AFAICT this series did not
> > make it into the mainline kernel.
> > Do you have any plans to work on it? If not I would like to help out
> > as we have a use case where we want to
> > use a dma-buf sram exporter.
> >
> >
>
> Sure, I've been keeping it alive in our evil vendor tree, but if
> there is interest upstream now I'll post a v2 and CC you.

That would be great!

-- 
greets
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
