Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 762847B6412
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Oct 2023 10:30:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D3DB3F445
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Oct 2023 08:30:17 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by lists.linaro.org (Postfix) with ESMTPS id 015223E9FC
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Oct 2023 08:30:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=D3fI4UoC;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.167.41 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-503f39d3236so749186e87.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Oct 2023 01:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696321813; x=1696926613; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tCVLlGuDttXDAeKBU2+UulxgkQbSJpXxQEIW9ibhWmE=;
        b=D3fI4UoCgBPpmu/ootS/ldJ+/DQn1GNKOwUGSwN2xqSXiW6cq0mwLG3f/YEpAmNc8b
         FndNw7jTltP0lSLU3aJQ6KWeUC10Fqbfqr2nRgRozmxV/Z5+gIVk71BFGB1I8drvYntW
         pQ7jIwjspjXWCBd3GkUqsdJ1SfIuvzJwPIfv4S09ryA7RNPIN5LTEs4RkNBZgvjY4k9/
         NxB1VCg72QdbAWumPAu5NJVoEmu6tQa2FuT14acShPl/hleAfq1WPhObuolk24CG9EPw
         buh7Rf1t68vn0yVF2mJtG2JbMjPtdwPCAOCKbgZqt/cAJcLzFmO+oZxMNjJ5n9XSWkng
         S4Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696321813; x=1696926613;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tCVLlGuDttXDAeKBU2+UulxgkQbSJpXxQEIW9ibhWmE=;
        b=tOPEtVV6E6L0lMSK+ugzrxV8uQ6OVP1lSC2rdzwhg/6IdIu2xAkxgbhN58oa705sp/
         J58G0f1AOQEwINUB6NNrB5Oy5bvdrgrdUe9r4IKReAeWLGT2EtFHGhmY33r/czUYK2rb
         LV7GJ6QuDbrES+H9GfrrFNdszkUp0DF1nUhqlBuIFg/m+amRfm36k/mB7L05qDaF7rr3
         h/kHGqhk76TtBqm41LLm6X/JcEhG0vyk6iG/7JVND8COMWiio9yVxlYT7I09/NeCBwH8
         ACcegfALsUl1Z8+lhONCgYzeNggYN7ZhWipiBGAi+Bn7osIfWXavoTAiaT5MQG6DPpGd
         Qmqw==
X-Gm-Message-State: AOJu0YyZJ1pTwQ0zN/d1a3kPLHB5CqJlOORwKha+PAPYnmTbrWw9SoJF
	sRUf/yiLOofYCGNur6k3RgmK+N0C
X-Google-Smtp-Source: AGHT+IF5jqCZuut1egRUR+esMIoO1bSWn9DsA6o33yNuDo0JmBUPqEnTCoPt8mrVyD2S7D9i02Vjdg==
X-Received: by 2002:a05:6512:360a:b0:502:d35b:5058 with SMTP id f10-20020a056512360a00b00502d35b5058mr10185024lfs.4.1696321812713;
        Tue, 03 Oct 2023 01:30:12 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id q20-20020a1cf314000000b00401b242e2e6sm8801252wmq.47.2023.10.03.01.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 01:30:11 -0700 (PDT)
