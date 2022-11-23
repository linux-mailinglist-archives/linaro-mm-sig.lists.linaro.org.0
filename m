Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2C76365C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 17:27:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 81D753EDC0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 16:27:07 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by lists.linaro.org (Postfix) with ESMTPS id 3FC273EE5F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 16:26:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b="Np4/bmkb";
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.172 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f172.google.com with SMTP id c2so871741qko.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 08:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MVWe1KbwH32KSdOuQUG2Cu353SfSlMLZuLamaD0dXtw=;
        b=Np4/bmkbkzbftxGu4Xfe3xPQnjtFBVjVs43hK0IMuIqj9d2b1aoHPdKTK7d9Ke8toz
         vOgB2vyRSUHIOeOu08dhDULtwQ5j+Nbp3OXGGHP8uw0vYLcrZi8vWive1qZKcSt9hoRV
         jFsR4rVjQqfhTeGYX8ZG5pyjJ3Eg2qkFKwYOYV1JnyWVyaKQd5Rmsk3g9LEj/9JeMwHW
         amUNSpUWJBWWt+UHDSHxKcCBFghFqojIUB4o8Z7v5GEjrMyNSaiD1O7YOJziZes7RGDa
         +2zg/YESx8k6j6m/4J/9pN9kTb9ioXiCa5Zk1vAlP3lGUhhmojae4twzM8At5SJfTPkR
         FaYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MVWe1KbwH32KSdOuQUG2Cu353SfSlMLZuLamaD0dXtw=;
        b=M+b8lTmyGL4FFr/2YCjEOtIr/RePdBh8zTE+21zuBDXWao748ap1Z/FziYY3+njLUb
         aSI9G2wj7F4COSMAQa0SQVz7tX8fxXaemUB0Iia69GpPeBij/EOaIZDYH5UqnqvRkCAl
         4Z5b3XzpA3nma9YHV7kFIdYLkk535NSf/tSLzZQ7mnE0OP781TLjnHLMNIURHt1Hp13R
         SAI0HLoeTKPZy6aZ+DKFBPtKiXAu5pxRSyJRha+qOLyWrp8UGGdYAGEfuq43y8lvGqi+
         BQD/x+BTTbx9pyygSAbn9o6S0yKdoiJxZtkWrJnCagRRbbZSja7Fh9pX0a8gmGZP2u4f
         wGDg==
X-Gm-Message-State: ANoB5pmZMBvP5xPOhMsgl6OfGqDOFEVYbS+Jqnz2KcJ3+Az2knlZBfV3
	5i/wgIX9IzlrvCqfb51wOTp4Xw==
X-Google-Smtp-Source: AA0mqf4OyB3Ehnx6E7JWKWLmbM/ehJ6uXDD6TAq7u3b6JJ9+PO7nvAjKFynqi4t74Jyi+NjK8gQVJQ==
X-Received: by 2002:a05:620a:2795:b0:6ec:51cd:c376 with SMTP id g21-20020a05620a279500b006ec51cdc376mr22947878qkp.300.1669220810961;
        Wed, 23 Nov 2022 08:26:50 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id q25-20020a05620a2a5900b006ee7923c187sm12521991qkp.42.2022.11.23.08.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 08:26:50 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1oxsaH-00AONK-SY;
	Wed, 23 Nov 2022 12:26:49 -0400
Date: Wed, 23 Nov 2022 12:26:49 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <Y35JyVM/jvYjjDb+@ziepe.ca>
References: <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca>
 <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca>
 <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
 <Y34gBUl0m+j1JdFk@ziepe.ca>
 <CAKMK7uEzaUjroODbWe4DtxHQ+gmr7_DVK+fUJjAgMsgP61uGSQ@mail.gmail.com>
 <Y343ijGoqyf73d+I@ziepe.ca>
 <dcb88724-c68e-6f2a-03d5-0641d2e68ec6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcb88724-c68e-6f2a-03d5-0641d2e68ec6@amd.com>
X-Rspamd-Queue-Id: 3FC273EE5F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.41 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.91)[99.62%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.172:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: H4IWOPTI52NBBPHMMFQXLQBHYJG2UYIA
X-Message-ID-Hash: H4IWOPTI52NBBPHMMFQXLQBHYJG2UYIA
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H4IWOPTI52NBBPHMMFQXLQBHYJG2UYIA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMjMsIDIwMjIgYXQgMDQ6MTU6MDVQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiBJIGhhdmUgbm90IHRoZSBzbGlnaHRlc3QgaWRlYSBob3cgcGVvcGxlIGdv
dCB0aGlzIGltcHJlc3Npb24sIGJ1dCBJIGhhdmUNCj4gaGVhcmQgaXQgc28gbWFueSB0aW1lIGZy
b20gc28gbWFueSBkaWZmZXJlbnQgc291cmNlcyB0aGF0IHRoZXJlIG11c3QgYmUgc29tZQ0KPiBj
b21tb24gY2F1c2UgdG8gdGhpcy4gSXMgdGhlIG1heWJlIHNvbWUgYm9vayBvciB0dXRvcmlhbCBo
b3cgdG8gc29waGlzdGljYXRlDQo+IGJyZWFrIHRoZSBrZXJuZWwgb3Igc29tZXRoaW5nIGxpa2Ug
dGhpcz8NCj4gDQo+IEFueXdheSBhcyBmYXIgYXMgSSBjYW4gc2VlIG9ubHkgY29ycmVjdCBhcHBy
b2FjaCB3b3VsZCBiZSB0byB1c2UgYW4gTU1VDQo+IG5vdGlmaWVyIG9yIG1vcmUgaGlnaCBsZXZl
bCBobW1fcmFuZ2VfZmF1bHQoKStzZXEgbnVtYmVyLg0KDQpJdCBhbHJlYWR5IHVzZXMgYSBtbXUg
bm90aWZpZXIsIHRoaXMgaXMgd2h5IEkgaGF2ZSBubyBpZGVhIHdoYXQgdGhlDQpwYWdlIHJlZiBp
cyBkb2luZy4uDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
