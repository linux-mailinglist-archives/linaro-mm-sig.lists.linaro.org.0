Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FA06BBAE2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:30:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 455F93EB82
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:30:34 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id E4C423F0A8
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 20:24:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=Rm6Rb5jg;
	spf=pass (lists.linaro.org: domain of faith.ekstrand@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=faith.ekstrand@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from 2603-8080-2102-63d7-c4a8-7e10-0391-f3ff.res6.spectrum.com (2603-8080-2102-63d7-c4a8-7e10-0391-f3ff.res6.spectrum.com [IPv6:2603:8080:2102:63d7:c4a8:7e10:391:f3ff])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: gfxstrand)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9E34F660301A;
	Thu,  9 Mar 2023 20:24:29 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678393474;
	bh=iHVcle3qz6S4204P78xSSiIZLX3fAIlrxoRx24QoWEc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Rm6Rb5jgc4KgSZ8CIfxw997YRUUmkZyouZw0049no8/knLpJh1cwuNXsK/1sjbIlq
	 EV4GUg2aXqjzfFjkkvApU/rKcF1vgyQ1UmLeSCvTlrN1MkR79+4o+E1BMkgIGGCYLh
	 /K/hvQHYHoJm8xfVcnW4szl1obTlHP0QloefieBQQYyOFF/uKmLwXQqPYeHqT+44Vl
	 qRmbCLyJ7vApu05NcHSu020jX2svAQm3WaPzSQ34yW2qeyQsLNouNRX9l4f3zDxVlz
	 XzdOH8rIvgBs+CecGqmP1IQURW8IhD+uxtTOll9MFa+N9QvhSHHNtCeki9Mw7Kx40K
	 gVFSwyUGI5Y4g==
Message-ID: <c9e0c6fdcd642192a59a2fea95941a773ea7b3e3.camel@collabora.com>
From: Faith Ekstrand <faith.ekstrand@collabora.com>
To: Asahi Lina <lina@asahilina.net>, =?ISO-8859-1?Q?Bj=F6rn?= Roy Baron
	 <bjorn3_gh@protonmail.com>
Date: Thu, 09 Mar 2023 14:24:25 -0600
In-Reply-To: <11ce9291-c17f-e73d-fb5d-13d5386fe6be@asahilina.net>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
	 <20230307-rust-drm-v1-1-917ff5bc80a8@asahilina.net>
	 <D9Cyx-9kbjaeb8QVBFqapDyctoDdVyu5uXEJDR41sdXUDXM1VgdRicV5huJDwfC3-T2J-R_DYHH8JZ1_aRdgbeYZFT78J9QveeeYbiTq4yU=@protonmail.com>
	 <11ce9291-c17f-e73d-fb5d-13d5386fe6be@asahilina.net>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E4C423F0A8
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[asahilina.net,protonmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[collabora.com:dkim,madras.collabora.co.uk:rdns,madras.collabora.co.uk:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: faith.ekstrand@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JAZZ4PKFC5GYYQXGDWVYJZYAQ4EEVMXX
X-Message-ID-Hash: JAZZ4PKFC5GYYQXGDWVYJZYAQ4EEVMXX
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:24:29 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] rust: drm: ioctl: Add DRM ioctl abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JAZZ4PKFC5GYYQXGDWVYJZYAQ4EEVMXX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDIzLTAzLTA5IGF0IDE1OjA0ICswOTAwLCBBc2FoaSBMaW5hIHdyb3RlOg0KPiBP
biAwOC8wMy8yMDIzIDAyLjM0LCBCasO2cm4gUm95IEJhcm9uIHdyb3RlOg0KPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvLyBTQUZF
VFk6IFRoaXMgaXMganVzdCB0aGUgaW9jdGwNCj4gPiA+IGFyZ3VtZW50LCB3aGljaCBob3BlZnVs
bHkgaGFzIHRoZSByaWdodCB0eXBlDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vICh3ZSd2ZSBkb25lIG91ciBiZXN0IGNoZWNr
aW5nIHRoZQ0KPiA+ID4gc2l6ZSkuDQo+ID4gDQo+ID4gSW4gdGhlIHJ1c3QgdHJlZSB0aGVyZSBp
cyB0aGUgUmVhZGFibGVGcm9tQnl0ZXMgWzFdIHRyYWl0IHdoaWNoDQo+ID4gaW5kaWNhdGVzIHRo
YXQgaXQgaXMgc2FmZSB0byByZWFkIGFyYml0cmFyeSBieXRlcyBpbnRvIHRoZSB0eXBlLg0KPiA+
IE1heWJlIHlvdSBjb3VsZCBhZGQgaXQgYXMgYm91bmQgb24gdGhlIGFyZ3VtZW50IHR5cGUgd2hl
biBpdCBsYW5kcw0KPiA+IGluIHJ1c3QtbmV4dD8gVGhpcyB3YXkgeW91IGNhbid0IGVuZCB1cCB3
aXRoIGZvciBleGFtcGxlIGEgc3RydWN0DQo+ID4gY29udGFpbmluZyBhIGJvb2wgd2l0aCB0aGUg
Ynl0ZSB2YWx1ZSAyLCB3aGljaCBpcyBVQi4NCj4gDQo+IFRoZXJlJ3MgYWN0dWFsbHkgYSBtdWNo
IGJpZ2dlciBzdG9yeSBoZXJlLCBiZWNhdXNlIHRoYXQgdHJhaXQgaXNuJ3QNCj4gcmVhbGx5IHZl
cnkgdXNlZnVsIHdpdGhvdXQgYSB3YXkgdG8gYXV0by1kZXJpdmUgaXQuIEkgbmVlZCB0aGUgc2Ft
ZQ0KPiBraW5kDQo+IG9mIGd1YXJhbnRlZSBmb3IgYWxsIHRoZSBHUFUgZmlybXdhcmUgc3RydWN0
cy4uLg0KPiANCj4gVGhlcmUncyBvbmUgdXNpbmcgb25seSBkZWNsYXJhdGl2ZSBtYWNyb3MgWzFd
IGFuZCBvbmUgdXNpbmcgcHJvYw0KPiBtYWNyb3MNCj4gWzJdLiBBbmQgdGhlbiwgc2luY2UgaW9j
dGwgYXJndW1lbnRzIGFyZSBkZWNsYXJlZCBpbiBDIFVBUEkgaGVhZGVyDQo+IGZpbGVzLCB3ZSBu
ZWVkIGEgd2F5IHRvIGJlIGFibGUgdG8gZGVyaXZlIHRob3NlIHRyYWl0cyBmb3IgdGhlbS4uLg0K
PiB3aGljaA0KPiBJIGd1ZXNzIG1lYW5zIGJpbmRnZW4gY2hhbmdlcz8NCg0KSXQnZCBiZSBjb29s
IHRvIGJlIGFibGUgdG8gYXV0by12ZXJpZnkgdGhhdCB1QVBJIHN0cnVjdHMgYXJlIGFsbA0KdGln
aHRseSBwYWNrZWQgYW5kIHVzZSB0aGUgcmlnaHQgc3Vic2V0IG9mIHR5cGVzLiAgTWF5YmUgbm90
IHBvc3NpYmxlDQp0aGlzIGl0ZXJhdGlvbiBidXQgaXQnZCBiZSBjb29sIHRvIHNlZSBpbiBmdXR1
cmUuICBJJ2QgbGlrZSB0byBzZWUgaXQNCmZvciBDIGFzIHdlbGwsIGlkZWFsbHkuDQoNCn5GYWl0
aA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
