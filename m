Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D65886FFC8
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 12:07:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C92743F38
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 11:07:43 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id ED1813F380
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Mar 2024 11:07:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=O4qLdhmy;
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a3122b70439so659225666b.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 04 Mar 2024 03:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709550455; x=1710155255; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Wu1HQfAzXdwAMW97wtn2MyUT9kqXYE4x4WqJIu7nsOI=;
        b=O4qLdhmyJK2INqlIP8/oXjkllCfUdSeqyz0P1OUQrWdCVD9kcJSIbzrD+JA6SK90b4
         9OVbsl5AZCvzegVty57sy7OQjiLC9BPl7Wbqdtrh9O5h6E9jKvtFkxjnC/ryuhUlKPRI
         kRd8V78meW/Xvr/C/wpfefynAlCjx2fMJU/IdrtSmDcJiQdJbTROzoMJ6ffOvcOuvW/0
         HhXCfIp/YBAQGf7HYpV3XSk97/cBBmVqfyubsXKN1rVASZNwtlVGnS/ZThTefNvCihTz
         cwLM4pw8P8EpApL52j80a+ZJIF6ib8rV2cCEAYMCjN14vISkG5rddxQEv5xTPVE27ee+
         ZKYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709550455; x=1710155255;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wu1HQfAzXdwAMW97wtn2MyUT9kqXYE4x4WqJIu7nsOI=;
        b=BW6th7k6F/8xezykRqQiV0/PMjg/CL1LjQw81PbKdwJmU2ey5S+yqoKSrmu/yss1BB
         H4Vj1QjiPiLGL99ldL625Zi4KlviN5irfoj4NDbPxoKJgBvoYt6JL8416gjloM+QGJeH
         FlwZjtOl4KyWQiDH3yuf4mCUQI3FRYlsc0MrT6HIZwtoXwJY0gnWEwseMRqnm5W+FBEo
         rq9hepg29SiLS1PS9IO+bivhRzILQw278q9vkjnSzMuDjG0rU+sY5c24OC4B8rVgW14p
         MTD33sokMdmfUGcqtkQmIxRYzqhPYe8esiUb6uE4by6NeaOvDsur1UaQliRj5Bw2JYc9
         VKMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUq23FcGu0Ib9vhoWh58xrvfe2ra4gUU+umta43no36uj4Rpc/33ZRqWotmwLxSRqFpxPOhT78nmTaiL0W5uxfG2bzOwrvJZJsVU5ZIRzo=
X-Gm-Message-State: AOJu0YzGb58kEb/T6toSFzZBSVWhX0ziVKnQszzRmyI9U3feGAF+Yt8J
	FzZ5ZSC+57YdaWzvZkCJ/dIkL479LDPF7ccvvkDRhjLp7MQ4Vgnc
X-Google-Smtp-Source: AGHT+IHgDGK/BZFLZ4o0q5QlhX+iDooVzGPEucKa4H0749pnNAkElImYC6SGV1YXCUk8M8A4OsMdqw==
X-Received: by 2002:a17:906:3511:b0:a3f:ac2f:893a with SMTP id r17-20020a170906351100b00a3fac2f893amr5794723eja.73.1709550454470;
        Mon, 04 Mar 2024 03:07:34 -0800 (PST)
Received: from ?IPv6:2003:f6:ef1b:2000:944c:cbc7:1e1c:2c47? (p200300f6ef1b2000944ccbc71e1c2c47.dip0.t-ipconnect.de. [2003:f6:ef1b:2000:944c:cbc7:1e1c:2c47])
        by smtp.gmail.com with ESMTPSA id i23-20020a170906265700b00a44dca5f9c1sm2512075ejc.100.2024.03.04.03.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 03:07:34 -0800 (PST)
Message-ID: <a8c3bddfb7a53682f23f4c99ce46e67ffc0213d1.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Nuno Sa <nuno.sa@analog.com>, Vinod Koul <vkoul@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, Sumit
 Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Paul Cercueil
 <paul@crapouillou.net>
Date: Mon, 04 Mar 2024 12:10:58 +0100
In-Reply-To: <20240223-iio-dmabuf-v7-1-78cfaad117b9@analog.com>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
	 <20240223-iio-dmabuf-v7-1-78cfaad117b9@analog.com>
