Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B25DA6E1BDF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Apr 2023 07:45:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D4673F96D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Apr 2023 05:45:11 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by lists.linaro.org (Postfix) with ESMTPS id BB2593EBC6
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Apr 2023 05:44:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=cRdKXHm2;
	spf=pass (lists.linaro.org: domain of christian.gmeiner@gmail.com designates 209.85.210.51 as permitted sender) smtp.mailfrom=christian.gmeiner@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id k101-20020a9d19ee000000b006a14270bc7eso5803087otk.6
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Apr 2023 22:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681451099; x=1684043099;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tZiBy+s4nbaVz7xQUBVrE3MueZ5kT0/0OhDxQkzGvLM=;
        b=cRdKXHm2Iu7ZAHJaECDtu7Gkz6V6IpGrHIZvR56cIO2yGB2b0kFl2GQuPXZfvkw11+
         NggdM2nIQxGsFcPhowN8BBT5nQrhm0WAGLsMGcWsFbIz/FLdGt+JSkLyK1+8jXgt95WV
         c2DbkBv0FGrDJZpNL10DWkmkPd2wiRsTpX0R0FnD/Wi8MVxVKejVDBmtCwUIDlIXQDck
         OekcaqkZQfI2y9hj4/tAc5AmtO+yEA5DhUgkDVn63rnj+IIZUJYSRZEupnaSGuRITtk4
         yeuO3MsjLc3Bil/D/7DsHEofqi1X7pz/xsgeAshNalpNOfoDPEBwTUPibTDdGt7gd2UA
         BKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681451099; x=1684043099;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tZiBy+s4nbaVz7xQUBVrE3MueZ5kT0/0OhDxQkzGvLM=;
        b=BHyC+Q2QWVPIvFw+Lk28XrQ7Op42liNN1eUSerVaOTGfaarUHlZOorldy1z0TWNERk
         P0Td5l4oTjM05ry5+aJSuiJ9BuzOGXOhqA0cUw4MepMrU8karePcs1E/6HCpR/P6LTP6
         G2UbZS5wy4h1Xp5DLM8VS8dIE51OvSwbVR9e7ceqFptTWO7d8U4cXfPcNBPaC6pTqHH+
         e84fZ5L1UFaYKiw6wFBY5Jrp8GhjyF9Qg3VXIwHVI06RGCFB4RBW6sZukRKG5AF6Uk+Y
         5ltWmPlT/X+i1iskWWJSZ7rWn0vtQka4i0+VyvB8E3LhN1XwYmUTNaB9fuqXfgFkQ/8D
         8cnA==
X-Gm-Message-State: AAQBX9d1+llXw4R+e/+T2TCPyuzk1wYY2qjN7F3Fz9+KDLa7m1MIWJjH
	mhCmzBNSuevvjBCfBMyJEryPn1HvzHwikdMxweQ=
X-Google-Smtp-Source: AKy350bQAy2QKoumLC+mND63DDJJRSOD4a6K1PX7cJk152u+bCa7CRVsAq8WQXO+qSu+B16s2CI9ta3oOsk5ajmnRSU=
X-Received: by 2002:a05:6830:1bdc:b0:6a1:1b5c:c6db with SMTP id
 v28-20020a0568301bdc00b006a11b5cc6dbmr1159487ota.7.1681451099092; Thu, 13 Apr
 2023 22:44:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200424222740.16259-1-afd@ti.com> <CAL_Jsq+4mf6QHX27knoHTXA4vnsC3swuvAH7zK1DpyaV-p_qbw@mail.gmail.com>
 <f46c097a-b2a6-6368-a8a4-e30995a54d17@ti.com> <CAH9NwWeZnDEkundm98=KL6xB9bVO3nOkk48xMF-eQnztP4DD4g@mail.gmail.com>
 <99f1da4f-810e-986d-388a-af136ade745e@ti.com> <CAH9NwWcafkmcZd=5WN_hoJmfkwUJJrewaPnSmCK-izrC3hwKnA@mail.gmail.com>
In-Reply-To: <CAH9NwWcafkmcZd=5WN_hoJmfkwUJJrewaPnSmCK-izrC3hwKnA@mail.gmail.com>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Fri, 14 Apr 2023 07:44:47 +0200
Message-ID: <CAH9NwWfkWTXMVOY-7USgYJnBtUOYd8=TFVcPxiTgVd9AJAQH=Q@mail.gmail.com>
To: Andrew Davis <afd@ti.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BB2593EBC6
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.36 / 15.00];
	BAYES_HAM(-2.76)[98.96%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.51:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[]
Message-ID-Hash: MH4SBHY6TG345EDPLU67KRMWH6C5WTZX
X-Message-ID-Hash: MH4SBHY6TG345EDPLU67KRMWH6C5WTZX
X-MailFrom: christian.gmeiner@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] misc: sram: Add dma-heap-export reserved SRAM area type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MH4SBHY6TG345EDPLU67KRMWH6C5WTZX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Andrew

Am Di., 4. Apr. 2023 um 17:02 Uhr schrieb Christian Gmeiner
<christian.gmeiner@gmail.com>:
>
> > > Hi Andrew
> > >
> > >>
> > >>
> > >> Okay, will split for v2.
> > >>
> > >>
> > >
> > > Was there a follow-up v2 of this patchset? AFAICT this series did not
> > > make it into the mainline kernel.
> > > Do you have any plans to work on it? If not I would like to help out
> > > as we have a use case where we want to
> > > use a dma-buf sram exporter.
> > >
> > >
> >
> > Sure, I've been keeping it alive in our evil vendor tree, but if
> > there is interest upstream now I'll post a v2 and CC you.
>
> That would be great!
>

Did you find time to prepare a v2? If not, can you point me to the
evil vendor tree?


-- 
thanks
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