Date: Tue, 3 Oct 2023 11:30:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <04ea5706-7373-48c4-a93e-e69c50816a0b@kadam.mountain>
References: <bc145167-0471-4ab3-935c-aa5dc20e342a@moroto.mountain>
 <CABdmKX1PsCcRpsnUgwoS9yMhCXcin1bQt6D+N0b2mHP93cmX-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABdmKX1PsCcRpsnUgwoS9yMhCXcin1bQt6D+N0b2mHP93cmX-A@mail.gmail.com>
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.41:from];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,linaro.org:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 015223E9FC
Message-ID-Hash: YZSJHJ4FBQH6GTNYJ6K7S2F7B45AGFPI
X-Message-ID-Hash: YZSJHJ4FBQH6GTNYJ6K7S2F7B45AGFPI
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: John Stultz <jstultz@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Fix off by one in cma_heap_vm_fault()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YZSJHJ4FBQH6GTNYJ6K7S2F7B45AGFPI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBPY3QgMDIsIDIwMjMgYXQgMTA6MTY6MjRBTSAtMDcwMCwgVC5KLiBNZXJjaWVyIHdy
b3RlOg0KPiBPbiBNb24sIE9jdCAyLCAyMDIzIGF0IDEyOjA04oCvQU0gRGFuIENhcnBlbnRlciA8
ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPiB3cm90ZToNCj4gPg0KPiA+IFRoZSBidWZmZXItPnBh
Z2VzW10gaGFzICJidWZmZXItPnBhZ2Vjb3VudCIgZWxlbWVudHMgc28gdGhpcyA+IGNvbXBhcmlz
b24NCj4gPiBoYXMgdG8gYmUgY2hhbmdlZCB0byA+PSB0byBhdm9pZCByZWFkaW5nIGJleW9uZCB0
aGUgZW5kIG9mIHRoZSBhcnJheS4NCj4gPiBUaGUgYnVmZmVyLT5wYWdlc1tdIGFycmF5IGlzIGFs
bG9jYXRlZCBpbiBjbWFfaGVhcF9hbGxvY2F0ZSgpLg0KPiA+DQo+ID4gRml4ZXM6IGE1ZDJkMjll
MjRiZSAoImRtYS1idWY6IGhlYXBzOiBNb3ZlIGhlYXAtaGVscGVyIGxvZ2ljIGludG8gdGhlIGNt
YV9oZWFwIGltcGxlbWVudGF0aW9uIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVy
IDxkYW4uY2FycGVudGVyQGxpbmFyby5vcmc+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9jbWFfaGVhcC5jIHwgMiArLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvaGVhcHMvY21hX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jDQo+
ID4gaW5kZXggZWU4OTlmOGU2NzIxLi5iZWE3ZTU3NGY5MTYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvY21hX2hlYXAuYw0KPiA+IEBAIC0xNjUsNyArMTY1LDcgQEAgc3RhdGljIHZtX2ZhdWx0
X3QgY21hX2hlYXBfdm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpDQo+ID4gICAgICAgICBz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSA9IHZtZi0+dm1hOw0KPiA+ICAgICAgICAgc3RydWN0
IGNtYV9oZWFwX2J1ZmZlciAqYnVmZmVyID0gdm1hLT52bV9wcml2YXRlX2RhdGE7DQo+ID4NCj4g
PiAtICAgICAgIGlmICh2bWYtPnBnb2ZmID4gYnVmZmVyLT5wYWdlY291bnQpDQo+ID4gKyAgICAg
ICBpZiAodm1mLT5wZ29mZiA+PSBidWZmZXItPnBhZ2Vjb3VudCkNCj4gPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIFZNX0ZBVUxUX1NJR0JVUzsNCj4gPg0KPiBIaSBEYW4sDQo+IA0KPiBZb3VyIGZp
eCBsb29rcyBjb3JyZWN0IHRvIG1lLCBidXQgSSdtIGN1cmlvdXMgaWYgeW91IG9ic2VydmVkIHRo
aXMNCj4gcHJvYmxlbSBvbiBhIGRldmljZT8gVGhlIG1tYXAgaW4gZG1hLWJ1Zi5jIGxvb2tzIGxp
a2UgaXQgcHJldmVudHMNCj4gY3JlYXRpbmcgYSBtYXBwaW5nIHRoYXQgaXMgdG9vIGxhcmdlLCBh
bmQgSSB0aGluayBhbiBhY2Nlc3MgYmV5b25kIHRoZQ0KPiBWTUEgc2hvdWxkIHNlZ2ZhdWx0IGJl
Zm9yZSByZWFjaGluZyBoZXJlLg0KDQpUaGlzIGlzIGZyb20gc3RhdGljIGFuYWx5c2lzIGFuZCBu
b3QgZnJvbSB0ZXN0aW5nLiAgWW91IGNvdWxkIGJlIGNvcnJlY3QNCnRoYXQgdGhpcyBidWcgY2Fu
J3QgYWZmZWN0IHJlYWwgbGlmZS4NCg0KcmVnYXJkcywNCmRhbiBjYXJwZW50ZXINCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
