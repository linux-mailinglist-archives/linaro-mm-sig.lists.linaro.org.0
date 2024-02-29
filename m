Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6243086BFCD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Feb 2024 05:18:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F8A33EFD8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Feb 2024 04:18:17 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 251BE3EFD8
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Feb 2024 04:18:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=rh7ln6CG;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-412a2c2ce88so24605e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Feb 2024 20:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709180288; x=1709785088; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ZRYC3eQbqO5jHdABTpHXvMtzoXuiWeOf7cPhtqaeWU=;
        b=rh7ln6CGYgDCM57zyFSWMODFEtydv2USH/u5qZe5PjNvXm8mqNlsKLPi1z4jY4J3i9
         HiNYp+v3MHLXorOBoQwbFhDNXQRjrrQwnTFiL4ULTSQc6KZKxiHOVhn2q+ZV9eD4TUtC
         xIFZ33Swk36kKK8+GXYlPfYrFi56+0ee+Cwpjj88qZuEKUBjakASF1NSlOCVb+XEpsUG
         JWPLpdYD4WZQa3sAop8Ms2/t7Kls/EEpNgbARggwTI7Q04dSEX2IFuG8BJYsGJDKuYiF
         FcTb1frqkO/HGiGjH9pFpT2bRRh4arAQ6eZaucE8dSD/IdWwvKsyGSNapnizrRl0AxGh
         3h9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709180288; x=1709785088;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ZRYC3eQbqO5jHdABTpHXvMtzoXuiWeOf7cPhtqaeWU=;
        b=cuW763fCcv9gQwXZXVXRPJC9IjItlnEs1wFPua62NZvgZsDJXqH2DJ6kH1BiR9YLlb
         /mQtFTNh+7ySQeF9x1kKUebJmJ4kp8aHYh4pWodDgoWsXj3s6l3tVutBplhuLv7b7lRN
         AEXAarw65OJCLYhkiKE5gGMzEL9WTqItdYQfOEQKER8PLvCNHjb4Kw8WLf4t6iBiHcFM
         KP82ER/3ir4HAf8Dy3Wz9EL9XkRrhTLOyzSJxKAKgIVrJsv0AZVCsNrMaiOzZfrOTpCt
         p143eOuy6bRxW4bvZvRcZNXvHpgeGC+n6DqqsXbo1fXzGCuICEM+7dO4HHKgIYoUFLuF
         7bwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsLZUhos5GOMF24VpQYHOzqCzg+w/4BDLxj2YUQvWzv8vfbr8UDZslSklbMldjLw84ZuVce79uN5+yHYIupLeQ43Vz400c2frxZp3YiD8=
X-Gm-Message-State: AOJu0YxWwpTwFZ2XfVEttPQO/JTBGCS0XnASobtGe6dvHoHLQR1n6xuN
	EJKy4X8Plt4lIVirdAuibXXcHsMRxxJmd+rwNU2G22WbMPagqrIO6wQ0WqoKOX10GC5/uDM6bQr
	KtI3LchoIq9u9g1iWPwkunup+QFrDUzQPBDg=
X-Google-Smtp-Source: AGHT+IEdAISHJic0YRCY4eYW9TXIlfte7WHoViC9o9WO2SnJ+GucjOMncEU5Qlfu9EM/Y2Uqp6ddT+4i3av0jdD18Jk=
X-Received: by 2002:a05:600c:1f09:b0:412:a9ce:5f68 with SMTP id
 bd9-20020a05600c1f0900b00412a9ce5f68mr63100wmb.2.1709180288042; Wed, 28 Feb
 2024 20:18:08 -0800 (PST)
