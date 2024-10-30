Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A962C9B65AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2024 15:22:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7288444A48
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2024 14:22:46 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by lists.linaro.org (Postfix) with ESMTPS id DD97B40CEB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2024 14:22:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=TPICLbwk;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.167.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539e3f35268so8043567e87.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2024 07:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730298158; x=1730902958; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ewnGVP+QrjApj2Lvmg0PwEBD+Hc0GWAQIlAQdlFJ7d4=;
        b=TPICLbwkqXICqtOpDCBOu28qWMs6mURlkySQKIsCZVEVLPu0wcfopPnVI1BkUfR8oT
         7g6GkCqLw+j2JZ7EbNuEJTCG1+WJ+dNJXcqRmi0aRGInQKh7w+wEXcqordg/P2kXt/fw
         ZmpIWv6/AfcqtqU2VQCXB2XUCddVQIYyDnvzRQzLsTKGEulZMMKtKKqpt8CWYR62zLSj
         lJdJ0GRBF89QIBLQ0NSpNe4SUfSDiT7YVirT+yF3M+KfEVxPA8YJG6RgnItxUhUvMXth
         t64/+PHDYR20AEisY1scQOtd/kzSdGZ/RbtkymB+L7J7f6KQy6V+ApPqAYm4S7CW2jHi
         wMqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730298158; x=1730902958;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ewnGVP+QrjApj2Lvmg0PwEBD+Hc0GWAQIlAQdlFJ7d4=;
        b=f4gyfR6jK2ZOF4eVXQ7mGiE9OMlvR9QczH3aPiSHJ2eWr3pHTlveqgqe/xVEivTiuB
         8fEco3bvdizilT3gqPdRlTp5BsSR7qgoF4vqgXaerIxZuHXUZiI9MkBMCTK2Wx3F8Aaz
         ezhM3J+hK2nuFi9honA7oX6cPS0nc3tIdOsw3b6keX7eDKjTZ9fvCVppvGMC4OqWxu6o
         lBd+WdhbVhYlp9vjGlKhjNJvbpIAVsYVFvTS/S6gcaWjB9rEZZNYrbTyQ+/OpEvU+c+h
         phtPRKMv0dJSKY/O6wI25ILDYXoKUEJv3FhLBcuJH22+IUDsrV4YffxN0KksveDfPm9U
         TB7w==
X-Forwarded-Encrypted: i=1; AJvYcCXzFwIJdwF62OPZ2XhmQqQmFb9t7EplGuq+XYqFwCpEeH3BANdpIZOQC+Mnli0MKeit8SiaXDn63mzI2J8n@lists.linaro.org
X-Gm-Message-State: AOJu0YwDHpso3X+demLei42AIOGwLu16JgcND9qu1LNYP0Lz4o/0gY5L
	LmQmDx2C5U9bQDqOgLj/EwkMltEDSemhK9pda8yDzfFWriI9O3Md
X-Google-Smtp-Source: AGHT+IFzvNeBt85cLaltZb4hURbuKvOGXkGcfFUIS8hKlUSO2SBZD/ukPEh6Gqf4BB5Op6ItWhHZGQ==
X-Received: by 2002:a05:6512:4024:b0:539:8d9b:b624 with SMTP id 2adb3069b0e04-53b34a31f8fmr8307703e87.55.1730298158222;
        Wed, 30 Oct 2024 07:22:38 -0700 (PDT)
Received: from [10.254.108.83] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bb793e51sm29710995e9.1.2024.10.30.07.22.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 07:22:37 -0700 (PDT)
Message-ID: <b4051b8f-a82a-4d77-80c4-09a7a4124845@gmail.com>
Date: Wed, 30 Oct 2024 15:22:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Friedrich Vock <friedrich.vock@gmx.de>,
 Matthew Brost <matthew.brost@intel.com>
