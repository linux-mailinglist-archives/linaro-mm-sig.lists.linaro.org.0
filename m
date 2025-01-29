Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A14BA21B5D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jan 2025 11:56:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C98D445E4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jan 2025 10:56:55 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id D3E1F3F3DF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jan 2025 10:56:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=I1yaWKk4;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3862d161947so3555466f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jan 2025 02:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738148201; x=1738753001; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FosXnzccXLV0I1LGd8gcU7Ut4sPZEcpMdWT78sKoJ3I=;
        b=I1yaWKk4/d/+V2stNUP/dXS9mO5fWSoUO6tND/fj17heOHjzchlcZswx2gl1aw+sbW
         lqcGocddrG0Lb61DyTdQeyHtHtpOe1j2WgbXTdmGFm7Sl8R4DurtUG9dFgfSgvE8f6W/
         CmqM9aFbcy/pQyTwzsq1AeP0W1YROEnJcHhU7hrglEJaDa2WxGbB1gCu9ussPTtMr5vg
         2q0BASY2bXDEfXGqb5YnNj/0UD5hJDKOpdWW1RS/4magKlD6Yshv+GUkta9SwIwNBLUS
         pvNbiin2NAQm8k3DGlJOp7xnTr1Wzq3v2LpOBHkVwKYql003QSvYFR2HkddnSgxfNZWE
         LoUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738148201; x=1738753001;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FosXnzccXLV0I1LGd8gcU7Ut4sPZEcpMdWT78sKoJ3I=;
        b=CUKo10oxRWdvPRjqB4NdzRqGJz1N4mUIy+6G4OCn+DlX0/PFklteImroGE4PoIRr21
         iXZyaPIa/vFVXgYACVuYOtC8kQxd8YSUqPduhodAtcbm1/GZNgijJF58Bn5efIL9dyFg
         fcpuUXioMKe14Ga2BuOzADKCOZm34fvj9bBv2aHE4HFtHvdUVKQJ2uyPS/4JLwjE6ui6
         CcutRLCwkkk8dW2mH1NpNyK5nCk+AfMJbyxxLmCRLKu7Ij9iXS24eOG281COHMRrfk/A
         PR3MmTUxHxTvhIKrETI9rAJtcga6vw/FIMqi8y4ZZ4B+4rySou1fD+ldq+143WVUOnHI
         UcTw==
X-Forwarded-Encrypted: i=1; AJvYcCXP8VOlP1viWRHpzaivh/ta4uI41/s1AfKiU1GYGmwOtMvQn8o7FT2qvpM6Qlv/oz93RATb4XCQAWNj1YIM@lists.linaro.org
X-Gm-Message-State: AOJu0YzR4EmdpuXXEj1x2iCFJ4TUdpzAoXM6wxpqSSF1JrJk/G1xZrKC
	d6bxF3IYahNLZp8m5169wzXPAjuGqPslQTB9Gyi5f89hG+25/FTq
X-Gm-Gg: ASbGncu4VkhDbxMa+AeJLNjWZCmyiPT8tRqXTQRqCEwBnpi5fMRbWJioS6e+5hWI6G8
	IXpJA6eDTCj8vTlrm+U5yywMzt+nKE6n0oLV8njxLCDuiNuw/qD6eq6CgIxdZ4tr4ZzXtSaAqPT
	SAJs0wQ+/SNrrWW+xPzsp48h1nP3IGKx4iuAd/ZsKd29TVLGDrUq10PiN4eVawAw3sc6GGX0SIo
	GfBY9nIwpRSuNRkJOfcxD1z08leKh82omlCVT9axuYMCJHfYZWPm4h44WInC9P+kTDriPqn9Ce8
	8w+1UzoZd5puIR+lLY6WbwOh+8pnxA1LUr/h5cHECRZp
X-Google-Smtp-Source: AGHT+IH6skENIXQ60OxDQBSAhPlvZIj8ntXrMXYQO57C4HwGjLw4O7NNaHOpEBbMLZg8FziO87RS4A==
X-Received: by 2002:a05:6000:1884:b0:385:e8dd:b143 with SMTP id ffacd0b85a97d-38c5195f6bemr2182113f8f.19.1738148200405;
        Wed, 29 Jan 2025 02:56:40 -0800 (PST)
Received: from [10.254.108.83] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a188bf5sm16982880f8f.50.2025.01.29.02.56.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 02:56:40 -0800 (PST)
Message-ID: <25c09c95-869e-488a-a031-f4faa8aa6307@gmail.com>
Date: Wed, 29 Jan 2025 11:56:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lucas Stach <l.stach@pengutronix.de>, marek.olsak@amd.com,
 sumit.semwal@linaro.org
References: <20250128100833.8973-1-christian.koenig@amd.com>
 <6681c5a71cadaee237dc4bf47e12ffd0bfdd89b0.camel@pengutronix.de>
 <af78559c-057a-4d70-ab05-fcc943dce2e6@gmail.com>
 <e21418ab4f1e82d322569ef2d4a481c564a1040c.camel@pengutronix.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <e21418ab4f1e82d322569ef2d4a481c564a1040c.camel@pengutronix.de>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D3E1F3F3DF
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_6(1.00)[209.85.221.52:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.997];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.52:from];
	RCPT_COUNT_FIVE(0.00)[6]
