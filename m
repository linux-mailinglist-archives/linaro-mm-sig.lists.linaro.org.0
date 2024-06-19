Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DACD90E2EC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 07:57:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4927B446C3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 05:57:52 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id ADED43EF42
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 05:57:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=B2Wjy2mj;
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42278f3aea4so54967635e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 22:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718776669; x=1719381469; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=scEJE+FtrAipbWWuCOlW7sNdiWYp1YNxGU1Wofz9Sk0=;
        b=B2Wjy2mj8kHJZ95yqbqCYJxQqkOwqgTY2L4KjqpXnV9K3dxjLJEsoE8jXh7AMGyX8w
         GTP422bhKZtc337/6x0E3t+CUAaLs2DRfxnSekeAZ2Fg+M4VdkDTrPsPTdF85QYEYL0W
         LeN30z0w94RddAG7PljZdnM9mAGr/6Q649DfEc4lORP/Hu+tvTNmoifq8veIl6Mq4Odu
         m/39f6WxwK5pXZpQC9DbqFNf7+An3avCDcLUzwtOE4Wjk0GfhVtWAFk62Vn0Uuc0+QLA
         GKtRaEe3hyZ27L5RKz8aQSxq08iO90pxZBhk0tyOVRy3AP/QTtV/0A98dBJUtnogg7Vo
         Egew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718776669; x=1719381469;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=scEJE+FtrAipbWWuCOlW7sNdiWYp1YNxGU1Wofz9Sk0=;
        b=SpUFEEoZfiHY4NFwiuvucujCS2RReYHJiO4aClcAfEQgcutps6QrbfQW/EieMhG2Yk
         ziFocZGuvGagmrAPmGWIrqwTpzgMZH5RhLiWMrE0fIGiSwKnVKAkJNppJL2vOE6hWUSa
         jca2TK4dd3jZtPgd9ay2+s1rX6Gg+d4J6tKrS518DmB8jmIZSDs9R7XSWHKk+vzIY428
         MCa8+hJGBq0yiNd2yq7DTIM1S3hv8XoyOMD8dn1nVUqT8yhxt3kQbRX13GuMV3Y/L1CQ
         dsIDJ2cl5nVnsWJ1vOqaqqmmDINR+wpg516ByRzgeAvoFVHGg+aqhZFGIQCCoVPJikP9
         GUMQ==
X-Forwarded-Encrypted: i=1; AJvYcCURrla9ZIxNtEY8Kd5bTr93eZQiDq8oGcm0oUnoGR51DjYw5fs76XN4llUlWMi/XSozlGWx8ukr9wxULXpb0CNjYtY3dblXozVP9n9bWY4=
X-Gm-Message-State: AOJu0YyJlwe5ekeyghoMStrXmbR+rGxn7QSB0uLnTjDtibzgrTL1npHV
	+QUEH1j1ja/DGTDB3yBeGnw+AojQFg9/WbYQj0KYSUilF1YtFO3l
X-Google-Smtp-Source: AGHT+IGUWmG2ozlLnkr7/lTelYMt1DNSd/pixvzBkdl27mVAYbqX6fLVIuUMu0W+3eqBG/aY2Mqy9w==
X-Received: by 2002:a05:600c:1c98:b0:423:791:f446 with SMTP id 5b1f17b1804b1-4247507a087mr9346335e9.7.1718776668365;
        Tue, 18 Jun 2024 22:57:48 -0700 (PDT)