References: <20241024124159.4519-1-christian.koenig@amd.com>
 <20241024124159.4519-2-christian.koenig@amd.com>
 <ZxquPRn1QtaVzydE@DUT025-TGLU.fm.intel.com>
 <1ee2453d-f661-4ea6-8b54-3f911b179420@gmx.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <1ee2453d-f661-4ea6-8b54-3f911b179420@gmx.de>
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmx.de,intel.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.167.46:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.46:from];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DD97B40CEB
X-Spamd-Bar: ----
Message-ID-Hash: 5VSEVFJ64TBNV4QLRQT6CWLWU355UK5G
X-Message-ID-Hash: 5VSEVFJ64TBNV4QLRQT6CWLWU355UK5G
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Richardqi.Liang@amd.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf/dma-fence_array: use kvzalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5VSEVFJ64TBNV4QLRQT6CWLWU355UK5G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjUuMTAuMjQgdW0gMDg6NTIgc2NocmllYiBGcmllZHJpY2ggVm9jazoNCj4gT24gMjQuMTAu
MjQgMjI6MjksIE1hdHRoZXcgQnJvc3Qgd3JvdGU6DQo+PiBPbiBUaHUsIE9jdCAyNCwgMjAyNCBh
dCAwMjo0MTo1N1BNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IFJlcG9ydHMg
aW5kaWNhdGVzIHRoYXQgc29tZSB1c2Vyc3BhY2UgYXBwbGljYXRpb25zIHRyeSB0byBtZXJnZSBt
b3JlIA0KPj4+IHRoYW4NCj4+PiA4MGsgb2YgZmVuY2VzIGludG8gYSBzaW5nbGUgZG1hX2ZlbmNl
X2FycmF5IGxlYWRpbmcgdG8gYSB3YXJuaW5nIGZyb20NCj4+DQo+PiBSZWFsbHksIHlpa2VzLg0K
Pg0KPiBOb3QgcmVhbGx5IElNRS4gVW5sZXNzIENocmlzdGlhbiBtZWFucyBzb21lIHJlcG9ydHMg
SSBkb24ndCBoYXZlIGFjY2Vzcw0KPiB0bywgdGhlIGNhc2VzIHdoZXJlIHVzZXJzcGFjZSBhcHBs
aWNhdGlvbnMgdHJpZWQgdG8gZG8gdGhhdCB3ZXJlIHJlYWxseQ0KPiBqdXN0IGNhc2VzIHdoZXJl
IHRoZSBmZW5jZSBjb3VudCBleHBsb2RlZCBleHBvbmVudGlhbGx5IGJlY2F1c2UNCj4gZG1hX2Zl
bmNlX3Vud3JhcF9tZXJnZSBmYWlsZWQgdG8gYWN0dWFsbHkgbWVyZ2UgaWRlbnRpY2FsIGZlbmNl
cyAoc2VlDQo+IHBhdGNoIDIpLiBBdCBubyBwb2ludCBoYXZlIEkgYWN0dWFsbHkgc2VlbiBhcHBz
IHRyeWluZyB0byBtZXJnZSA4MGsrDQo+IHVuaXF1ZSBmZW5jZXMuDQoNCldoaWxlIHdvcmtpbmcg
b24gaXQgSSd2ZSBtb2RpZmllZCBvdXIgc3RyZXNzIHRlc3QgdG9vbCB0byBzZW5kIHRoZSBzYW1l
IA0KMUdpQiBTRE1BIGNvcHkgdG8gMTAwayBkaWZmZXJlbnQgY29udGV4dHMuDQoNClR1cm5lZCBv
dXQgaXQncyBwZXJmZWN0bHkgcG9zc2libGUgdG8gY3JlYXRlIHNvIG1hbnkgZmVuY2VzLCB0aGVy
ZSBpcyANCm5vdGhpbmcgYmxvY2tpbmcgdXNlcnNwYWNlIHRvIGRvIGl0Lg0KDQpXaGlsZSB0aGlz
IGlzbid0IGEgcmVhbGlzdGljIHVzZSBjYXNlIHRoZSBrZXJuZWwgc2hvdWxkIGF0IGxlYXN0IG5v
dCANCmNyYXNoIG9yIHNwaWxsIGEgd2FybmluZywgYnV0IGVpdGhlciBoYW5kbGUgb3IgcmVqZWN0
IGl0IGdyYWNlZnVsbHkuDQoNCkZyaWVkcmljaCBjYW4geW91IGNvbmZpcm0gdGhhdCBwYXRjaCB0
d28gaW4gdGhpcyBzZXJpZXMgZml4ZXMgdGhlIA0KcHJvYmxlbT8gSSB3b3VsZCByZWFsbHkgbGlr
ZSB0byBnZXQgaXQgaW50byBkcm0tbWlzYy1maXhlcyBiZWZvcmUgNi4xMiANCmNvbWVzIG91dC4N
Cg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFJlZ2FyZHMsDQo+IEZyaWVkcmljaA0KPg0K
Pj4NCj4+PiBremFsbG9jKCkgdGhhdCB0aGUgcmVxdWVzdGVkIHNpemUgYmVjb21lcyB0byBiaWcu
DQo+Pj4NCj4+PiBXaGlsZSB0aGF0IGlzIGNsZWFybHkgYW4gdXNlcnNwYWNlIGJ1ZyB3ZSBzaG91
bGQgcHJvYmFibHkgaGFuZGxlIA0KPj4+IHRoYXQgY2FzZQ0KPj4+IGdyYWNlZnVsbHkgaW4gdGhl
IGtlcm5lbC4NCj4+Pg0KPj4+IFNvIHdlIGNhbiBlaXRoZXIgcmVqZWN0IHJlcXVlc3RzIHRvIG1l
cmdlIG1vcmUgdGhhbiBhIHJlYXNvbmFibGUgDQo+Pj4gYW1vdW50IG9mDQo+Pj4gZmVuY2VzICg2
NGsgbWF5YmU/KSBvciB3ZSBjYW4gc3RhcnQgdG8gdXNlIGt2emFsbG9jKCkgaW5zdGVhZCBvZiAN
Cj4+PiBremFsbG9jKCkuDQo+Pj4gVGhpcyBwYXRjaCBoZXJlIGRvZXMgdGhlIGxhdGVyLg0KPj4+
DQo+Pg0KPj4gVGhpcyBwYXRjaCBzZWVtcyByZWFzb25hYmxlIHRvIG1lIGlmIHRoZSBhYm92ZSB1
c2UgaXMgaW4gZmFjdCB2YWxpZC4NCj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+IENDOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnDQo+Pg0KPj4gRml4ZXMgdGFnPw0KPj4NCj4+IFBhdGNoIGl0c2VsZiBMR1RNOg0KPj4g
UmV2aWV3ZWQtYnk6IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPg0KPj4N
Cj4+PiAtLS0NCj4+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgfCA2ICsr
Ky0tLQ0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJh
eS5jIA0KPj4+IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQo+Pj4gaW5kZXgg
OGEwOGZmZGUzMWU3Li40NmFjNDJiY2ZhYzAgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS1hcnJheS5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS1hcnJheS5jDQo+Pj4gQEAgLTExOSw4ICsxMTksOCBAQCBzdGF0aWMgdm9pZCBkbWFfZmVuY2Vf
YXJyYXlfcmVsZWFzZShzdHJ1Y3QgDQo+Pj4gZG1hX2ZlbmNlICpmZW5jZSkNCj4+PiDCoMKgwqDC
oMKgIGZvciAoaSA9IDA7IGkgPCBhcnJheS0+bnVtX2ZlbmNlczsgKytpKQ0KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KGFycmF5LT5mZW5jZXNbaV0pOw0KPj4+DQo+Pj4gLcKg
wqDCoCBrZnJlZShhcnJheS0+ZmVuY2VzKTsNCj4+PiAtwqDCoMKgIGRtYV9mZW5jZV9mcmVlKGZl
bmNlKTsNCj4+PiArwqDCoMKgIGt2ZnJlZShhcnJheS0+ZmVuY2VzKTsNCj4+PiArwqDCoMKgIGt2
ZnJlZV9yY3UoZmVuY2UsIHJjdSk7DQo+Pj4gwqAgfQ0KPj4+DQo+Pj4gwqAgc3RhdGljIHZvaWQg
ZG1hX2ZlbmNlX2FycmF5X3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4+
PiBAQCAtMTUzLDcgKzE1Myw3IEBAIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgDQo+Pj4gKmRtYV9m
ZW5jZV9hcnJheV9hbGxvYyhpbnQgbnVtX2ZlbmNlcykNCj4+PiDCoCB7DQo+Pj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheTsNCj4+Pg0KPj4+IC3CoMKgwqAgcmV0dXJu
IGt6YWxsb2Moc3RydWN0X3NpemUoYXJyYXksIGNhbGxiYWNrcywgbnVtX2ZlbmNlcyksIA0KPj4+
IEdGUF9LRVJORUwpOw0KPj4+ICvCoMKgwqAgcmV0dXJuIGt2emFsbG9jKHN0cnVjdF9zaXplKGFy
cmF5LCBjYWxsYmFja3MsIG51bV9mZW5jZXMpLCANCj4+PiBHRlBfS0VSTkVMKTsNCj4+PiDCoCB9
DQo+Pj4gwqAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfYXJyYXlfYWxsb2MpOw0KPj4+DQo+Pj4g
LS0gDQo+Pj4gMi4zNC4xDQo+Pj4NCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