MIME-Version: 1.0
References: <20240228-nifty-flashy-shrew-905edc@houat>
In-Reply-To: <20240228-nifty-flashy-shrew-905edc@houat>
From: John Stultz <jstultz@google.com>
Date: Wed, 28 Feb 2024 20:17:55 -0800
Message-ID: <CANDhNCquJn6bH3KxKf65BWiTYLVqSd9892-xtFDHHqqyrroCMQ@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 251BE3EFD8
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	NEURAL_HAM(-0.00)[-0.993];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: XLC3SADYGEVZ3UNMBUY5AY2WTQI7N7EQ
X-Message-ID-Hash: XLC3SADYGEVZ3UNMBUY5AY2WTQI7N7EQ
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: ECC memory semantics for heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XLC3SADYGEVZ3UNMBUY5AY2WTQI7N7EQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBGZWIgMjgsIDIwMjQgYXQgNzoyNOKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IEknbSBjdXJyZW50bHkgd29ya2luZyBvbiBhIHBsYXRm
b3JtIHRoYXQgc2VlbXMgdG8gaGF2ZSB0b2dnbGFibGUgUkFNIEVDQw0KPiBzdXBwb3J0LiBFbmFi
bGluZyBFQ0MgcmVkdWNlcyB0aGUgbWVtb3J5IGNhcGFjaXR5IGFuZCBtZW1vcnkgYmFuZHdpZHRo
LA0KPiBzbyB3aGlsZSBpdCdzIGEgZ29vZCBpZGVhIHRvIHByb3RlY3QgbW9zdCBvZiB0aGUgc3lz
dGVtLCBpdCdzIG5vdCB3b3J0aA0KPiBpdCBmb3IgdGhpbmdzIGxpa2UgZnJhbWVidWZmZXJzIHRo
YXQgd29uJ3QgcmVhbGx5IGJlIGFmZmVjdGVkIGJ5IGENCj4gYml0ZmxpcC4NCj4NCj4gSXQncyBj
dXJyZW50bHkgc2V0dXAgYnkgZW5hYmxpbmcgRUNDIG9uIHRoZSBlbnRpcmUgbWVtb3J5LCBhbmQg
dGhlbg0KPiBoYXZpbmcgYSByZWdpb24gb2YgbWVtb3J5IHdoZXJlIEVDQyBpcyBkaXNhYmxlZCBh
bmQgd2hlcmUgd2UncmUgc3VwcG9zZWQNCj4gdG8gYWxsb2NhdGUgZnJvbSBmb3IgYWxsb2NhdGlv
bnMgdGhhdCBkb24ndCBuZWVkIGl0Lg0KPg0KPiBNeSBmaXJzdCB0aG91Z2h0IHRvIHN1cHBvcnQg
dGhpcyB3YXMgdG8gY3JlYXRlIGEgcmVzZXJ2ZWQgbWVtb3J5IHJlZ2lvbg0KPiBmb3IgdGhlICFF
Q0MgbWVtb3J5LCBhbmQgdG8gY3JlYXRlIGEgaGVhcCB0byBhbGxvY2F0ZSBidWZmZXJzIGZyb20g
dGhhdA0KPiByZWdpb24uIFRoYXQgd291bGQgbGVhdmUgdGhlIHN5c3RlbSBwcm90ZWN0ZWQgYnkg
RUNDLCB3aGlsZSBlbmFibGluZw0KPiB1c2Vyc3BhY2UgdG8gYmUgbmljZXIgdG8gdGhlIHN5c3Rl
bSBieSBhbGxvY2F0aW5nIGJ1ZmZlcnMgZnJvbSB0aGUgIUVDQw0KPiByZWdpb24gaWYgaXQgZG9l
c24ndCBuZWVkIGl0Lg0KPg0KPiBIb3dldmVyLCB0aGlzIGNyZWF0ZXMgYmFzaWNhbGx5IGEgbmV3
IGNvbWJpbmF0aW9uIGNvbXBhcmVkIHRvIHRoZSBvbmUgd2UNCj4gYWxyZWFkeSBoYXZlIChpZSwg
cGh5c2ljYWxseSBjb250aWd1b3VzIHZzIHZpcnR1YWxseSBjb250aWd1b3VzKSwgYW5kIHdlDQo+
IHByb2JhYmx5IHdvdWxkIHdhbnQgdG8gdGhyb3cgaW4gY2FjaGVhYmxlIHZzIG5vbi1jYWNoZWFi
bGUgdG9vLg0KPg0KPiBJZiB3ZSBoYWQgdG8gcHJvdmlkZSBuZXcgaGVhcHMgZm9yIGVhY2ggdmFy
aWF0aW9uLCB3ZSB3b3VsZCBoYXZlIDggaGVhcHMNCj4gKGFuZCA2IG5ldyBvbmVzKSwgd2hpY2gg
Y291bGQgYmUgZmluZSBJIGd1ZXNzIGJ1dCB3b3VsZCBzdGlsbCBpbmNyZWFzZQ0KPiBxdWl0ZSBh
IGxvdCB0aGUgbnVtYmVyIG9mIGhlYXBzIHdlIGhhdmUgc28gZmFyLg0KPg0KPiBJcyBpdCBzb21l
dGhpbmcgdGhhdCB3b3VsZCBiZSBhIHByb2JsZW0/IElmIGl0IGlzLCBkbyB5b3Ugc2VlIGFub3Ro
ZXINCj4gd2F5IHRvIHN1cHBvcnQgdGhvc2Uga2luZCBvZiBhbGxvY2F0aW9ucyAobGlrZSBwcm92
aWRpbmcgaGludHMgdGhyb3VnaA0KPiB0aGUgaW9jdGwgbWF5YmU/KT8NCg0KU28sIHRoZSBkbWEt
YnVmIGhlYXBzIGludGVyZmFjZSB1c2VzIGNoYXJkZXZzIHNvIHRoYXQgd2UgY2FuIGhhdmUgYQ0K
bG90IG9mIGZsZXhpYmlsaXR5IGluIHRoZSB0eXBlcyBvZiBoZWFwcyAoYW5kIGRvbid0IGhhdmUg
dGhlIHJpc2sgb2YNCmJpdG1hc2sgZXhoYXVzdGlvbiBsaWtlIElPTiBoYWQpLiBTbyBJIGRvbid0
IHNlZSBhZGRpbmcgbWFueQ0KZGlmZmVyZW50bHkgbmFtZWQgaGVhcHMgYXMgcGFydGljdWxhcmx5
IHByb2JsZW1hdGljLg0KDQpUaGF0IHNhaWQsIGlmIHRoZXJlIGFyZSB0cnVseSBnZW5lcmljIHBy
b3BlcnRpZXMgKGNhY2hlYWJsZSB2cw0Kbm9uLWNhY2hhYmxlIGlzIG1heWJlIG9uZSBvZiB0aG9z
ZSkgd2hpY2ggYXBwbHkgdG8gbW9zdCBoZWFwcywgSSdtDQpvcGVuIHRvIG1ha2luZyB1c2Ugb2Yg
dGhlIGZsYWdzLiBCdXQgSSB3YW50IHRvIGF2b2lkIGhhdmluZyBwZXItaGVhcA0KZmxhZ3MsIGl0
IHJlYWxseSBuZWVkcyB0byBiZSBhIGdlbmVyaWMgYXR0cmlidXRlLg0KDQpBbmQgSSBwZXJzb25h
bGx5IGRvbid0IG1pbmQgdGhlIGlkZWEgb2YgaGF2aW5nIHRoaW5ncyBhZGRlZCBhcyBoZWFwcw0K
aW5pdGlhbGx5LCBhbmQgcG90ZW50aWFsbHkgdXBncmFkaW5nIHRoZW0gdG8gZmxhZ3MgaWYgbmVl
ZGVkIChhbGxvd2luZw0KaGVhcCBkcml2ZXJzIHRvIG9wdGlvbmFsbHkgZW51bWVyYXRlIHRoZSBv
bGQgY2hhcmRldnMgYmVoaW5kIGEgY29uZmlnDQpvcHRpb24gZm9yIGJhY2t3YXJkcyBjb21wYXRp
YmlsaXR5KS4NCg0KSG93IGNvbW1vbiBpcyB0aGUgaGFyZHdhcmUgdGhhdCBpcyBnb2luZyB0byBw
cm92aWRlIHRoaXMgY29uZmlndXJhYmxlDQpFQ0Mgb3B0aW9uLCBhbmQgd2lsbCB5b3UgcmVhbGx5
IHdhbnQgdGhlIG9wdGlvbiBvbiBhbGwgb2YgdGhlIGhlYXANCnR5cGVzPyBXaWxsIHRoZXJlIGJl
IGFueSBoYXJkd2FyZSBjb25zdHJhaW50IGxpbWl0YXRpb25zIGNhdXNlZCBieSB0aGUNCkVDQy8h
RUNDIGZsYWdzPyAoaWU6IERldmljZXMgdGhhdCBjYW4ndCB1c2UgIUVDQyBhbGxvY2F0ZWQgYnVm
ZmVycz8pDQoNCklmIG5vdCwgSSB3b25kZXIgaWYgaXQgd291bGQgbWFrZSBzZW5zZSB0byBoYXZl
IHNvbWV0aGluZyBtb3JlIGFsb25nDQp0aGUgbGluZXMgdXNpbmcgYSBmY250bCgpICBsaWtlIGhv
dyBGX1NFQUxfKiBpcyB1c2VkIHdpdGggbWVtZmRzPw0KV2l0aCBzb21lIG9mIHRoZSBkaXNjdXNz
aW9uIGFyb3VuZCAicmVzdHJpY3RlZCIvInNlY3VyZSIgaGVhcHMgdGhhdA0KY2FuIGNoYW5nZSBz
dGF0ZSwgSSd2ZSBsaWtlZCB0aGlzIGlkZWEgb2YganVzdCBhbGxvY2F0aW5nIGRtYWJ1ZnMgZnJv
bQ0Kbm9ybWFsIGhlYXBzIGFuZCB0aGVuIHVzaW5nIGZjbnRsIG9yIHNvbWV0aGluZyBzaW1pbGFy
IHRvIG1vZGlmeQ0KcHJvcGVydGllcyBvZiB0aGUgYnVmZmVyIHRoYXQgYXJlIHNlcGFyYXRlIGZy
b20gdGhlIHR5cGUgb2YgbWVtb3J5DQp0aGF0IGlzIG5lZWRlZCB0byBiZSBhbGxvY2F0ZWQgdG8g
c2F0aXNmeSBkZXZpY2UgY29uc3RyYWludHMuDQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
