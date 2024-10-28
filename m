Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FC79B2CF5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Oct 2024 11:34:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 097B14252D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Oct 2024 10:34:22 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by lists.linaro.org (Postfix) with ESMTPS id 0E29040F95
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Oct 2024 10:34:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Q8gZowQK;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.167.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539ee1acb86so4102121e87.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Oct 2024 03:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730111654; x=1730716454; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g7nrYUHUQAGlqcSF1DH4MZfbh2UDaXnpWdDb0g1xC7A=;
        b=Q8gZowQK4ZqndN9TX5tf+b1n+WUjjy7mCY41l43xxcmWuVM4HR5m2p07kHdLuBeRGj
         PpCrVlA2LCvdYkR/EyC6BjdtjR6i/5LjfGpoS9aWJ64xyLKVwin+iXgW6mMxKz0RQNpI
         7odXyDvVvkD0RnZxueGKHCRif/0amIPEOuTcmkBO4o2ZUHy53LVjUaObWcuE7TynmEJx
         FtUwC5VQIW8f1Aqy6ioYCnZ7pAbiPOhzw++++ohJTP31tUpJVZ/vH3FgwLFWmx/4wWmw
         yEU1D/hVPDtifWRXh4WJLVPtHZbvcymuE4VH9JJarRJWOwCA6V1KYp4/NYoeOoKwwZpX
         qWDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730111654; x=1730716454;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g7nrYUHUQAGlqcSF1DH4MZfbh2UDaXnpWdDb0g1xC7A=;
        b=I384iaRNvFdW8Xg9C9s9uL4BWVk1p4obthERZTi8xpTUpZLlRndXvLzjFCko/vcaDt
         plb3d/ACtUb6KXP9BqlA3umbLKFpnbTmZJ7eHdfFfksrpPtY1rLabQWxsY7RAWBfin0S
         cskETZa406DWUVureIapbWjMp5YcAzzhdOPOL2P7t9gfdl8a/F+FOhd2xznmMmo3bX6A
         gsdsIusj4RjNky/8Zbs+ACjj3PfDPMnBPyqXyUNJeOsCt1h3+BRbXgI5yMyLs5n/pIek
         PDEQRAlncQeWH5lLt2ezzdk+68ZLQ28bFR97joKZOEpiaqrbS6AWiLPiisjQXObTimNR
         YQpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWVyMXnyducHg3jghA+JaAQsILSOg4BGzsDtN37tS3Hbuo90wIbXjbs+U2hLZl/a+SEFC51YXtxLYTW7+3@lists.linaro.org
X-Gm-Message-State: AOJu0YzEtzrz9wcIPDUENACRSoB4EOrCDkDDjNefoRLEkv9c13KgIQhL
	JEFbCkqEBJkL7uAkV0ywvMAgws1fSMJZa1LIGwv4OcM1kRa04dau
X-Google-Smtp-Source: AGHT+IHoBe6oO8PYZGl3+qBTM5n53ghlUJDEj0r9DYaH/xfvybkBeP2XPFw42uN0pzrRgBB+YLIjIQ==
X-Received: by 2002:a05:6512:23a9:b0:536:55cf:3148 with SMTP id 2adb3069b0e04-53b348deb93mr2968873e87.31.1730111653332;
        Mon, 28 Oct 2024 03:34:13 -0700 (PDT)