User-Agent: Evolution 3.50.4 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ED1813F380
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.09 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.45:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
Message-ID-Hash: Y7ONR6Q2GGQJTJK5ETNP2V5D56FEYNQW
X-Message-ID-Hash: Y7ONR6Q2GGQJTJK5ETNP2V5D56FEYNQW
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 1/6] dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y7ONR6Q2GGQJTJK5ETNP2V5D56FEYNQW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDI0LTAyLTIzIGF0IDEzOjEzICswMTAwLCBOdW5vIFNhIHdyb3RlOg0KPiBGcm9t
OiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4NCj4gDQo+IFRoaXMgZnVuY3Rp
b24gY2FuIGJlIHVzZWQgdG8gaW5pdGlhdGUgYSBzY2F0dGVyLWdhdGhlciBETUEgdHJhbnNmZXIs
DQo+IHdoZXJlIHRoZSBhZGRyZXNzIGFuZCBzaXplIG9mIGVhY2ggc2VnbWVudCBpcyBsb2NhdGVk
IGluIG9uZSBlbnRyeSBvZg0KPiB0aGUgZG1hX3ZlYyBhcnJheS4NCj4gDQo+IFRoZSBtYWpvciBk
aWZmZXJlbmNlIHdpdGggZG1hZW5naW5lX3ByZXBfc2xhdmVfc2coKSBpcyB0aGF0IGl0IHN1cHBv
cnRzDQo+IHNwZWNpZnlpbmcgdGhlIGxlbmd0aHMgb2YgZWFjaCBETUEgdHJhbnNmZXI7IGFzIHRy
eWluZyB0byBvdmVycmlkZSB0aGUNCj4gbGVuZ3RoIG9mIHRoZSB0cmFuc2ZlciB3aXRoIGRtYWVu
Z2luZV9wcmVwX3NsYXZlX3NnKCkgaXMgYSB2ZXJ5IHRlZGlvdXMNCj4gcHJvY2Vzcy4gVGhlIGlu
dHJvZHVjdGlvbiBvZiBhIG5ldyBBUEkgZnVuY3Rpb24gaXMgYWxzbyBqdXN0aWZpZWQgYnkgdGhl
DQo+IGZhY3QgdGhhdCBzY2F0dGVybGlzdHMgYXJlIG9uIHRoZWlyIHdheSBvdXQuDQo+IA0KPiBO
b3RlIHRoYXQgZG1hZW5naW5lX3ByZXBfaW50ZXJsZWF2ZWRfZG1hKCkgaXMgbm90IGhlbHBmdWwg
ZWl0aGVyIGluIHRoYXQNCj4gY2FzZSwgYXMgaXQgYXNzdW1lcyB0aGF0IHRoZSBhZGRyZXNzIG9m
IGVhY2ggc2VnbWVudCB3aWxsIGJlIGhpZ2hlciB0aGFuDQo+IHRoZSBvbmUgb2YgdGhlIHByZXZp
b3VzIHNlZ21lbnQsIHdoaWNoIHdlIGp1c3QgY2Fubm90IGd1YXJhbnRlZSBpbiBjYXNlDQo+IG9m
IGEgc2NhdHRlci1nYXRoZXIgdHJhbnNmZXIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBQYXVsIENl
cmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4NCj4gU2lnbmVkLW9mZi1ieTogTnVubyBTYSA8
bnVuby5zYUBhbmFsb2cuY29tPg0KPiAtLS0NCg0KSGkgVmlub2QsDQoNCklzIHRoaXMgYWxyZWFk
eSBnb29kIGZvciB5b3U/IEkgZG8gbm90IHdhbnQgdG8gYmUgcHVzaHkgYnV0IHdlJ3JlIHRyeWlu
ZyB0byBzZWUNCmlmIHdlIGNhbiBoYXZlIHRoaXMgaW4gdGhlIDYuOSBjeWNsZSBhbmQgSm9uYXRo
YW4gZGVmaW5pdGVseSB3YW50cyBhbiBhY2sgZnJvbQ0KeW91IGJlZm9yZSBtZXJnaW5nIHRoaXMg
aW4gaGlzIHRyZWUuIEkndmUgbW9yZSBvciBsZXNzIHRpbGwgV2VkbmVzZGF5IHNvIHRoYXQncw0K
d2h5IEknbSBhc2tpbmcgYWxyZWFkeSB0b2RheSBzbyBJIHN0aWxsIGhhdmUgdGltZSB0byByZS1z
cGluIGlmIHlvdSB3YW50IHNvbWUNCmNoYW5nZXMuDQoNCi0gTnVubyBTw6ENCg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
