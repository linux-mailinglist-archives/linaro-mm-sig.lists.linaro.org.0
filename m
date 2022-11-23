Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B59635DD2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 13:53:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8CF983EDC0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 12:53:29 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by lists.linaro.org (Postfix) with ESMTPS id D3EA83EC70
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 12:53:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=kbHo21c+;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.170 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f170.google.com with SMTP id w9so11090237qtv.13
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 04:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MWtQ+HQ7UjlTxeOZBwuIDBaW841V6JDDje6JFtn0Gm8=;
        b=kbHo21c+VjBArF8kANL4SpDL1ev6zm/1Ww3D2+PzFYwurEg6+qp0EuSseviqrfx0/f
         GBqzJ0OGcTLoYmbeuC8JAB6o+8R5apVCWygPdTWQ2c7MKRJjPHrgxLCuqTAoFxaipqLQ
         lwA5s+wmzlg+lUYLRa5WyG0bwo4VK6KpsD/ghuPmnzgzflFHqvidZvmCxARhE95E6gCM
         HiLT2lam0W46lxxjmcnKoGA64c1s8wzvk/9iVZg2JJlQNg0SPHCoC0/4GQrQnzmoV/Ye
         LUltVgutM1DaNNaG+TkFxWH4RzuBPtyDYVNo6Hg9hB4qhcbCuod1kx7H6CzyfxfwTqUg
         p8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MWtQ+HQ7UjlTxeOZBwuIDBaW841V6JDDje6JFtn0Gm8=;
        b=z0nQ7+LD/bkvlvIkTTKxziBLy2Emjc/cacYwqGJDHi5k729Ien+x0SmfYqEKLn9vJm
         hQO48RTAiCp9lDdhLUJfgl8FkL/dw9ppE38o6t8gOLhH7w70foUGGOl87/GoM5e+7PBR
         Fh8zm9YZvdIMRaCgjWzhGGb59dqHEjRcRLretUhaRRVipX+ewgZRw5Gk3e2b2LlA/fS2
         qHRMUnEPbdNQtAcHub52gXWiKf88S+7jJZfphdfmVK3pP9chZxz+/uE+OsrQjLBmmVtm
         l1jcXPZIzdPG9vVc2eAurzbO9WI6Ha1E11ZSDQqk3q9o/WljTEXa1E/K/2rXv4HucTLm
         yFcQ==
X-Gm-Message-State: ANoB5pl6rjqB3pTlvdsHxRZykjRn7AjEax3rTK0y0MaS5WKMEGJH3WH9
	S/1ePN46QjcRd6rdmfiUvD6MwA==
X-Google-Smtp-Source: AA0mqf5sY0FR2qWwiQ5/kTR4M+a6Z0BMf66P6/CLTclatyf0ZZNmbzpD51oJTq4KjYinih+bEDBsbQ==
X-Received: by 2002:ac8:754b:0:b0:3a5:fbb6:b0fa with SMTP id b11-20020ac8754b000000b003a5fbb6b0famr26154000qtr.665.1669208000539;
        Wed, 23 Nov 2022 04:53:20 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id d5-20020ac85445000000b0039492d503cdsm9751175qtq.51.2022.11.23.04.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 04:53:19 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1oxpFe-00AJLy-Np;
	Wed, 23 Nov 2022 08:53:18 -0400
Date: Wed, 23 Nov 2022 08:53:18 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Y34XvmtHfb4ZwopN@ziepe.ca>
References: <Y30Z4VxT7Wdoc1Lc@ziepe.ca>
 <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
 <Y30kK6dsssSLJVgp@ziepe.ca>
 <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca>
 <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