Received: from [10.254.108.83] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b58b7e8sm137070495e9.48.2024.10.28.03.34.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 03:34:12 -0700 (PDT)
Message-ID: <6a8d4197-26ec-4d57-b5a3-98bc3008dfc2@gmail.com>
Date: Mon, 28 Oct 2024 11:34:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, friedrich.vock@gmx.de,
 Richardqi.Liang@amd.com, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20241024124159.4519-1-christian.koenig@amd.com>
 <20241024124159.4519-2-christian.koenig@amd.com>
 <8d7bab43-d561-487d-bdc6-86fc230db655@ursulin.net>
 <ca23d4c5-74ff-4d1d-ace0-72ecd51aa527@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <ca23d4c5-74ff-4d1d-ace0-72ecd51aa527@ursulin.net>
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.167.43:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[ursulin.net,gmx.de,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.43:from];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0E29040F95
X-Spamd-Bar: -----
Message-ID-Hash: ZHDSVOMC4IGYZA7HNBK5P4RMJ6VAR5EB
X-Message-ID-Hash: ZHDSVOMC4IGYZA7HNBK5P4RMJ6VAR5EB
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf/dma-fence_array: use kvzalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZHDSVOMC4IGYZA7HNBK5P4RMJ6VAR5EB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjUuMTAuMjQgdW0gMTE6MDUgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoNCj4NCj4gT24gMjUv
MTAvMjAyNCAwOTo1OSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+Pg0KPj4gT24gMjQvMTAvMjAy
NCAxMzo0MSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBSZXBvcnRzIGluZGljYXRlcyB0
aGF0IHNvbWUgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyB0cnkgdG8gbWVyZ2UgbW9yZSANCj4+PiB0
aGFuDQo+Pj4gODBrIG9mIGZlbmNlcyBpbnRvIGEgc2luZ2xlIGRtYV9mZW5jZV9hcnJheSBsZWFk
aW5nIHRvIGEgd2FybmluZyBmcm9tDQo+Pj4ga3phbGxvYygpIHRoYXQgdGhlIHJlcXVlc3RlZCBz
aXplIGJlY29tZXMgdG8gYmlnLg0KPj4+DQo+Pj4gV2hpbGUgdGhhdCBpcyBjbGVhcmx5IGFuIHVz
ZXJzcGFjZSBidWcgd2Ugc2hvdWxkIHByb2JhYmx5IGhhbmRsZSANCj4+PiB0aGF0IGNhc2UNCj4+
PiBncmFjZWZ1bGx5IGluIHRoZSBrZXJuZWwuDQo+Pj4NCj4+PiBTbyB3ZSBjYW4gZWl0aGVyIHJl
amVjdCByZXF1ZXN0cyB0byBtZXJnZSBtb3JlIHRoYW4gYSByZWFzb25hYmxlIA0KPj4+IGFtb3Vu
dCBvZg0KPj4+IGZlbmNlcyAoNjRrIG1heWJlPykgb3Igd2UgY2FuIHN0YXJ0IHRvIHVzZSBrdnph
bGxvYygpIGluc3RlYWQgb2YgDQo+Pj4ga3phbGxvYygpLg0KPj4+IFRoaXMgcGF0Y2ggaGVyZSBk
b2VzIHRoZSBsYXRlci4NCj4+DQo+PiBSZWplY3Rpbmcgd291bGQgcG90ZW50aWFsbHkgYmUgc2Fm
ZXIsIG90aGVyd2lzZSB0aGVyZSBpcyBhIHBhdGggZm9yIA0KPj4gdXNlcnNwYWNlIHRvIHRyaWdn
ZXIgYSB3YXJuIGluIGt2bWFsbG9jX25vZGUgKHNlZSAwODI5YjViY2RkM2IgDQo+PiAoImRybS9p
OTE1OiAyIEdpQiBvZiByZWxvY2F0aW9ucyBvdWdodCB0byBiZSBlbm91Z2ggZm9yIGFueWJvZHkq
IikpIA0KPj4gYW5kIHNwYW0gZG1lc2cgYXQgd2lsbC4NCj4NCj4gQWN0dWFsbHkgdGhhdCBpcyBh
IFdBUk5fT05fKk9OQ0UqIHRoZXJlIHNvIG1heWJlIG5vdCBzbyBjcml0aWNhbCB0byANCj4gaW52
ZW50IGEgbGltaXQuIFVwIGZvciBkaXNjdXNzaW9uIEkgc3VwcG9zZS4NCj4NCj4gUmVnYXJkcywN
Cj4NCj4gVHZydGtvDQo+DQo+Pg0KPj4gUXVlc3Rpb24gaXMgd2hhdCBsaW1pdCB0byBzZXQuLi4N
Cg0KVGhhdCdzIG9uZSBvZiB0aGUgcmVhc29ucyB3aHkgSSBvcHRlZCBmb3Iga3Z6YWxsb2MoKSBp
bml0aWFsbHkuDQoNCkkgbWVhbiB3ZSBjb3VsZCB1c2Ugc29tZSBuaWNlIHJvdW5kIG51bWJlciBs
aWtlIDY1NTM2LCBidXQgdGhhdCB3b3VsZCBiZSANCnRvdGFsbHkgYXJiaXRyYXJ5Lg0KDQpBbnkg
Y29tbWVudHMgb24gdGhlIG90aGVyIHR3byBwYXRjaGVzPyBJIG5lZWQgdG8gZ2V0IHRoZW0gdXBz
dHJlYW0uDQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPj4NCj4+IFJlZ2FyZHMsDQo+Pg0KPj4g
VHZydGtvDQo+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCj4+PiBDQzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPj4+IC0t
LQ0KPj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDYgKysrLS0tDQo+
Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4+
Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgDQo+
Pj4gYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCj4+PiBpbmRleCA4YTA4ZmZk
ZTMxZTcuLjQ2YWM0MmJjZmFjMCAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5
LmMNCj4+PiBAQCAtMTE5LDggKzExOSw4IEBAIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9y
ZWxlYXNlKHN0cnVjdCANCj4+PiBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4+IMKgwqDCoMKgwqAgZm9y
IChpID0gMDsgaSA8IGFycmF5LT5udW1fZmVuY2VzOyArK2kpDQo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgIGRtYV9mZW5jZV9wdXQoYXJyYXktPmZlbmNlc1tpXSk7DQo+Pj4gLcKgwqDCoCBrZnJlZShh
cnJheS0+ZmVuY2VzKTsNCj4+PiAtwqDCoMKgIGRtYV9mZW5jZV9mcmVlKGZlbmNlKTsNCj4+PiAr
wqDCoMKgIGt2ZnJlZShhcnJheS0+ZmVuY2VzKTsNCj4+PiArwqDCoMKgIGt2ZnJlZV9yY3UoZmVu
Y2UsIHJjdSk7DQo+Pj4gwqAgfQ0KPj4+IMKgIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9z
ZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+Pj4gQEAgLTE1Myw3ICsxNTMs
NyBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5IA0KPj4+ICpkbWFfZmVuY2VfYXJyYXlfYWxsb2Mo
aW50IG51bV9mZW5jZXMpDQo+Pj4gwqAgew0KPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5j
ZV9hcnJheSAqYXJyYXk7DQo+Pj4gLcKgwqDCoCByZXR1cm4ga3phbGxvYyhzdHJ1Y3Rfc2l6ZShh
cnJheSwgY2FsbGJhY2tzLCBudW1fZmVuY2VzKSwgDQo+Pj4gR0ZQX0tFUk5FTCk7DQo+Pj4gK8Kg
wqDCoCByZXR1cm4ga3Z6YWxsb2Moc3RydWN0X3NpemUoYXJyYXksIGNhbGxiYWNrcywgbnVtX2Zl
bmNlcyksIA0KPj4+IEdGUF9LRVJORUwpOw0KPj4+IMKgIH0NCj4+PiDCoCBFWFBPUlRfU1lNQk9M
KGRtYV9mZW5jZV9hcnJheV9hbGxvYyk7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
