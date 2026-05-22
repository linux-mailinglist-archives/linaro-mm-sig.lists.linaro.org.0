Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEeXLa1YEGocWgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 15:22:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 462F75B512B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 15:22:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F9084098B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 13:22:52 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by lists.linaro.org (Postfix) with ESMTPS id 3DFA14098B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2026 13:22:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=H8HHfB5x;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.170 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-902deb2412fso888063285a.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2026 06:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1779456162; x=1780060962; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iQuBEkHkP60iYe92EnrAsVFZKioHOoQ3fMLBNw/bYhY=;
        b=H8HHfB5xqyN495rVM28FFqe69Bx5TzLY8UjozM/PClnPxdGv/RRa6SmD11gnUZ/Eaq
         NSo0z8l/0VnLKKuM4Jre/ZXy9L8C7ogRk1Tz7jxrxRdzb95e+wcAaZiXfDdbt6MM685j
         Ik9VpKw7XLrH6O6WLWJaxViNbpGFujOJBosQeHVPVkmvDcy/lTI70TIyAJyPyj9M0Hra
         yCgoRgziaTpxsfKE1m/CZMt2elX0FlbGjlXQV0pR+lim2JcPrE6SNUoUEnsFewMDVuZv
         ZQU2KtZB+nQB7Ymiwf+fbR1nVGxP+TiEWpxggecmcZSRQkn97HDLMQj+KIVzaHSQEbSj
         nAXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779456162; x=1780060962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iQuBEkHkP60iYe92EnrAsVFZKioHOoQ3fMLBNw/bYhY=;
        b=JOjtz3itZ7SCa5pmbq1XGMkqU1YgD1ztNdsxGzwyxwHf6STSABcUEgbmqVNIGSy2zB
         cQuZfIdMwhFBDJ+SLr1cSqD+LIVzlO/cy5zcYubpL1pOAe/ncz0AqgU1Fh9/Lli3E7eZ
         fDFU4ka0DsvFUibyBzvTV8o4LTf07EjQwSSQFo6f9NyxHdLKglf7xwsQlxV22iw+Mg/K
         4iitQsx2dy3tg3rIeDE25bjNvpFZJiURohK45GpWiiRQ7ksIQuLURC+b15feKKHBrgjy
         bcEBMdG+nDitFsBQ8XWpF3oW/7N/jE0uy01hTG0jKi7OUMSAycEmEx5Q5YeOLTX8PM3M
         CM5g==
X-Forwarded-Encrypted: i=1; AFNElJ+nF5HK2BiOnZOAFUNOrH7Niye7A7bB0Zr+dQX5dXPbjHOGaLm42W+mBWUTLNTUSMKrMcFQjAxNB28uWG8V@lists.linaro.org
X-Gm-Message-State: AOJu0YzrtLSliqkrM0h0cuO6hdMLWD/1C3Fyi9us9ZKpKBBGnDusCMmX
	o9OmTVKWkOELlBLnkHwWU1mDKp0J6BHeFKetSaWZDbHg4m1RTWIjMmZFAGblYxU1ccM=
X-Gm-Gg: Acq92OFdJaWjHAOqTQ23mbguXlHMEjMtELQlXK5AE+YI2hxDNJkvur60NVLeTUQmsPK
	33JTmjpPK+5U56ODOelfiJ5lbjts95F0uBeDDmUf1sdmoIr45saJXauZMr4IdM+CwFwMb1DbGQm
	WSBlNWies4ssqXJsU/XxaTayOvxi8ZJL7rYgVlmhLpUIm7qplOhNbKJ4UQUs9JhYNSc5okW/rmT
	gDa33zeqyzVS82IKyiwEiqau9ICEdUlM0+ez6WrTl/ynsdtE6HFiYeSsMLIhYr0pepDI0PxXC3d
	/uG42IunLJ7XwHEcsSxvGC33HrH0nM2Sm+cEYjjKmWyl2aIvg8EJmo9p4KRmJcsFzjb3l4Rqh18
	IRpol2bTsNE6dayhC27BecII15jio9gSR623NV9/sdhKDeZ+ORXXm3S5k43+I3KI/QMe+qv7lcF
	YCd0Xi/5jm72DvXk+x2Gk2tEPZsD/HtcA4wZ/goLoe2kOwL1J6Tu3V/UG0OECQlaTZ96i5Qh28/
	0JjAQ==
X-Received: by 2002:a05:620a:a2da:10b0:914:ba0a:b62 with SMTP id af79cd13be357-914ba0a0df1mr206635885a.49.1779456161602;
        Fri, 22 May 2026 06:22:41 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-914bb8c7dc7sm116726285a.6.2026.05.22.06.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 06:22:41 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wQPpo-00000003hPg-2B15;
	Fri, 22 May 2026 10:22:40 -0300
Date: Fri, 22 May 2026 10:22:40 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>
Message-ID: <20260522132240.GD7702@ziepe.ca>
References: <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
 <yq5awly0d504.fsf@kernel.org>
 <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
 <20260421121004.GA3611611@ziepe.ca>
 <yq5aik9jcpzm.fsf@kernel.org>
 <20260424225514.GE804026@ziepe.ca>
 <20260426130531.GF804026@ziepe.ca>
 <yq5azf1s6aic.fsf@kernel.org>
 <20260521175420.GA7702@ziepe.ca>
 <yq5aqzn45a81.fsf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq5aqzn45a81.fsf@kernel.org>
X-Spamd-Bar: ---
Message-ID-Hash: ZQYCRKRUE7HFDQGYDPYQA6MGPWMUPYB2
X-Message-ID-Hash: ZQYCRKRUE7HFDQGYDPYQA6MGPWMUPYB2
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZQYCRKRUE7HFDQGYDPYQA6MGPWMUPYB2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	DMARC_NA(0.00)[ziepe.ca];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 462F75B512B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 10:09:26AM +0530, Aneesh Kumar K.V wrote:

> Can I convert this as an independent patch with your SOB?

Sure,

Maybe you can ignore it for your series, the intersection of CC and
P2P is non-existant right now. HW doesn't support it. Make the DMA API
follow the design assuming this patch is applied.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
