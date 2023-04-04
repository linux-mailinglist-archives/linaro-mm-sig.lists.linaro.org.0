Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E46536D610A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 14:41:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F14603F94F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 12:41:35 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by lists.linaro.org (Postfix) with ESMTPS id BE7D23E8F3
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Apr 2023 07:42:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=T993r5eb;
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.219.41 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id m6so22972885qvq.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Apr 2023 00:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680594135;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lDMI70p/Qx2JVl34fHr9W5X4xmsW9s9zZJsUsj0SZQc=;
        b=T993r5eblXCvT06GT9ZVZbRjR3aYs3XG6Oy2yizyGTVHtnxohPsaS7SY4C5smWzkL8
         dwAhHkA2CevrwjOA/Y1dh/T/aKK7Ns/euuxt0XYrQm3djyGyPRo9d1m30KrdwQ17BWGO
         aKCtd6MzOnrqgXzFcjjM4PYmFNqLLkV8kqhM/uHT2tYVfm74f4UDJrCpjLDSSAXqrHLf
         rxrNVK2cRb6u9zdbFk8m71AI4BOZXD5h/oTtoHl+Re5rYrZnABKuuhkG9XtWM50DLQnC
         WxKV+2Ef4g91++BU8UJ38AzbcpDncCauyeOvD4cPmelmRc17dURoBnT5nnJ3nKDCXzAI
         0K+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680594135;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lDMI70p/Qx2JVl34fHr9W5X4xmsW9s9zZJsUsj0SZQc=;
        b=aBtgCfgqydfYiX3RMkQQDzqPvqceNZfBVkXgrnCydjZB6k2IMpAwIROQBGcyiyiELq
         uKXDEeXC/Sy3wT7z96TRvpRfpNLRki2y8YvNgqq5FpVwWJZd14M3VAFta7dQZbCwcfit
         GodzhC0AeaC0RabJnoAAZrrBlSxDn8i5N/arluDgZubi7taLXbZGoYYve6BruQ8HpObk
         7UH9dbiZoxSsqFG7DRvp83w0Bn4em92THPlPZUc7/MM6sOvT3OKaDwpXUKMgNJJuQZ1N
         ndA5TaorEGP/sQz7D5w3/LkzQKrc1kw3WM3Eaiw6nPQUvushrwRuII8VGPxhYafZCSZ7
         z+nQ==
X-Gm-Message-State: AAQBX9ehYu+nl4wIpBGqSsQ4doPbQksWB92FYGEonGo0JzO2ZT6NSph3
	3mjefmW82/oS22JbHCD7gRw=
X-Google-Smtp-Source: AKy350a7AIirL2LCRCeg6Ayh0sxRvXwJm1kJOUFvTNEb9Qe/BfEBzR8SQUg6etn/sxviFzC6/snPSA==
X-Received: by 2002:ad4:5be8:0:b0:56a:b623:9b09 with SMTP id k8-20020ad45be8000000b0056ab6239b09mr2092833qvc.14.1680594135330;
        Tue, 04 Apr 2023 00:42:15 -0700 (PDT)
Received: from ?IPv6:2003:f6:ef05:8700:853c:3ba5:d710:3c1d? (p200300f6ef058700853c3ba5d7103c1d.dip0.t-ipconnect.de. [2003:f6:ef05:8700:853c:3ba5:d710:3c1d])
        by smtp.gmail.com with ESMTPSA id ne2-20020a056214424200b005dd8b9345c1sm3215323qvb.89.2023.04.04.00.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 00:42:14 -0700 (PDT)
Message-ID: <35805dbb85496d3a27872c578158c695c8bbb6b5.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron
 <jic23@kernel.org>,  Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul
 <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Sumit
 Semwal <sumit.semwal@linaro.org>,  Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>