Message-ID-Hash: SN4NNGSXU4PBKV6O2MBVBUU7KT5RMJQM
X-Message-ID-Hash: SN4NNGSXU4PBKV6O2MBVBUU7KT5RMJQM
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix timeout handling in dma_resv_wait_timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SN4NNGSXU4PBKV6O2MBVBUU7KT5RMJQM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjguMDEuMjUgdW0gMTU6NDEgc2NocmllYiBMdWNhcyBTdGFjaDoNCj4gQW0gRGllbnN0YWcs
IGRlbSAyOC4wMS4yMDI1IHVtIDE1OjI4ICswMTAwIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoN
Cj4+IEFtIDI4LjAxLjI1IHVtIDExOjQ4IHNjaHJpZWIgTHVjYXMgU3RhY2g6DQo+Pj4gSGkgQ2hy
aXN0aWFuLA0KPj4+DQo+Pj4gQW0gRGllbnN0YWcsIGRlbSAyOC4wMS4yMDI1IHVtIDExOjA4ICsw
MTAwIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoNCj4+Pj4gRXZlbiB0aGUga2VybmVsZG9jIHNh
eXMgdGhhdCB3aXRoIGEgemVybyB0aW1lb3V0IHRoZSBmdW5jdGlvbiBzaG91bGQgbm90DQo+Pj4+
IHdhaXQgZm9yIGFueXRoaW5nLCBidXQgc3RpbGwgcmV0dXJuIDEgdG8gaW5kaWNhdGUgdGhhdCB0
aGUgZmVuY2VzIGFyZQ0KPj4+PiBzaWduYWxlZCBub3cuDQo+Pj4+DQo+Pj4+IFVuZm9ydHVuYXRl
bHkgdGhhdCBpc24ndCB3aGF0IHdhcyBpbXBsZW1lbnRlZCwgaW5zdGVhZCBvZiBvbmx5IHJldHVy
bmluZw0KPj4+PiAxIHdlIGFsc28gd2FpdGVkIGZvciBhdCBsZWFzdCBvbmUgamlmZmllcy4NCj4+
Pj4NCj4+Pj4gRml4IHRoYXQgYnkgYWRqdXN0aW5nIHRoZSBoYW5kbGluZyB0byB3aGF0IHRoZSBm
dW5jdGlvbiBpcyBhY3R1YWxseQ0KPj4+PiBkb2N1bWVudGVkIHRvIGRvLg0KPj4+Pg0KPj4+PiBS
ZXBvcnRlZC1ieTogTWFyZWsgT2zFocOhayA8bWFyZWsub2xzYWtAYW1kLmNvbT4NCj4+Pj4gUmVw
b3J0ZWQtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPg0KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+
Pj4+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4NCj4+Pj4gLS0tDQo+Pj4+ICAgIGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMTEgKysrKysrLS0tLS0NCj4+Pj4gICAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4+Pj4NCj4+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMNCj4+Pj4gaW5kZXggNWY4ZDAxMDUxNmYwLi5hZTkyZDlkMjM5NGQgMTAwNjQ0DQo+Pj4+
IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+Pj4+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jDQo+Pj4+IEBAIC02ODQsMTEgKzY4NCwxMiBAQCBsb25nIGRtYV9yZXN2
X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1
c2FnZSwNCj4+Pj4gICAgCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB1c2FnZSk7
DQo+Pj4+ICAgIAlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5j
ZSkgew0KPj4+PiAgICANCj4+Pj4gLQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5j
ZSwgaW50ciwgcmV0KTsNCj4+Pj4gLQkJaWYgKHJldCA8PSAwKSB7DQo+Pj4+IC0JCQlkbWFfcmVz
dl9pdGVyX2VuZCgmY3Vyc29yKTsNCj4+Pj4gLQkJCXJldHVybiByZXQ7DQo+Pj4+IC0JCX0NCj4+
Pj4gKwkJcmV0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5jZSwgaW50ciwgdGltZW91dCk7
DQo+Pj4+ICsJCWlmIChyZXQgPD0gMCkNCj4+Pj4gKwkJCWJyZWFrOw0KPj4+PiArDQo+Pj4+ICsJ
CS8qIEV2ZW4gZm9yIHplcm8gdGltZW91dCB0aGUgcmV0dXJuIHZhbHVlIGlzIDEgKi8NCj4+Pj4g
KwkJdGltZW91dCA9IG1pbih0aW1lb3V0LCByZXQpOw0KPj4+IFRoaXMgbWluIGNvbnN0cnVjdCBh
bmQgdGhlIGNvbW1lbnQgY29uZnVzZWQgbWUgYSBiaXQgYXQgZmlyc3QuIEkgdGhpbmsNCj4+PiBp
dCB3b3VsZCBiZSBlYXNpZXIgdG8gcmVhZCBhcw0KPj4+DQo+Pj4gLyogV2l0aCBhIHplcm8gdGlt
ZW91dCBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0IG1ha2VzIHVwIGENCj4+PiAgICAqIHBvc2l0aXZl
IHJldHVybiB2YWx1ZSBmb3IgYWxyZWFkeSBzaWduYWxlZCBmZW5jZXMuDQo+Pj4gICAgKi8NCj4+
PiBpZiAodGltZW91dCkNCj4+PiAJdGltZW91dCA9IHJldDsNCj4+IEdvb2QgcG9pbnQsIGdvaW5n
IHRvIGNoYW5nZSB0aGF0Lg0KPj4NCj4+PiBBbHNvIHBsZWFzZSBjaGFuZ2UgdGhlIGluaXRpYWxp
emF0aW9uIG9mIHJldCBvbiB0b3Agb2YgdGhlIGZ1bmN0aW9uIHRvDQo+Pj4gcmV0ID0gMSBzbyBp
dCBoYXMgdGhlIHJpZ2h0IHZhbHVlIHdoZW4gbm8gZmVuY2VzIGFyZSBwcmVzZW50LiBOb3cgdGhh
dA0KPj4+IHlvdSB1c2UgdGhlIHRpbWVvdXQgdmFyaWFibGUgZm9yIHRoZSBmZW5jZSB3YWl0LCB0
aGVyZSBpcyBubyBwb2ludCBpbg0KPj4+IGluaXRpYWxpemluZyByZXQgdG8gdGhlIHRpbWVvdXQu
DQo+PiBXaGVuIG5vIGZlbmNlcyBhcmUgcHJlc2VudCByZXR1cm5pbmcgMSB3b3VsZCBiZSBpbmNv
cnJlY3QgaWYgdGhlIHRpbWVvdXQNCj4+IHZhbHVlIHdhcyBub24gemVyby4NCj4+DQo+PiBPbmx5
IHdoZW4gdGhlIHRpbWVvdXQgdmFsdWUgaXMgemVybyB3ZSBzaG91bGQgcmV0dXJuIDEgdG8gaW5k
aWNhdGUgdGhhdA0KPj4gdGhlcmUgaXMgbm90aGluZyB0byB3YWl0IGZvci4NCj4+DQo+IFVoLCB5
ZWEgZGlkbid0IHRoaW5rIGFib3V0IHRoaXMuDQo+DQo+IEhvbmVzdGx5LCBtYWtpbmcgdXAgdGhp
cyBwb3NpdGl2ZSByZXR1cm4gdmFsdWUgcmVxdWlyZXMgb25lIHRvIHRoaW5rDQo+IHJlYWxseSBo
YXJkIGFib3V0IHRob3NlIGNvZGUgcGF0aHMuIFRoaXMgd291bGQgYWxsIGJlIG11Y2ggY2xlYW5l
ciBhbmQNCj4gdGhlIGNoYWluaW5nIG9mIG11bHRpcGxlIHdhaXRzLCBsaWtlIGluIHRoZSBmdW5j
dGlvbiBjaGFuZ2VkIGhlcmUsDQo+IHdvdWxkIGJlIG11Y2ggbW9yZSBuYXR1cmFsIHdoZW4gYSAw
IHJldHVybiB3b3VsZCBhbHNvIGJlIHRyZWF0ZWQgYXMgYQ0KPiBvcmRpbmFyeSBzdWNjZXNzZnVs
IHdhaXQgYW5kIHRpbWVvdXRzIHdvdWxkIGJlIHNpZ25hbGVkIHdpdGggRVRJTUVET1VULg0KPiBC
dXQgdGhhdCdzIGEgbGFyZ2UgY2hhbmdlIHdpdGggbG90cyBvZiBjYWxsc2l0ZXMgdG8gYXVkaXQs
IG1heWJlIGZvcg0KPiBhbm90aGVyIGRheS4NCg0KWWVhaCwgSSd2ZSBzdWdnZXN0ZWQgdGhhdCBi
ZWZvcmUgYXMgd2VsbC4NCg0KQnV0IHRoZSB3YWl0X2V2ZW50X3RpbWVvdXQqIGludGVyZmFjZXMg
Zm9sbG93cyB0aGUgc2FtZSBjb252ZW50aW9uOiANCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29t
L2xpbnV4L3Y2LjEyLjExL3NvdXJjZS9pbmNsdWRlL2xpbnV4L3dhaXQuaCNMMzkzDQoNClNvIHdl
IHVzZWQgd2l0aCB0aGF0IGZvciBzb21lIHJlYXNvbi4gTXkgZWR1Y2F0ZWQgZ3Vlc3MgaXMgdGhh
dCBpdCBtYWRlIA0KbWlncmF0aW9uIGVhc2llciBiZWNhdXNlIGRyaXZlcnMgd2VyZSB1c2luZyB3
YWl0X2V2ZW50X3RpbWVvdXQqIGJlZm9yZSANCmRtYV9yZXN2L2RtYV9mZW5jZSB3YXMgaW52ZW50
ZWQuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUmVnYXJkcywNCj4gTHVjYXMNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
