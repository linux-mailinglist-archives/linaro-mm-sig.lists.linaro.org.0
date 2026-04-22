Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aA9jJSVI6mkhxgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:26:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F17A454DA3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:26:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FBF3404DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 16:26:12 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id 7871A3F727
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 07:51:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.com header.s=google header.b=ghn6fmt6;
	dmarc=pass (policy=quarantine) header.from=suse.com;
	spf=pass (lists.linaro.org: domain of ptesarik@suse.com designates 209.85.221.42 as permitted sender) smtp.mailfrom=ptesarik@suse.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-43d7dab87e1so461201f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 00:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1776844271; x=1777449071; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JoRr8QDMIzfqgX7VNwrYeGw2tZtA7cdSKtjPSj3Z59k=;
        b=ghn6fmt6X+6aE6ey1oqQRPOn+vJW/qb6GRm/nkMhkWieA9qOvCtc1FvszkZn06MqUX
         3VCY+mwASOFqRh93ZEx3216zIUUm262+PSIwSD7O1I/Qs89JEJ6UZ04KQUCtcdTV41SJ
         uaHbTl3ZbERVtXvdgMN7Z/WeVbicnZI7p9tLPprfzOjnbBStRiCXLjoEPHb90EevlyUr
         jpalaBiE4NXcAeghDJ1aF1tC7DIySHXOg1fMXF13COABlGRcx+6dTlmIoD8yif7domOp
         69xANfVrwuFTlw+vVA4PrtuUfnLoqoztxq/TmlNiLVR56qTQFwgeOO6NQL45OMhDlYW+
         7thQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776844271; x=1777449071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JoRr8QDMIzfqgX7VNwrYeGw2tZtA7cdSKtjPSj3Z59k=;
        b=BRYicRqq26ZedA3eQP+BHhOdjQRUAj+lPxIocboISmmaX2xW29NXdLK8mRmRxzNskD
         AzwcWsAJBef4W9d4+/O8bcEZnH7hMK4Py4TQfnZypg2mr95x3QEoChbX9N6KNcfjuuVt
         zjO37nL8Ojc+Wyd+EI8P7oIwY+9lh9ZaHnmV4qM2bFQR944j9LCAU/MBoN+MGI54Db6G
         fMwi5pDJMIx6Ukx3zaJv1hc94xE5JZZNB6ipKWIoZFpGcgmwKholN41BkH/B/RRiD0ga
         o12LCY9bnCMJJAB1NdKr70vpgOc5iyEsWZ5LAffuhKaEgiIGyXpYPnO3E8BhnfNpaJdj
         ZIMA==
X-Forwarded-Encrypted: i=1; AFNElJ9vCPyB5lLi4hql72EabTpCA45dnWwBtCMpNsjPLh3slofJXmDfCqGExMkG8dmSNPG1Mhnf70gb9dbu+rVC@lists.linaro.org
X-Gm-Message-State: AOJu0YwwfJzX6nkKATCz+rgn3CSk4H8h6fPqPPgTAuy0Xz8RKKH0lg8s
	5ridrTiNuZ4kOD0jlxNqEewDF3wokEvboxao0Dwu8TBiD+9qzgcAn0ClMyYGwVe6t/o=
X-Gm-Gg: AeBDiesGcMRqJ3HRloZeB9M53gzgPJpMitbux879obxPtxdxlblFbOPBKLvPxddUWr3
	Fw1WfnxUpSa3TCU0aMdsab+arJWS+mWFYx/EzAQe8wNBJKACxzhXkvAzqul1xStB87S799X0qU1
	gTlrckHFU1Z64REtcyz/TlC/VO4cbamE8HupCoyIuM0GD9thlsQuIOY/DHOnwsELSRAFWJD5+gf
	4VUPnh//Tb+aVJiBbkuyvo1XOu5SX941QHHiun0wDwTyPGppvjHxcrP77VlkfosTXWcuKLk6SUb
	70vqp/KxKV3aj+ZK7H6RR/8PkeA3IQAnUOEQ9D3Y8Ru4QR264HMPrajmiyqhr0Ykf1SLf3W8dIc
	m9V1fBRbv0BEQ/N4XvVYXacGFIRI15J8C2AI4v261oSiIfybT5LaJwU51wC83ZBo5tsb9w8Q0KI
	7cW6xJMNnxCpkccpQ/q8Rrurg4vAEQQg/ynmajFPpI2g3JGSL2lC3YiBQ1CjA0ICnq9LNFRa9um
	DoI2NeK9iBGrzIQGDD50VlMXrY=
