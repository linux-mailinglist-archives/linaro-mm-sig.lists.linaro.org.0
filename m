Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNY7EPF7imnJKwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 01:29:37 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD9F1159DB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 01:29:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88C003F952
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 00:29:35 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by lists.linaro.org (Postfix) with ESMTPS id 2D8953F7FF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 00:29:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=O24f8Y67;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.176 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-50331ac1fedso48695891cf.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Feb 2026 16:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770683369; x=1771288169; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x6h4j6WhKvTbDaZfOUKYNWWIjZl7N5IPl8TkLFVZwN4=;
        b=O24f8Y6753sceBN5s02xUwbjAcPhI1747sULj8862/Avg09G1aIZEiu757LMaRP6Sr
         wUv4JXXcegNeh+7/ROXzg32LJ6n+OgL83tGOjdj/MbfNkeH0lcfhTMErWGTbMPeHzssI
         nXdCfru73a/7PXZuIpTb5IbgzDjfi0yBIegG97ZhhMNwJ5W4FApAoDOeJarnw+VZFMTU
         4qb5QzYjBWot3yt1BW+WvRHXkZrZR/Xw1k1+P8UU16JCceQQXQLc+V6kOwlzfgSWj7Fs
         QO+FXtaMuSrIawSvtw9XFTjnO+Flxbd+uxT7VaSwRcTF1mWxnbsnvgc8ClrlARTshxv8
         Vfcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770683369; x=1771288169;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x6h4j6WhKvTbDaZfOUKYNWWIjZl7N5IPl8TkLFVZwN4=;
        b=bJw1fZTZlOv+RcEy+1+fnsSAvjQbJOSFh249jFWVZKZ5fH6ClyoATBKztHOU5sjXRg
         Eou2WecsPttj9UIbGg4QgATd0H9r5nzVus7/vnPHHmuE/GbBWtwl4eG8npfZuq3zakv6
         TP5vxdEs4j7Ke16C4QF57HkuCoiWuUGJBcLVLQuS9iNF7r5lH/DM1Ly6nccudNk3sYwo
         G35cGAdA39duCst1+3XMOdPMDxSsyPtYXHJXynVeS9iqRIR+mgDaViBqir5u0c6Z2V9o
         MwiwMeaoPPFjUs4temGbkcQcYN2PjkvbnF7xwj2+Stq4AMmQQ1/kFyRRrQeQKWeTUBDw
         sEPA==
X-Forwarded-Encrypted: i=1; AJvYcCX0qN2Bf0D/5Z/rpJuKlrNSa3FaatCnLjaDZOcSqqTCVcL3eTE20r93oFRlo2wv+yNBByrEAAMnHCwW5EcZ@lists.linaro.org
X-Gm-Message-State: AOJu0YzltOle/i65yoT6R3Fs9+8IPmlpsCmBGN382hLWe+vhOl7+Ogxm
	IIHxOCrdLsvyFlf10wUGdfz/cXzdYSE6T411K4q9nlD/d0ZC8Ttl+zSHowXoKpJ8F7I=
X-Gm-Gg: AZuq6aK1tDLd5OE6fgoAD4bEVJ6wRuWOnZJrqzQAtbcDqp9CDOQfGYLg8wa4caXGQCF
	p6fnN/mS08H0Mlz130Apue3+cXSPRczMKdgqM8d9D6F/hGsryIkDa1ZPKiEK0alTYs4hXw0YwNf
	QfkT/VyroqbR3gPuCzNBYxVRPgw/l/o5Fl7l1BuoEa4ajPMi8ygs+uvT1e676HS2l3J43UcPaTr
	HZGO6ST3+iIXuFeccsIZnVy5vnZ1kKLf3gM75jzY2twnj6aw1a7aSy5U6iaxC7JZ6zX6vB/64RZ
	jc4tyb9JsohMF7B2bYTOLLC67D4z77uqmloygE2QJWWCtYZI5FlC6AIw9CUJLROjjelTLxBSvKq
	71UI982rtsUhOy+6CZK2WAft/680TwWz8QEi9DF5Kve1Pyqbr3wui/S43n7Qa2U8a7GeafpoRM8
	GRja3en1fh7Av3a0rGfKBMbAsnHH7CsDXTGgqdwOF5pGQ4rVNiwOG+yrs8WYWHIyIXd6PDO34xf
	UCPB3w=