X-Rspamd-Queue-Id: D3EA83EC70
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.160.170:from,47.55.122.23:received];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.170:from];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-0.997];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:dkim,mail-qt1-f170.google.com:rdns,mail-qt1-f170.google.com:helo];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mail-qt1-f170.google.com:rdns,mail-qt1-f170.google.com:helo,ziepe.ca:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6UU2KQJPBOV6T2BYCZ23ABAA6SYEVDF6
X-Message-ID-Hash: 6UU2KQJPBOV6T2BYCZ23ABAA6SYEVDF6
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6UU2KQJPBOV6T2BYCZ23ABAA6SYEVDF6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMjMsIDIwMjIgYXQgMDE6NDk6NDFQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gQW0gMjMuMTEuMjIgdW0gMTM6NDYgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6
DQo+ID4gT24gV2VkLCBOb3YgMjMsIDIwMjIgYXQgMTE6MDY6NTVBTSArMDEwMCwgRGFuaWVsIFZl
dHRlciB3cm90ZToNCj4gPiANCj4gPiA+ID4gTWF5YmUgYSBHRlAgZmxhZyB0byBzZXQgdGhlIHBh
Z2UgcmVmZXJlbmNlIGNvdW50IHRvIHplcm8gb3Igc29tZXRoaW5nDQo+ID4gPiA+IGxpa2UgdGhp
cz8NCj4gPiA+IEhtIHllYWggdGhhdCBtaWdodCB3b3JrLiBJJ20gbm90IHN1cmUgd2hhdCBpdCB3
aWxsIGFsbCBicmVhayB0aG91Z2g/DQo+ID4gPiBBbmQgd2UnZCBuZWVkIHRvIG1ha2Ugc3VyZSB0
aGF0IHVuZGVyZmxvd2luZyB0aGUgcGFnZSByZWZjb3VudCBkaWVzIGluDQo+ID4gPiBhIGJhY2t0
cmFjZS4NCj4gPiBNdWNraW5nIHdpdGggdGhlIHJlZmNvdW50IGxpa2UgdGhpcyB0byBwcm90ZWN0
IGFnYWluc3QgY3Jhenkgb3V0IG9mDQo+ID4gdHJlZSBkcml2ZXMgc2VlbXMgaG9ycmlibGUuLg0K
PiANCj4gV2VsbCBub3Qgb25seSBvdXQgb2YgdHJlZSBkcml2ZXJzLiBUaGUgaW50cmVlIEtWTSBn
b3QgdGhhdCBob3JyaWJsZQ0KPiB3cm9uZyBhcyB3ZWxsLCB0aG9zZSB3aGVyZSB0aGUgbGF0ZXN0
IGd1eXMgY29tcGxhaW5pbmcgYWJvdXQgaXQuDQoNCmt2bSB3YXMgdGFraW5nIHJlZnMgb24gc3Bl
Y2lhbCBQVEVzPyBUaGF0IHNlZW1zIHJlYWxseSB1bmxpa2VseT8NCg0KPiA+IFRoZSBXQVJOX09O
KHBhZ19jb3VudChwKSAhPSAxKSBzZWVtcyBsaWtlIGEgcmVhc29uYWJsZSB0aGluZyB0byBkbw0K
PiA+IHRob3VnaCwgdGhvdWdoIHlvdSBtdXN0IGNvbWJpbmUgdGhpcyB3aXRoIHRoZSBzcGVjaWFs
IFBURSBmbGFnLi4NCj4gDQo+IFRoYXQncyBub3Qgc3VmZmljaWVudC4gVGhlIHBhZ2VzIGFyZSBy
ZWxlYXNlZCBtdWNoIGxhdGVyIHRoYW4gdGhpbmdzDQo+IGFjdHVhbGx5IGdvIHdyb25nLiBJbiBt
b3N0IGNhc2VzIHRoaXMgV0FSTl9PTiBoZXJlIHdvbid0IGhpdC4NCg0KSG93IHNvPyBBcyBsb25n
IGFzIHRoZSBwYWdlIGlzIG1hcHBlZCBpbnRvIHRoZSBQVEUgdGhlcmUgaXMgbm8gaXNzdWUNCndp
dGggY29ycnVwdGlvbi4gSWYgZG1hYnVmIGNoZWNrcyB0aGUgcmVmY291bnQgYWZ0ZXIgaXQgZG9l
cyB0aGUgdW5tYXANCm1hcHBpbmcgcmFuZ2UgaXQgc2hvdWxkIGNhdGNoIGFueSBib2d1cyBwaW4g
dGhhdCBtaWdodCBiZSBjb25mdXNlZA0KYWJvdXQgYWRkcmVzcyBjb2hlcmVuY3kuDQoNCkphc29u
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