X-Received: by 2002:a05:600c:314c:b0:48a:5664:f44a with SMTP id 5b1f17b1804b1-48a56650076mr45995745e9.2.1776844271346;
        Wed, 22 Apr 2026 00:51:11 -0700 (PDT)
Received: from mordecai (dynamic-2a00-1028-83b8-1e7a-3010-3bd6-8521-caf1.ipv6.o2.cz. [2a00:1028:83b8:1e7a:3010:3bd6:8521:caf1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e4d6casm39579398f8f.32.2026.04.22.00.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 00:51:10 -0700 (PDT)
Date: Wed, 22 Apr 2026 09:51:04 +0200
From: Petr Tesarik <ptesarik@suse.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20260422095104.1b3c4132@mordecai>
In-Reply-To: <20260421121004.GA3611611@ziepe.ca>
References: <20260325192352.437608-1-jiri@resnulli.us>
	<20260325192352.437608-2-jiri@resnulli.us>
	<yq5atst6ywbl.fsf@kernel.org>
	<4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
	<yq5awly0d504.fsf@kernel.org>
	<tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
	<20260421121004.GA3611611@ziepe.ca>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: ptesarik@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CONEDZVL5HZTQSIH5WETDOYAYRXCH6J2
X-Message-ID-Hash: CONEDZVL5HZTQSIH5WETDOYAYRXCH6J2
X-Mailman-Approved-At: Thu, 23 Apr 2026 16:26:03 +0000
CC: Jiri Pirko <jiri@resnulli.us>, "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CONEDZVL5HZTQSIH5WETDOYAYRXCH6J2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[suse.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[suse.com:s=google];
	DATE_IN_PAST(1.00)[32];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ptesarik@suse.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[suse.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:email,linaro.org:email]
X-Rspamd-Queue-Id: 2F17A454DA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 21 Apr 2026 09:10:04 -0300
Jason Gunthorpe <jgg@ziepe.ca> wrote:

> On Tue, Apr 21, 2026 at 01:53:31PM +0200, Jiri Pirko wrote:
> > >> You reach there when is_swiotlb_force_bounce(dev) is true and
> > >> DMA_ATTR_CC_SHARED is set. What am I missing?
> > >>  
> > >
> > >So a swiotlb_force_bounce will not use swiotlb bouncing if
> > >DMA_ATTR_CC_SHARED is set ?   
> > 
> > Correct. Bouncing does not make sense in this case, as shared memory is
> > already being mapped.  
> 
> It is a little bit mangled, there are many reasons force_swiotlb can
> be set, but we loose them as it flows through - swiotlb_init()
> just has a simple SWIOTLB_FORCE
> 
> Ideally DMA_ATTR_CC_SHARED would skip swiotlb only if it is being
> selected for CC reasons. For instance if you have the swiotlb force
> command line parameter I would still expect it bounce shared memory.
> 
> Arguably I think this arch flow is misdesigned, the
> is_swiotlb_force_bounce() should not be used for CC. dma_capable() is
> the correct API to check if the device can DMA to the presented
> address, and it will trigger swiotlb_map() just the same without
> creating this gap.

Seconded.

Then again, the whole DMA mapping logic is extremely convoluted, with
dmaops, direct, CMA, and swiotlb, so I'm no longer sure there is one
undisputable way where CC shared mappings should be added to the mix.

Has anyone considered a cleaner design yet? If yes, I'm volunteering to
help implement it. If not, then please ignore me as a random rant.

Petr T
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