X-Received: by 2002:a05:622a:54:b0:4f3:438c:71 with SMTP id d75a77b69052e-50639889de0mr182445181cf.24.1770683368674;
        Mon, 09 Feb 2026 16:29:28 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf9a157ddsm979856985a.28.2026.02.09.16.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 16:29:28 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vpbd9-0000000GngP-1JAF;
	Mon, 09 Feb 2026 20:29:27 -0400
Date: Mon, 9 Feb 2026 20:29:27 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: John Stultz <jstultz@google.com>
Message-ID: <20260210002927.GC943673@ziepe.ca>
References: <20260209153809.250835-1-jiri@resnulli.us>
 <20260209153809.250835-5-jiri@resnulli.us>
 <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
X-Spamd-Bar: ---
Message-ID-Hash: 6KRSIQLZRIBZDOVMGQ6SQHFGSFE3HDVG
X-Message-ID-Hash: 6KRSIQLZRIBZDOVMGQ6SQHFGSFE3HDVG
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6KRSIQLZRIBZDOVMGQ6SQHFGSFE3HDVG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	DMARC_NA(0.00)[ziepe.ca];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: BFD9F1159DB
X-Rspamd-Action: no action

T24gTW9uLCBGZWIgMDksIDIwMjYgYXQgMTI6MDg6MDNQTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6DQo+IE9uIE1vbiwgRmViIDksIDIwMjYgYXQgNzozOOKAr0FNIEppcmkgUGlya28gPGppcmlA
cmVzbnVsbGkudXM+IHdyb3RlOg0KPiA+DQo+ID4gRnJvbTogSmlyaSBQaXJrbyA8amlyaUBudmlk
aWEuY29tPg0KPiA+DQo+ID4gQ3VycmVudGx5IHRoZSBmbGFncywgd2hpY2ggYXJlIHVudXNlZCwg
YXJlIHZhbGlkYXRlZCBmb3IgYWxsIGhlYXBzLg0KPiA+IFNpbmNlIHRoZSBmb2xsb3ctdXAgcGF0
Y2ggaW50cm9kdWNlcyBhIGZsYWcgdmFsaWQgZm9yIG9ubHkgb25lIG9mIHRoZQ0KPiA+IGhlYXBz
LCBhbGxvdyB0byBzcGVjaWZ5IHRoZSB2YWxpZCBmbGFncyBwZXItaGVhcC4NCj4gDQo+IEknbSBu
b3QgcmVhbGx5IGluIHRoaXMgc3BhY2UgYW55bW9yZSwgc28gdGFrZSBteSBmZWVkYmFjayB3aXRo
IGEgZ3JhaW4gb2Ygc2FsdC4NCj4gDQo+IFdoaWxlIHRoZSBoZWFwIGFsbG9jYXRlIGZsYWdzIGFy
Z3VtZW50IGlzIHVudXNlZCwgaXQgd2FzIGludGVuZGVkIHRvDQo+IGJlIHVzZWQgZm9yIGdlbmVy
aWMgYWxsb2NhdGlvbiBmbGFncyB0aGF0IHdvdWxkIGFwcGx5IHRvIGFsbCBvciBhdA0KPiBsZWFz
dCBhIHdpZGUgbWFqb3JpdHkgb2YgaGVhcHMuDQo+IA0KPiBJdCB3YXMgZGVmaW5pdGVseSBub3Qg
YWRkZWQgdG8gYWxsb3cgZm9yIHBlci1oZWFwIG9yIGhlYXAgc3BlY2lmaWMNCj4gZmxhZ3MgKGFz
IHRoaXMgcGF0Y2ggdHJpZXMgdG8gdXRpbGl6ZSBpdCkuIFRoYXQgd2FzIHRoZSBtZXNzIHdlIGhh
ZA0KPiB3aXRoIElPTiBkcml2ZXIgdGhhdCB3ZSB3ZXJlIHRyeWluZyB0byBhdm9pZC4NCg0KSSBk
b24ndCBrbm93IGFsb3QgYWJvdXQgRE1BIGhlYXBzLi4NCg0KT24gYSBDQyBWTSBzeXN0ZW0gdGhl
IHNoYXJlZC9wcml2YXRlIHByb3BlcnR5IGlzIHVuaXZlcnNhbCBhbmQgYXBwbGllcw0KdG8gZXZl
cnkgcGh5c2ljYWwgYWRkcmVzcy4gTm90IGV2ZXJ5IGFkZHJlc3MgY2FuIGR5bmFtaWNhbGx5IGNo
YW5nZQ0KYmV0d2VlbiBzaGFyZWQgYW5kIHByaXZhdGUsIGJ1dCBldmVyeSBhZGRyZXNzIGRvZXMg
aGF2ZSBhDQpzaGFyZWQvcHJpdmF0ZSBzdGF0ZS4NCg0KQnkgZGVmYXVsdCB1c2Vyc3BhY2UgcHJv
Y2VzcyBnZW5lcmFsbHkgcnVuIGV4Y2x1c2l2ZWx5IGluIHByaXZhdGUNCm1lbW9yeSBhbmQgdGhl
cmUgYXJlIHZlcnkgZmV3IHdheXMgZm9yIHVzZXJzcGFjZSB0byBldmVuIGFjY2VzcyBzaGFyZWQN
Cm1lbW9yeS4NCg0KPkZyb20gYSBoZWFwcyBwZXJzcGVjdGl2ZSB0aGUgQVBJIHdvdWxkIGJlIHZl
cnkgc3RyYW5nZSwgYW5kIHBlcmhhcHMNCmV2ZW4gc2VjdXJpdHkgZGFuZ2Vyb3VzLCBpZiBpdCBp
cyByZXR1cm5pbmcgc2hhcmVkIG1lbW9yeSB0byB1c2Vyc3BhY2UNCndpdGhvdXQgdXNlcnNwYWNl
IGtub3dpbmcgdGhpcyBpcyBoYXBwZW5pbmcuDQoNCkknZCBhZHZvY2F0ZSB0aGF0IHRoZSByaWdo
dCBkZXNpZ24gaXMgZm9yIHVzZXJzcGFjZSB0byBwb3NpdGl2ZWx5DQpzaWduYWwgdmlhIHRoaXMg
ZmxhZyB0aGF0IGl0IHdhbnRzL2FjY2VwdHMgc2hhcmVkIG1lbW9yeSBhbmQgd2l0aG91dA0KdGhl
IGZsYWcgc2hhcmVkIG1lbW9yeSBzaG91bGQgbmV2ZXIgYmUgcmV0dXJuZWQuDQoNCkV2ZW4gaWYg
dGhlIHVuZGVyeWxpbmcgaGVhcCBvbmx5IGhhcyBzaGFyZWQgbWVtb3J5IGluIGl0IChlZyBpdCBp
cw0KbW1pbyBvciBzb21ldGhpbmcpLg0KDQpPdGhlcndpc2UgbWFraW5nIGl0IGltcGxpY2l0LCBw
ZXJoYXBzIGJhc2VkIG9uIGhlYXAgbmFtZSwgc291bmRzIHZlcnkNCnRyaWNreSBmb3IgdXNlcnNw
YWNlIHRvIGFjdHVhbGx5IHVzZSBmdWxseSBzZWN1cmVseS4NCg0KQWdhaW4sIEkgZG9uJ3Qga25v
dyBhbG90IGFib3V0IGhlYXBzLCBidXQgcGVyaGFwcyB0aGUgbWlzc2luZyBwYXJ0DQpoZXJlIGlz
IHRoYXQgb24gYSBDQyBzeXN0ZW0gYWxsIGV4aXN0aW5nIGhlYXBzLCBvdGhlciB0aGFuIHRoZSBv
bmUNCnVzaW5nIG5vcm1hbCBzeXN0ZW0gcGFnZXMsIHNob3VsZCBiZSBkaXNhYmxlZCBmb3Igbm93
LiBUaGV5IGNhbiBjb21lDQpiYWNrIG9uY2UgdGhleSBhcmUgYXVkaXRlZCBhcyB0byB0aGVpciBz
aGFyZWQvcHJpdmF0ZSBzdGF0ZSBhbmQNCnJlc3BlY3QgdGhlIG5ldyBmbGFnLg0KDQpBbm90aGVy
IHZpZXcgaXMgdG8gaWdub3JlIHRoaXMgYWZmaXJtYXRpdmUgaGFuZHNoYWtlIGFuZCBqdXN0IG1h
a2UgaXQNCmltcGxpY2l0IG9uIHNvbWV0aGluZyBsaWtlIHRoZSBoZWFwIG5hbWUgYW5kIGhvcGUg
dXNlcnNwYWNlIGx1Y2tzIGludG8NCnNvbWV0aGluZyB0aGF0IHdvcmtzIGZvciBpdCwgYW5kIGRv
ZXNuJ3QgYWNjaWRlbnRseSBwbGFjZSwgb3IgYmVjb21lDQp0cmlja2VkIGludG8gcGxhY2luZywg
c2Vuc2l0aXZlIGluZm9ybWF0aW9uIGludG8gc2hhcmVkIGhlYXAgbWVtb3J5Lg0KDQpBZ2FpbiBJ
IGtub3cgbm90aGluZyBhYm91dCBoZWFwcywgYnV0IHRoaXMgaXMgYSBmdWxsZXIgcGljdHVyZSBv
ZiB0aGUNCnNlY3VyaXR5IHNlbnNpdGl2aXR5IGFuZCB3aGF0IHRvIHRoaW5rIGFib3V0IHdpdGgg
aGVhcHMgYW5kIENDIFZNDQpzeXN0ZW1zLg0KDQo+IE5vdywgdGhlcmUgaGFzIGJlZW4gbWFueSBk
aXNjdXNzaW9ucyBhcm91bmQgInByb3RlY3RlZCBidWZmZXJzIiAod2hpY2gNCj4gZG9lc24ndCBz
ZWVtIHRvIG1hcCBleGFjdGx5IHRvIHRoaXMgY29uZmlkZW50YWwgY29tcHV0aW5nIHByaW1pdGl2
ZSwNCj4gYnV0IHNvdW5kcyBsaWtlIGl0IG1pZ2h0IGJlIHJlbGF0ZWQpIA0KDQpJJ20gbm90IHN1
cmUgd2hhdCBwcm90ZWN0ZWQgYnVmZmVycyBhcmUsIGJ1dCB0aGlzIENDIFZNIHNoYXJlZC9wcml2
YXRlDQoob3IgZW5jcnlwdGVkL2RlY3J5cHRlZCkgaXMgYSBjb3JlIGtlcm5lbCBwcm9wZXJ0eSB0
aGF0IGFwcGxpZXMgdG8NCmV2ZXJ5IHBoeXNpY2FsIGFkZHJlc3MgaW4gdGhlIENDIFZNLg0KDQpJ
IGFzc3VtZSBwcm90ZWN0ZWQgYnVmZmVycyBhcmUgc29tZXRoaW5nIG1vcmUgcGxhdGZvcm0gc3Bl
Y2lmaWMgYW5kDQpoaWRkZW4/DQoNCj4gQnV0LCBpdCBzZWVtcyBsaWtlIHRoZSB1c2UgY2FzZSBo
ZXJlIGlzIHN0aWxsIGZhciB0b28gbmFycm93IGZvciBhIHRvcA0KPiBsZXZlbCBhbGxvY2F0aW9u
IGZsYWcuDQoNCkNDIGNlcnRhaW5seSBpcyBhIG5hcnJvdyB1c2UgY2FzZSwgYnV0IHdpdGhpbiBD
QyBJIGRvbid0IHRoaW5rIGl0IGlzDQpuYXJyb3cgYXQgYWxsLi4NCg0KSmFzb24NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
