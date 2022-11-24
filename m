Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 706AA63796B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 13:55:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 738563EEE6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 12:55:51 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id 7E5133EE40
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 12:55:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=l+Onk33+;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id f18so3998461ejz.5
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 04:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wATdhX93jIu9ywzFV+Yks3t6B626MQgeteSPPBs2SLg=;
        b=l+Onk33+eMYCvI+eRk6qxicDMLLN/jvxH1IywBV+hgzxm/qjYx6peCXwy+fkISI4k/
         owfcLIerspmOEUFQSuG9au2LCzEdPzRAu7FDQTtSMZNfNMtIeuHIAfyB0UGFAFfjujAe
         d7qS/ar2fbAEXVWk1Wd0yRVjoRWdT8QUKwh19reXW8O4umTZF5MgDpq8yecQpqLOQRl+
         UcC32bvlZX7cQAi33ZBwUWt8DugWfKh5OWTR97vuCg5S6r8fqulRw+DjkYzAKvB1QSjb
         NemLSGRA2Qm4TDLIrqPMoWisTA1oqsfAwlHYnadvq9bGUR47LiqqQJvu6tLYzHzm5JIS
         hrqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wATdhX93jIu9ywzFV+Yks3t6B626MQgeteSPPBs2SLg=;
        b=kU5yNfkBe+0ndnVkTYapYni/N93yYAVqocVRKzvMOx4ez+aTflFm4Fk63XlRx3DzpY
         YKNGRrF912oB2+l0AD68dbAHFY7DXNxsq5KijGl5g02YwS5FedBaNUcLHfAu2AGWN9U0
         kMsXgHaShkrIuVDpcZjziXfjm40W9SsHIbB/hRR9QIpH5CkGNgaHL+gJFVgHWqVhsXtp
         UBCsmBGFgKWosIyMQPtMGyo2vbm56dGG3wrls7zJuwZ5b6K6DalN9/hZXvbjIIjoq9hv
         FjzQgZwbPf/3iYD8PImqIPFe9uc5Z9Hc0Q8VgcH3ZxfaUGr/IjV/P2bIU/cOE35EfKva
         a8kQ==
X-Gm-Message-State: ANoB5pnBlD0QZjfnIWHyciQNo7AozC74UZ60cYKnHdAgErUr+bO+RzHb
	Wf87I0WAqjjZuajKoRRmSlI=
X-Google-Smtp-Source: AA0mqf54IOmFzyUXuox7V30QjXf5oT+qrkDHc1avzN/Mm5ucWXJnsZb3izh6EcEiQIjfZrV3ZElJxQ==
X-Received: by 2002:a17:906:814f:b0:7b2:86d6:292d with SMTP id z15-20020a170906814f00b007b286d6292dmr14194598ejw.714.1669294541433;
        Thu, 24 Nov 2022 04:55:41 -0800 (PST)
Received: from [192.168.178.21] (p5b0ea229.dip0.t-ipconnect.de. [91.14.162.41])
        by smtp.gmail.com with ESMTPSA id ay10-20020a056402202a00b00461cdda400esm499262edb.4.2022.11.24.04.55.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 04:55:40 -0800 (PST)
Message-ID: <3de513b2-8ec3-2ff4-136d-0f56ac07c0ff@gmail.com>
Date: Thu, 24 Nov 2022 13:55:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: cuigaosheng <cuigaosheng1@huawei.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Charan Teja Kalla <quic_charante@quicinc.com>,
 "T.J. Mercier" <tjmercier@google.com>
References: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
 <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com>
 <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
 <CABdmKX1UMB0L0PmHB59nijReZef6LUQ3XKXitHZo2YnUrJTz9Q@mail.gmail.com>
 <2c9fa595-e788-5474-4f2b-ffbd08a70d13@amd.com>
 <CABdmKX0KJJV0iQwy0aUNXcLc1DGyLjmh6_Y53asHEoh-uyHzAA@mail.gmail.com>
 <83944425-c177-7918-bcde-9cf7296a613f@amd.com>
 <e12784da-b3e3-ddec-0e84-f968d60097c4@quicinc.com>
 <b2d5d904-99f2-7974-a22d-63a6cf864973@huawei.com>
 <689ad89b-0e34-3743-24c9-3f92856720f8@amd.com>
 <a87e407c-f858-28f1-c5ea-ca69b39db53a@huawei.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <a87e407c-f858-28f1-c5ea-ca69b39db53a@huawei.com>
X-Rspamd-Queue-Id: 7E5133EE40
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.51:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,mail-ej1-f51.google.com:rdns,mail-ej1-f51.google.com:helo];
	TAGGED_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.937]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KJHFKLWKTQE55AQGQB4JHT6U6MXSFB63
