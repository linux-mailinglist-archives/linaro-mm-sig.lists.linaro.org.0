Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 466A262E012
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 16:38:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 549BF3F5B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 15:38:34 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by lists.linaro.org (Postfix) with ESMTPS id 368703EF32
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 15:38:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20210112.gappssmtp.com header.s=20210112 header.b="nmbivz/k";
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.49) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f49.google.com with SMTP id c8so1399100qvn.10
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 07:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vyMHbYz7pcCdNisY9D7J4VP8a/I9/qddgBipkibQG+M=;
        b=nmbivz/kcxfBCLU/jAAuW462IWRidAqpClZ0uFErVGlRdeIegMjlU+eqvz2tbWHaEZ
         KaPYd4IZp7oHa0C8D6MDHS2KpQLwfrOWt8Pwf/VMl1wf47no3bFde2wi8BBsTAIaub2z
         rPp1tLD9bcjZErhI+nK6eVwPamcyRRT+JJjsLsPfecDz5AwAs1Sx0WPilMs0xue8sNgg
         hx/KzzWKbvqCtZ3vPY8dd289I/w5EA1RZRQBqca94LrqHUW42Sohy1FLpwEwvh2z6PWK
         2cYHwU128Itq9GXd9neoAFK30WSnxFBd97cVRMJ3qhdHOxiPmXv23PjpGPDjhtbfLjVf
         OmCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vyMHbYz7pcCdNisY9D7J4VP8a/I9/qddgBipkibQG+M=;
        b=SnRUYevAixbmdZ0hJACPSF42P8Dej/bHX7l1kR7SMs4/bmITAI/OKPcwhzGQEZSkpa
         ah3pdQWSxOfe1Qs3GjRGa7x9JDeICADWpMwWOgM0j5iAMiKWpCOmnzVfsMsJGH38t3Fh
         cEFncCSj4pXtOWzQPFRDwrcDN0MCnfDF/JDaPwE3BNaf/CpY+ydCOv8qS5bKrYlcAb1X
         8Ma2hLsEss1WzGwmcEkfOy8mQ1ozhMV6C7pchyZ8kmEfzZnHqdzt0eDw+z2uyF0cUFiK
         jZb5KVdVQPBq+kySLyQ22W7PZji15y7GqGfNVE6prIvLBkAv8smO9UfG2x1g+ZbaaJ5+
         /2xg==
X-Gm-Message-State: ANoB5pkpJunbkDKmjoOIwYN6bbxQpTez0BNB1i89iF/VO4d+wAM/R0GC
	oKi/EKfzDO8YeaJrH5EI1v7EFWuFCPTEXg==
X-Google-Smtp-Source: AA0mqf5Venn3LzgykvP/AW3ygZYkmxzaUHLCWmhJmw7owC7KwpImB6WDjiRHdsPxXKixU/hzrIG4Hw==
X-Received: by 2002:ad4:4e42:0:b0:4b8:361:4ca with SMTP id eb2-20020ad44e42000000b004b8036104camr2852335qvb.102.1668699497853;
        Thu, 17 Nov 2022 07:38:17 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id w9-20020a05620a424900b006ce2c3c48ebsm645891qko.77.2022.11.17.07.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 07:38:17 -0800 (PST)
Message-ID: <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Tomasz
	Figa <tfiga@chromium.org>
Date: Thu, 17 Nov 2022 10:38:16 -0500
In-Reply-To: <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
References: <20221020121316.3946-1-christian.koenig@amd.com>
	 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
	 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
	 <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
	 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com>
	 <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
	 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
	 <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
	 <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com>
	 <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
	 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com>
	 <4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
	 <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
	 <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
	 <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
	 <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
	 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---------