Date: Tue, 04 Apr 2023 09:44:18 +0200
In-Reply-To: <20230403154800.215924-1-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BE7D23E8F3
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.219.41:from,2003:f6:ef05:8700:853c:3ba5:d710:3c1d:received];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.41:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4KVUIW2TC27BFQBRIKF4MEBZQ5GAYWYH
X-Message-ID-Hash: 4KVUIW2TC27BFQBRIKF4MEBZQ5GAYWYH
X-Mailman-Approved-At: Tue, 04 Apr 2023 12:40:58 +0000
CC: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 00/11] iio: new DMABUF based API, v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KVUIW2TC27BFQBRIKF4MEBZQ5GAYWYH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDIzLTA0LTAzIGF0IDE3OjQ3ICswMjAwLCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0K
PiBIaSBKb25hdGhhbiwNCj4gDQo+IEhlcmUncyB0aGUgdjMgb2YgbXkgcGF0Y2hzZXQgdGhhdCBp
bnRyb2R1Y2VzIGEgbmV3IGludGVyZmFjZSBiYXNlZCBvbg0KPiBETUFCVUYgb2JqZWN0cyB0byBj
b21wbGVtZW50IHRoZSBmaWxlaW8gQVBJLCBhbmQgYWRkcyB3cml0ZSgpIHN1cHBvcnQgdG8NCj4g
dGhlIGV4aXN0aW5nIGZpbGVpbyBBUEkuDQo+IA0KPiBJdCBjaGFuZ2VkIHF1aXRlIGEgbG90IHNp
bmNlIFYyOyB0aGUgSUlPIHN1YnN5c3RlbSBpcyBub3cganVzdCBhIERNQUJVRg0KPiBpbXBvcnRl
ciwgYW5kIGFsbCB0aGUgY29tcGxleGl0eSByZWxhdGVkIHRvIGhhbmRsaW5nIGNyZWF0aW9uLCBk
ZWxldGlvbg0KPiBhbmQgZXhwb3J0IG9mIERNQUJVRnMgKGluY2x1ZGluZyBETUEgbWFwcGluZyBl
dGMuKSBpcyBnb25lLg0KPiANCj4gVGhpcyBuZXcgaW50ZXJmYWNlIHdpbGwgYmUgdXNlZCBieSBM
aWJpaW8uIFRoZSBjb2RlIGlzIHJlYWR5WzFdIGFuZCB3aWxsDQo+IGJlIG1lcmdlZCB0byB0aGUg
bWFpbiBicmFuY2ggYXMgc29vbiBhcyB0aGUga2VybmVsIGJpdHMgYXJlIGFjY2VwdGVkDQo+IHVw
c3RyZWFtLg0KPiANCj4gTm90ZSB0aGF0IExpYmlpbyAoYW5kIGl0cyBzZXJ2ZXIgY291bnRlcnBh
cnQsIGlpb2QpIHVzZSB0aGlzIG5ldw0KPiBpbnRlcmZhY2UgaW4gdHdvIGRpZmZlcmVudCB3YXlz
Og0KPiAtIGJ5IG1lbW9yeS1tYXBwaW5nIHRoZSBETUFCVUZzIHRvIGFjY2VzcyB0aGUgc2FtcGxl
IGRhdGEgZGlyZWN0bHksDQo+IMKgIHdoaWNoIGlzIG11Y2ggZmFzdGVyIHRoYW4gdXNpbmcgdGhl
IGV4aXN0aW5nIGZpbGVpbyBBUEkgYXMgdGhlIHNhbXBsZQ0KPiDCoCBkYXRhIGRvZXMgbm90IG5l
ZWQgdG8gYmUgY29waWVkOw0KPiAtIGJ5IHBhc3NpbmcgdGhlIERNQUJVRnMgYXJvdW5kIGRpcmVj
dGx5IHRvIHRoZSBVU0Igc3RhY2ssIGluIGENCj4gwqAgZGV2aWNlLXRvLWRldmljZSB6ZXJvLWNv
cHkgZmFzaGlvbiwgdXNpbmcgYSBuZXcgRE1BQlVGIGludGVyZmFjZSBmb3INCj4gwqAgdGhlIFVT
QiAoRnVuY3Rpb25GUyB0byBiZSBleGFjdCkgc3RhY2ssIHdoaWNoIGlzIGJlaW5nIHVwc3RyZWFt
ZWQgaW4NCj4gwqAgcGFyYWxsZWwgb2YgdGhpcyBwYXRjaHNldCBbMl0uDQo+IA0KPiBBcyBmb3Ig
d3JpdGUoKSBzdXBwb3J0LCBOdW5vIChDYydkKSBzYWlkIGhlIHdpbGwgd29yayBvbiB1cHN0cmVh
bWluZyB0aGUNCj4gREFDIGNvdW50ZXJwYXJ0IG9mIGFkYy9hZGktYXhpLWFkYy5jIGluIHRoZSBu
ZXh0IGZldyB3ZWVrcywgc28gdGhlcmUNCj4gd2lsbCBiZSBhIHVzZXIgZm9yIHRoZSBidWZmZXIg
d3JpdGUoKSBzdXBwb3J0LiBJIGhvcGUgeW91IGFyZSBva2F5IHdpdGgNCj4gdGhpcyAtIG90aGVy
d2lzZSwgd2UgY2FuIGp1c3Qgd2FpdCB1bnRpbCB0aGlzIHdvcmsgaXMgZG9uZSwgYW5kIEkgc3Rp
bGwNCj4gYmVuZWZpdCBmcm9tIHNlbmRpbmcgdGhpcyBwYXRjaHNldCBlYXJseSB0byBnZXQgZmVl
ZGJhY2suDQo+IA0KDQpJbmRlZWQsIEkgYWxyZWFkeSBzdGFydGVkIGEgZGlzY3Vzc2lvbiBbMV0g
c2luY2Ugd2hhdCB3ZSBoYXZlIG5vdyBmb3IgDQphZGMvYWRpLWF4aS1hZGMuYyBoYXMgc29tZSBt
YWpvciBmbGF3cyAoSU1ITykuIFNvIEknbSBob3BwaW5nIHRvIGdldCBzb21lDQpmZWVkYmFjay9k
aXNjdXNzaW9uIHRvIGdldCAicmlnaHRlciIgZnJvbSB0aGUgYmVnaW5uaW5nLg0KDQoNClsxXTog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaWlvL2RhYzM5Njc4MDVkN2RkYmQ0NjUzZWFk
NmQ1MGU2MTQ4NDRlMGI3MGIuY2FtZWxAZ21haWwuY29tL1QvI3UNCg0KLSBOdW5vIFPDoQ0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