Received: from nsa.fritz.box ([2001:a61:35f9:9001:40df:88bb:5090:7ab6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422874de68asm254670625e9.29.2024.06.18.22.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 22:57:48 -0700 (PDT)
Message-ID: <7b20ed6c17fc7e7a023eb2d305ee699a81a2a2ce.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: kernel test robot <lkp@intel.com>, Paul Cercueil <paul@crapouillou.net>,
  Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Vinod Koul <vkoul@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Date: Wed, 19 Jun 2024 07:57:47 +0200
In-Reply-To: <202406191014.9JAzwRV6-lkp@intel.com>
References: <20240618100302.72886-4-paul@crapouillou.net>
	 <202406191014.9JAzwRV6-lkp@intel.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: ADED43EF42
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.47:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: FMHT6Q56HQZJTV3BRVJPLVCXV45DYCP4
X-Message-ID-Hash: FMHT6Q56HQZJTV3BRVJPLVCXV45DYCP4
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FMHT6Q56HQZJTV3BRVJPLVCXV45DYCP4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDI0LTA2LTE5IGF0IDExOjE1ICswODAwLCBrZXJuZWwgdGVzdCByb2JvdCB3cm90
ZToNCj4gSGkgUGF1bCwNCj4gDQo+IGtlcm5lbCB0ZXN0IHJvYm90IG5vdGljZWQgdGhlIGZvbGxv
d2luZyBidWlsZCBlcnJvcnM6DQo+IA0KPiBbYXV0byBidWlsZCB0ZXN0IEVSUk9SIG9uIGppYzIz
LWlpby90b2dyZWddDQo+IFthbHNvIGJ1aWxkIHRlc3QgRVJST1Igb24gdmtvdWwtZG1hZW5naW5l
L25leHQgbGludXMvbWFzdGVyIHY2LjEwLXJjNCBuZXh0LQ0KPiAyMDI0MDYxOF0NCj4gW0lmIHlv
dXIgcGF0Y2ggaXMgYXBwbGllZCB0byB0aGUgd3JvbmcgZ2l0IHRyZWUsIGtpbmRseSBkcm9wIHVz
IGEgbm90ZS4NCj4gQW5kIHdoZW4gc3VibWl0dGluZyBwYXRjaCwgd2Ugc3VnZ2VzdCB0byB1c2Ug
Jy0tYmFzZScgYXMgZG9jdW1lbnRlZCBpbg0KPiBodHRwczovL2dpdC1zY20uY29tL2RvY3MvZ2l0
LWZvcm1hdC1wYXRjaCNfYmFzZV90cmVlX2luZm9ybWF0aW9uXQ0KPiANCj4gdXJsOsKgwqDCoA0K
PiBodHRwczovL2dpdGh1Yi5jb20vaW50ZWwtbGFiLWxrcC9saW51eC9jb21taXRzL1BhdWwtQ2Vy
Y3VlaWwvZG1hZW5naW5lLUFkZC1BUEktZnVuY3Rpb24tZG1hZW5naW5lX3ByZXBfcGVyaXBoZXJh
bF9kbWFfdmVjLzIwMjQwNjE4LTE4MDYwMg0KPiBiYXNlOsKgwqAgaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvamljMjMvaWlvLmdpdMKgdG9ncmVnDQo+IHBh
dGNoIGxpbms6wqDCoMKgDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDA2MTgxMDAz
MDIuNzI4ODYtNC1wYXVsJTQwY3JhcG91aWxsb3UubmV0DQo+IHBhdGNoIHN1YmplY3Q6IFtQQVRD
SCB2MTEgMy83XSBpaW86IGNvcmU6IEFkZCBuZXcgRE1BQlVGIGludGVyZmFjZSBpbmZyYXN0cnVj
dHVyZQ0KPiBjb25maWc6IHg4Nl82NC1yYW5kY29uZmlnLTE2MS0yMDI0MDYxOQ0KPiAoaHR0cHM6
Ly9kb3dubG9hZC4wMS5vcmcvMGRheS1jaS9hcmNoaXZlLzIwMjQwNjE5LzIwMjQwNjE5MTAxNC45
SkF6d1JWNi1sa3BAaW50ZWwuYw0KPiBvbS9jb25maWcpDQo+IGNvbXBpbGVyOiBjbGFuZyB2ZXJz
aW9uIDE4LjEuNQ0KPiAoaHR0cHM6Ly9naXRodWIuY29tL2xsdm0vbGx2bS1wcm9qZWN0wqA2MTdh
MTVhOWVhYzk2MDg4YWU1ZTkxMzQyNDhkODIzNmUzNGI5MWIxKQ0KPiByZXByb2R1Y2UgKHRoaXMg
aXMgYSBXPTEgYnVpbGQpOg0KPiAoaHR0cHM6Ly9kb3dubG9hZC4wMS5vcmcvMGRheS1jaS9hcmNo
aXZlLzIwMjQwNjE5LzIwMjQwNjE5MTAxNC45SkF6d1JWNi1sa3BAaW50ZWwuYw0KPiBvbS9yZXBy
b2R1Y2UpDQo+IA0KPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSBpbiBhIHNlcGFyYXRlIHBhdGNoL2Nv
bW1pdCAoaS5lLiBub3QganVzdCBhIG5ldyB2ZXJzaW9uIG9mDQo+IHRoZSBzYW1lIHBhdGNoL2Nv
bW1pdCksIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZ3MNCj4gPiBSZXBvcnRlZC1ieToga2VybmVs
IHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+DQo+ID4gQ2xvc2VzOg0KPiA+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL29lLWtidWlsZC1hbGwvMjAyNDA2MTkxMDE0LjlKQXp3UlY2LWxrcEBpbnRl
bC5jb20vDQo+IA0KPiBBbGwgZXJyb3JzIChuZXcgb25lcyBwcmVmaXhlZCBieSA+Pik6DQo+IA0K
PiA+ID4gZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWJ1ZmZlci5jOjE3MTU6MzogZXJyb3I6IGNh
bm5vdCBqdW1wIGZyb20gdGhpcyBnb3RvDQo+ID4gPiBzdGF0ZW1lbnQgdG8gaXRzIGxhYmVsDQo+
IMKgwqDCoCAxNzE1IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9k
bWFidWZfdW5tYXBfYXR0YWNobWVudDsNCj4gwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgXg0KPiDCoMKgIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1i
dWZmZXIuYzoxNzIwOjI6IG5vdGU6IGp1bXAgYnlwYXNzZXMgaW5pdGlhbGl6YXRpb24gb2YNCg0K
SSBndWVzcyB0aGUgY29tcGlsZXIgcHJvZHVjZXMgY29kZSB0aGF0IHdpbGwgcnVuIHRoZSBjbGVh
bnVwIGZ1bmN0aW9uIG9uIGFuDQp1bmluaXRpYWxpemVkIHZhcmlhYmxlLiBJIHdvdWxkIHRoZW4g
Z28gYmFjayB0byBwbGFpbiBtdXRleCgpIGluc3RlYWQgb2YgbW92aW5nDQpndWFyZCgpIHRvIGEg
cGxhY2Ugd2hlcmUgaXQgZG9lcyBub3QgbWFrZSBzZW5zZSBvbmx5IHRvIHNodXQgdXAgdGhlIHdh
cm5pbmdzLg0KDQotIE51bm8gU8OhDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