X-Rspamd-Queue-Id: 368703EF32
X-Spamd-Result: default: False [-9.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[192.222.136.102:received,209.85.219.49:from];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20210112.gappssmtp.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FREEMAIL_CC(0.00)[pengutronix.de,fooishbar.org,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20210112.gappssmtp.com:+];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.49:from]
Message-ID-Hash: O6OKWTMDB7BJYMG2EAYGPWOYV3EXSEVF
X-Message-ID-Hash: O6OKWTMDB7BJYMG2EAYGPWOYV3EXSEVF
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Stone <daniel@fooishbar.org>, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O6OKWTMDB7BJYMG2EAYGPWOYV3EXSEVF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgamV1ZGkgMTcgbm92ZW1icmUgMjAyMiDDoCAxMzoxMCArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyBhIMOpY3JpdMKgOg0KPiA+ID4gRE1BLUJ1ZiBsZXQncyB0aGUgZXhwb3J0ZXIgc2V0dXAgdGhl
IERNQSBhZGRyZXNzZXMgdGhlIGltcG9ydGVyIHVzZXMgdG8NCj4gPiA+IGJlIGFibGUgdG8gZGly
ZWN0bHkgZGVjaWRlZCB3aGVyZSBhIGNlcnRhaW4gb3BlcmF0aW9uIHNob3VsZCBnby4gRS5nLiB3
ZQ0KPiA+ID4gaGF2ZSBjYXNlcyB3aGVyZSBmb3IgZXhhbXBsZSBhIFAyUCB3cml0ZSBkb2Vzbid0
IGV2ZW4gZ28gdG8gbWVtb3J5LCBidXQNCj4gPiA+IHJhdGhlciBhIGRvb3JiZWxsIEJBUiB0byB0
cmlnZ2VyIGFub3RoZXIgb3BlcmF0aW9uLiBUaHJvd2luZyBpbiBDUFUNCj4gPiA+IHJvdW5kIHRy
aXBzIGZvciBleHBsaWNpdCBvd25lcnNoaXAgdHJhbnNmZXIgY29tcGxldGVseSBicmVha3MgdGhh
dA0KPiA+ID4gY29uY2VwdC4NCj4gPiBJdCBzb3VuZHMgbGlrZSB3ZSBzaG91bGQgaGF2ZSBhIGRt
YV9kZXZfaXNfY29oZXJlbnRfd2l0aF9kZXYoKSB3aGljaA0KPiA+IGFjY2VwdHMgdHdvIChvciBh
biBhcnJheT8pIG9mIGRldmljZXMgYW5kIHRlbGxzIHRoZSBjYWxsZXIgd2hldGhlciB0aGUNCj4g
PiBkZXZpY2VzIG5lZWQgZXhwbGljaXQgb3duZXJzaGlwIHRyYW5zZmVyLg0KPiANCj4gTm8sIGV4
YWN0bHkgdGhhdCdzIHRoZSBjb25jZXB0IEknbSBwdXNoaW5nIGJhY2sgb24gdmVyeSBoYXJkIGhl
cmUuDQo+IA0KPiBJbiBvdGhlciB3b3JkcyBleHBsaWNpdCBvd25lcnNoaXAgdHJhbnNmZXIgaXMg
bm90IHNvbWV0aGluZyB3ZSB3b3VsZCANCj4gd2FudCBhcyByZXF1aXJlbWVudCBpbiB0aGUgZnJh
bWV3b3JrLCBjYXVzZSBvdGhlcndpc2Ugd2UgYnJlYWsgdG9ucyBvZiANCj4gdXNlIGNhc2VzIHdo
aWNoIHJlcXVpcmUgY29uY3VycmVudCBhY2Nlc3MgdG8gdGhlIHVuZGVybHlpbmcgYnVmZmVyLg0K
DQpJJ20gbm90IHB1c2hpbmcgZm9yIHRoaXMgc29sdXRpb24sIGJ1dCByZWFsbHkgZmVsdCB0aGUg
bmVlZCB0byBjb3JyZWN0IHlvdSBoZXJlLg0KSSBoYXZlIHF1aXRlIHNvbWUgZXhwZXJpZW5jZSB3
aXRoIG93bmVyc2hpcCB0cmFuc2ZlciBtZWNoYW5pc20sIGFzIHRoaXMgaXMgaG93DQpHU3RyZWFt
ZXIgZnJhbWV3b3JrIHdvcmtzIHNpbmNlIDIwMDAuIENvbmN1cnJlbnQgYWNjZXNzIGlzIGEgcmVh
bGx5IGNvbW1vbiB1c2UNCmNhc2VzIGFuZCBpdCBpcyBxdWl0ZSB3ZWxsIGRlZmluZWQgaW4gdGhh
dCBjb250ZXh0LiBUaGUgYnJhY2tldGluZyBzeXN0ZW0gKGluDQp0aGlzIGNhc2UgY2FsbGVkIG1h
cCgpIHVubWFwKCksIHdpdGggZmxhZyBzdGF0aW5nIHRoZSB1c2FnZSBpbnRlbnRpb24gbGlrZSBy
ZWFkcw0KYW5kIHdyaXRlKSBpcyBjb21iaW5lZCB0aGUgdGhlIHJlZmNvdW50LiBUaGUgYmFzaWMg
cnVsZXMgYXJlIHNpbXBsZToNCg0KLSBBbiBvYmplY3Qgd2l0aCBhIHJlZmNvdW50IGhpZ2hlciB0
aGVuIDIgaXMgc2hhcmVkLCBoZW5jZSByZWFkLW9ubHkNCi0gQW4gb2JqZWN0IHdpdGggcmVmY291
bnQgb2Ygb25lLCBtYXBwZWQgZm9yIHdyaXRlcyBiZWNvbWVzIGV4Y2x1c2l2ZQ0KLSBOb24gZXhj
bHVzaXZlIHdyaXRlcyBjYW4gYmUgZG9uZSwgYnV0IHRoYXQgaGFzIHRvIGJlIGV4cGxpY2l0IChp
bnRlbnRpb25hbCksDQp3ZSBkaWRuJ3QgZ28gYXMgZmFyIGFzIFJ1c3QgaW4gdGhhdCBkb21haW4N
Ci0gV3JhcHBlcnMgYXJvdW5kIHRoZXNlIG9iamVjdCBjYW4gdXNlIG1lY2hhbmlzbSBsaWtlICJj
b3B5LW9uLXdyaXRlIiBhbmQgY2FuDQphbHNvIG1haW50YWluIHRoZSBzdGF0ZSBvZiBzaGFkb3cg
YnVmZmVycyAoZS5nLiBHTCB1cGxvYWQgc2xvdyBjYXNlcykgZXZlbiB3aXRoDQpjb25jdXJyZW50
IGFjY2Vzcy4NCg0KSnVzdCBob3BlIGl0IGNsYXJpZnksIFJ1c3QgbGFuZ3VhZ2Ugd29ya3MsIHll
dCBpdHMgYWxsIGJhc2VkIG9uIGV4cGxpY2l0DQpvd25lcnNoaXAgdHJhbnNmZXJzLiBJdHMgbm90
IGxpbWl0aW5nLCBidXQgaXQgcmVxdWlyZXMgYSBkaWZmZXJlbnQgd2F5IG9mDQp0aGlua2luZyBo
b3cgZGF0YSBpcyB0byBiZSBhY2Nlc3NlZC4NCg0KTmljb2xhcw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