X-Message-ID-Hash: KJHFKLWKTQE55AQGQB4JHT6U6MXSFB63
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KJHFKLWKTQE55AQGQB4JHT6U6MXSFB63/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpBbSAyNC4xMS4yMiB1bSAxMzo0OSBzY2hyaWViIGN1aWdhb3NoZW5nOg0KPj4gSSB3YXMgYWxy
ZWFkeSB3b25kZXJpbmcgd2h5IHRoZSBvcmRlciBpcyB0aGlzIHdheS4NCj4+DQo+PiBXaHkgaXMg
ZG1hX2J1Zl9zdGF0c19zZXR1cCgpIG5lZWRpbmcgdGhlIGZpbGUgaW4gdGhlIGZpcnN0IHBsYWNl
PyANCj4NCj4gZG1hYnVmLT5maWxlIHdpbGwgYmUgdXNlZCBpbiBkbWFfYnVmX3N0YXRzX3NldHVw
KCksIHRoZSANCj4gZG1hX2J1Zl9zdGF0c19zZXR1cCgpIGFzIGZvbGxvd3M6DQo+DQo+PiAxNzEg
aW50IGRtYV9idWZfc3RhdHNfc2V0dXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4+IDE3MiB7
DQo+PiAxNzPCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfYnVmX3N5c2ZzX2VudHJ5ICpzeXNm
c19lbnRyeTsNCj4+IDE3NMKgwqDCoMKgwqDCoMKgwqAgaW50IHJldDsNCj4+IDE3NQ0KPj4gMTc2
wqDCoMKgwqDCoMKgwqDCoCBpZiAoIWRtYWJ1ZiB8fCAhZG1hYnVmLT5maWxlKQ0KPj4gMTc3wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+PiAxNzgNCj4+
IDE3OcKgwqDCoMKgwqDCoMKgwqAgaWYgKCFkbWFidWYtPmV4cF9uYW1lKSB7DQo+PiAxODDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcl9lcnIoImV4cG9ydGVyIG5hbWUgbXVzdCBu
b3QgYmUgZW1wdHkgaWYgc3RhdHMgDQo+PiBuZWVkZWRcbiIpOw0KPj4gMTgxwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+PiAxODLCoMKgwqDCoMKgwqDC
oMKgIH0NCj4+IDE4Mw0KPj4gMTg0wqDCoMKgwqDCoMKgwqDCoCBzeXNmc19lbnRyeSA9IGt6YWxs
b2Moc2l6ZW9mKHN0cnVjdCBkbWFfYnVmX3N5c2ZzX2VudHJ5KSwgDQo+PiBHRlBfS0VSTkVMKTsN
Cj4+IDE4NcKgwqDCoMKgwqDCoMKgwqAgaWYgKCFzeXNmc19lbnRyeSkNCj4+IDE4NsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PTUVNOw0KPj4gMTg3DQo+PiAxODjC
oMKgwqDCoMKgwqDCoMKgIHN5c2ZzX2VudHJ5LT5rb2JqLmtzZXQgPSBkbWFfYnVmX3Blcl9idWZm
ZXJfc3RhdHNfa3NldDsNCj4+IDE4OcKgwqDCoMKgwqDCoMKgwqAgc3lzZnNfZW50cnktPmRtYWJ1
ZiA9IGRtYWJ1ZjsNCj4+IDE5MA0KPj4gMTkxwqDCoMKgwqDCoMKgwqDCoCBkbWFidWYtPnN5c2Zz
X2VudHJ5ID0gc3lzZnNfZW50cnk7DQo+PiAxOTINCj4+IDE5M8KgwqDCoMKgwqDCoMKgwqAgLyog
Y3JlYXRlIHRoZSBkaXJlY3RvcnkgZm9yIGJ1ZmZlciBzdGF0cyAqLw0KPj4gMTk0wqDCoMKgwqDC
oMKgwqDCoCByZXQgPSBrb2JqZWN0X2luaXRfYW5kX2FkZCgmc3lzZnNfZW50cnktPmtvYmosIA0K
Pj4gJmRtYV9idWZfa3R5cGUsIE5VTEwsDQo+PiAxOTXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIlbHUiLCANCj4+
IGZpbGVfaW5vZGUoZG1hYnVmLT5maWxlKS0+aV9pbm8pOw0KDQpBaCwgc28gaXQgdXNlcyB0aGUg
aV9pbm8gb2YgdGhlIGZpbGUgZm9yIHRoZSBzeXNmcyB1bmlxdWUgbmFtZS4NCg0KSSdtIGdvaW5n
IHRvIHRha2UgYW5vdGhlciBsb29rIGhvdyB0byBwcm9wZXJseSBjbGVhbiB0aGlzIHVwLg0KDQpU
aGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0LA0KQ2hyaXN0aWFuLg0KDQo+PiAxOTbCoMKgwqDC
oMKgwqDCoMKgIGlmIChyZXQpDQo+PiAxOTfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBnb3RvIGVycl9zeXNmc19kbWFidWY7DQo+PiAxOTgNCj4+IDE5OcKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIDA7DQo+PiAyMDANCj4+IDIwMSBlcnJfc3lzZnNfZG1hYnVmOg0KPj4gMjAywqDCoMKg
wqDCoMKgwqDCoCBrb2JqZWN0X3B1dCgmc3lzZnNfZW50cnktPmtvYmopOw0KPj4gMjAzwqDCoMKg
wqDCoMKgwqDCoCBkbWFidWYtPnN5c2ZzX2VudHJ5ID0gTlVMTDsNCj4+IDIwNMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIHJldDsNCj4+IDIwNSB9DQo+IERpZCBJIG1pc3Mgc29tZXRoaW5nPw0KPg0K
PiBUaGFua3MuDQo+DQo+IE9uIDIwMjIvMTEvMjQgMjA6MzcsIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6DQo+Pg0KPj4NCj4+IEFtIDI0LjExLjIyIHVtIDEzOjA1IHNjaHJpZWIgY3VpZ2Fvc2hlbmc6
DQo+Pj4gU29tZSB0aXBzOg0KPj4+IMKgwqDCoCBCZWZvcmUgd2UgY2FsbCB0aGUgZG1hX2J1Zl9z
dGF0c19zZXR1cCgpLCB3ZSBoYXZlIHRvIGZpbmlzaCANCj4+PiBjcmVhdGluZyB0aGUgZmlsZSwN
Cj4+PiBvdGhlcndpc2UgZG1hX2J1Zl9zdGF0c19zZXR1cCgpIHdpbGwgcmV0dXJuIC1FSU5WQUws
IG1heWJlIHdlIG5lZWQgDQo+Pj4gdG8gdGhpbmsgYWJvdXQNCj4+PiB0aGlzIHdoZW4gbWFraW5n
IGEgbmV3IHBhdGNoLg0KPj4NCj4+IEkgd2FzIGFscmVhZHkgd29uZGVyaW5nIHdoeSB0aGUgb3Jk
ZXIgaXMgdGhpcyB3YXkuDQo+Pg0KPj4gV2h5IGlzIGRtYV9idWZfc3RhdHNfc2V0dXAoKSBuZWVk
aW5nIHRoZSBmaWxlIGluIHRoZSBmaXJzdCBwbGFjZT8NCj4+DQo+PiBUaGFua3MsDQo+PiBDaHJp
c3RpYW4uDQo+Pg0KPj4+DQo+Pj4gSG9wZSB0aGVzZSB0aXBzIGFyZSB1c2VmdWwsIHRoYW5rcyEN
Cj4+Pg0KPj4+IE9uIDIwMjIvMTEvMjQgMTM6NTYsIENoYXJhbiBUZWphIEthbGxhIHdyb3RlOg0K
Pj4+PiBUaGFua3MgVC5KIGFuZCBDaHJpc3RpYW4gZm9yIHRoZSBpbnB1dHMuDQo+Pj4+DQo+Pj4+
IE9uIDExLzE5LzIwMjIgNzowMCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4+PiDC
oMKgwqDCoCBZZXMsIGV4YWN0bHkgdGhhdCdzIHRoZSBpZGVhLg0KPj4+Pj4+DQo+Pj4+Pj4gwqDC
oMKgwqAgVGhlIG9ubHkgYWx0ZXJuYXRpdmVzIEkgY2FuIHNlZSB3b3VsZCBiZSB0byBlaXRoZXIg
bW92ZSANCj4+Pj4+PiBhbGxvY2F0aW5nDQo+Pj4+Pj4gwqDCoMKgwqAgdGhlDQo+Pj4+Pj4gwqDC
oMKgwqAgZmlsZSBhbmQgc28gY29tcGxldGluZyB0aGUgZG1hX2J1ZiBpbml0aWFsaXphdGlvbiBs
YXN0IGFnYWluIA0KPj4+Pj4+IG9yIGp1c3QNCj4+Pj4+PiDCoMKgwqDCoCBpZ25vcmUgZXJyb3Jz
IGZyb20gc3lzZnMuDQo+Pj4+Pj4NCj4+Pj4+PiDCoMKgwqDCoCA+IElmIHdlIHN0aWxsIHdhbnQg
dG8gYXZvaWQgY2FsbGluZyANCj4+Pj4+PiBkbWFidWYtPm9wcy0+cmVsZWFzZShkbWFidWYpIGlu
DQo+Pj4+Pj4gwqDCoMKgwqAgPiBkbWFfYnVmX3JlbGVhc2UgbGlrZSB0aGUgY29tbWVudCBzYXlz
IEkgZ3Vlc3Mgd2UgY291bGQgdXNlDQo+Pj4+Pj4gwqDCoMKgwqAgc3lzZnNfZW50cnkNCj4+Pj4+
PiDCoMKgwqDCoCA+IGFuZCBFUlJfUFRSIHRvIGZsYWcgdGhhdCwgb3RoZXJ3aXNlIGl0IGxvb2tz
IGxpa2Ugd2UnZCANCj4+Pj4+PiBuZWVkIGEgYml0DQo+Pj4+Pj4gwqDCoMKgwqAgPiBzb21ld2hl
cmUuDQo+Pj4+Pj4NCj4+Pj4+PiDCoMKgwqDCoCBObywgdGhpcyBzaG91bGQgYmUgZHJvcHBlZCBh
cyBmYXIgYXMgSSBjYW4gc2VlLiBUaGUgc3lzZnMgDQo+Pj4+Pj4gY2xlYW51cA0KPj4+Pj4+IMKg
wqDCoMKgIGNvZGUNCj4+Pj4+PiDCoMKgwqDCoCBsb29rcyBsaWtlIGl0IGNhbiBoYW5kbGUgbm90
IGluaXRpYWxpemVkIGtvYmogcG9pbnRlcnMuDQo+Pj4+Pj4NCj4+Pj4+Pg0KPj4+Pj4+IFllYWgg
dGhlcmUgaXMgYWxzbyB0aGUgbnVsbCBjaGVjayBpbiBkbWFfYnVmX3N0YXRzX3RlYXJkb3duKCkg
dGhhdA0KPj4+Pj4+IHdvdWxkIHByZXZlbnQgaXQgZnJvbSBydW5uaW5nLCBidXQgSSB1bmRlcnN0
b29kIHRoZSBjb21tZW50IHRvIGJlDQo+Pj4+Pj4gcmVmZXJyaW5nIHRvIHRoZSByZWxlYXNlKCkg
ZG1hX2J1Zl9vcHMgY2FsbCBpbnRvIHRoZSBleHBvcnRlciB3aGljaA0KPj4+Pj4+IGNvbWVzIHJp
Z2h0IGFmdGVyIHRoZSB0ZWFyZG93biBjYWxsLiBUaGF0IGxvb2tzIGxpa2UgaXQncyBwcmV2ZW50
aW5nDQo+Pj4+Pj4gdGhlIGZwdXQgdGFzayB3b3JrIGNhbGxpbmcgYmFjayBpbnRvIHRoZSBleHBv
cnRlciBhZnRlciB0aGUgZXhwb3J0ZXINCj4+Pj4+PiBhbHJlYWR5IGdvdCBhbiBlcnJvciBmcm9t
IGRtYV9idWZfZXhwb3J0KCkuIE90aGVyd2lzZSB0aGUgZXhwb3J0ZXINCj4+Pj4+PiBzZWVzIGEg
cmVsZWFzZSgpIGZvciBhIGJ1ZmZlciB0aGF0IGl0IGRvZXNuJ3Qga25vdyBhYm91dCAvIHRoaW5r
cw0KPj4+Pj4+IHNob3VsZG4ndCBleGlzdC4gU28gSSBjb3VsZCBpbWFnaW5lIGFuIGV4cG9ydGVy
IHRyeWluZyB0byBkb3VibGUgDQo+Pj4+Pj4gZnJlZToNCj4+Pj4+PiBvbmNlIGZvciB0aGUgZmFp
bGVkIGRtYV9idWZfZXhwb3J0KCkgY2FsbCwgYW5kIGFnYWluIHdoZW4gdGhlDQo+Pj4+Pj4gcmVs
ZWFzZSgpIG9wIGlzIGNhbGxlZCBsYXRlci4NCj4+Pj4+DQo+Pj4+PiBPaCwgdmVyeSBnb29kIHBv
aW50IGFzIHdlbGwuIFllYWgsIHRoZW4gY3JlYXRpbmcgdGhlIGZpbGUgc2hvdWxkDQo+Pj4+PiBw
cm9iYWJseSBjb21lIGxhc3QuDQo+Pj4+Pg0KPj4+PiBAR2Fvc2hlbmc6IENvdWxkIHlvdSBwbGVh
c2UgbWFrZSB0aGVzZSBjaGFuZ2VzIG9yIHlvdSBsZXQgbWUgdG8gZG8/DQo+Pj4+DQo+Pj4+PiBS
ZWdhcmRzLA0KPj4+Pj4gQ2hyaXN0aWFuLg0KPj4+PiAuDQo+Pg0KPj4gLg0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
