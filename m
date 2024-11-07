Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB939C0624
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Nov 2024 13:49:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD10744901
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Nov 2024 12:49:06 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by lists.linaro.org (Postfix) with ESMTPS id E68C541257
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Nov 2024 12:48:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Wi2UdNSq;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.167.53 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539f72c913aso1475707e87.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Nov 2024 04:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730983739; x=1731588539; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GzpE9qb2EMxQWUJItUkvqlNcakV4YKBc1CCxaGXFbWA=;
        b=Wi2UdNSqoYYtOnrVC2pt+RPq8iuQa2VFkIgDXwPtzyhQ2ecn0CjxcI+oZHNlGif2+r
         veib690f/ulSoLS7VKYBe1vLxhO2sDBBEEzkR+/N/g6jbUrfwoT9QCX9BSOQC9gIySnb
         olAIIs/0UR9FivTUnp5qnYLuqkmJ5vzzHzgO1iPHtceEmTeOxnv/1ueHTGP5fSI9f5ll
         BeIpzCHO/Eh82ZMzaA+JYAv81XiLWAwWU7ZFRfzhZqPHLPsqlPy9ARIkOMNS/Aibx/pG
         wnEoyQlDRrjZCJKu78gkKdwbpwdahg+zNeO4eGefUCVLuqYL4C+0pkCby8rh0QAy1v0O
         hzVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730983739; x=1731588539;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GzpE9qb2EMxQWUJItUkvqlNcakV4YKBc1CCxaGXFbWA=;
        b=NA/tMEojm1FeqIJ2qwib8UukyH9GbTHPCv8r5lzYvzfu7MZZ38U039MN+ut6eEDreP
         FrYcGHP4yHB1GMn7QqFsQdr6r7px7H33un0BPWahR+IXlSaPEMtIsCEXSX3hS4I0v7wu
         rIK0/4V/3WLAcNffX+AxYdn8ByA1Gn7eW/b9aJuaEbNnyfo8MbRzEOcsjc+aj8tvswim
         Xxgxl8vSondpqKw0xIv+xHMz4IxRHW1p5s4uyH4E2Pf1uVJegJgwJt6MhzSMhJcpScgI
         O6DXXQPjl8h2XEFfH9FxufSkMlS7XqWXKWR7lOekYny99sFCZ+mzWTnp6DBIyA8mM7UG
         IhCw==
X-Forwarded-Encrypted: i=1; AJvYcCWRZJmrNiRIspEirwATYCS34AdLjVE7uakYqKyicdWSjV0h6H8ka5Q5R55xgQaezeV7V9el1XORILQMFbng@lists.linaro.org
X-Gm-Message-State: AOJu0Ywyg+uKKRiEkAg18EoS7ZbQZTzWgFgv64qKV5mtNEEhSnSpVNTl
	esq8kef8Y7BWI3yRoeLNZ7rI4+Ph+qotcNj7ZTaemYhSSfk46xyF
X-Google-Smtp-Source: AGHT+IE6M7yjAgTJlsZNN5RYDp+9fpOvsDh+TelDAquVRAwgpPO+/VegtcIcWvQFwBtCy2cpEMlqeg==
X-Received: by 2002:a05:6512:159a:b0:52e:7542:f469 with SMTP id 2adb3069b0e04-53b34721a76mr23342734e87.0.1730983738231;
        Thu, 07 Nov 2024 04:48:58 -0800 (PST)
Received: from [10.254.108.83] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432b3de8710sm8481375e9.17.2024.11.07.04.48.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2024 04:48:56 -0800 (PST)
Message-ID: <ad7dd75e-ae60-436f-a0e7-0207d21934ae@gmail.com>
Date: Thu, 7 Nov 2024 13:48:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, friedrich.vock@gmx.de,
 Richardqi.Liang@amd.com, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20241024124159.4519-1-christian.koenig@amd.com>
 <20241024124159.4519-2-christian.koenig@amd.com>
 <8d7bab43-d561-487d-bdc6-86fc230db655@ursulin.net>
 <ca23d4c5-74ff-4d1d-ace0-72ecd51aa527@ursulin.net>
 <6a8d4197-26ec-4d57-b5a3-98bc3008dfc2@gmail.com>
 <bf40ee5e-c3f5-486c-9d23-57e48a4758f1@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <bf40ee5e-c3f5-486c-9d23-57e48a4758f1@ursulin.net>
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.167.53:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[amd.com:email];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[ursulin.net,gmx.de,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.53:from];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E68C541257
X-Spamd-Bar: ----
Message-ID-Hash: 2OSPJLG7CAOZ2J7M3FWVUBEUQORB5D2G
X-Message-ID-Hash: 2OSPJLG7CAOZ2J7M3FWVUBEUQORB5D2G
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf/dma-fence_array: use kvzalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2OSPJLG7CAOZ2J7M3FWVUBEUQORB5D2G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDcuMTEuMjQgdW0gMTI6Mjkgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoNCj4NCj4gT24gMjgv
MTAvMjAyNCAxMDozNCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEFtIDI1LjEwLjI0IHVt
IDExOjA1IHNjaHJpZWIgVHZydGtvIFVyc3VsaW46DQo+Pj4NCj4+PiBPbiAyNS8xMC8yMDI0IDA5
OjU5LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+Pj4NCj4+Pj4gT24gMjQvMTAvMjAyNCAxMzo0
MSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4+IFJlcG9ydHMgaW5kaWNhdGVzIHRoYXQg
c29tZSB1c2Vyc3BhY2UgYXBwbGljYXRpb25zIHRyeSB0byBtZXJnZSANCj4+Pj4+IG1vcmUgdGhh
bg0KPj4+Pj4gODBrIG9mIGZlbmNlcyBpbnRvIGEgc2luZ2xlIGRtYV9mZW5jZV9hcnJheSBsZWFk
aW5nIHRvIGEgd2FybmluZyBmcm9tDQo+Pj4+PiBremFsbG9jKCkgdGhhdCB0aGUgcmVxdWVzdGVk
IHNpemUgYmVjb21lcyB0byBiaWcuDQo+Pj4+Pg0KPj4+Pj4gV2hpbGUgdGhhdCBpcyBjbGVhcmx5
IGFuIHVzZXJzcGFjZSBidWcgd2Ugc2hvdWxkIHByb2JhYmx5IGhhbmRsZSANCj4+Pj4+IHRoYXQg
Y2FzZQ0KPj4+Pj4gZ3JhY2VmdWxseSBpbiB0aGUga2VybmVsLg0KPj4+Pj4NCj4+Pj4+IFNvIHdl
IGNhbiBlaXRoZXIgcmVqZWN0IHJlcXVlc3RzIHRvIG1lcmdlIG1vcmUgdGhhbiBhIHJlYXNvbmFi
bGUgDQo+Pj4+PiBhbW91bnQgb2YNCj4+Pj4+IGZlbmNlcyAoNjRrIG1heWJlPykgb3Igd2UgY2Fu
IHN0YXJ0IHRvIHVzZSBrdnphbGxvYygpIGluc3RlYWQgb2YgDQo+Pj4+PiBremFsbG9jKCkuDQo+
Pj4+PiBUaGlzIHBhdGNoIGhlcmUgZG9lcyB0aGUgbGF0ZXIuDQo+Pj4+DQo+Pj4+IFJlamVjdGlu
ZyB3b3VsZCBwb3RlbnRpYWxseSBiZSBzYWZlciwgb3RoZXJ3aXNlIHRoZXJlIGlzIGEgcGF0aCBm
b3IgDQo+Pj4+IHVzZXJzcGFjZSB0byB0cmlnZ2VyIGEgd2FybiBpbiBrdm1hbGxvY19ub2RlIChz
ZWUgMDgyOWI1YmNkZDNiIA0KPj4+PiAoImRybS9pOTE1OiAyIEdpQiBvZiByZWxvY2F0aW9ucyBv
dWdodCB0byBiZSBlbm91Z2ggZm9yIGFueWJvZHkqIikpIA0KPj4+PiBhbmQgc3BhbSBkbWVzZyBh
dCB3aWxsLg0KPj4+DQo+Pj4gQWN0dWFsbHkgdGhhdCBpcyBhIFdBUk5fT05fKk9OQ0UqIHRoZXJl
IHNvIG1heWJlIG5vdCBzbyBjcml0aWNhbCB0byANCj4+PiBpbnZlbnQgYSBsaW1pdC4gVXAgZm9y
IGRpc2N1c3Npb24gSSBzdXBwb3NlLg0KPj4+DQo+Pj4gUmVnYXJkcywNCj4+Pg0KPj4+IFR2cnRr
bw0KPj4+DQo+Pj4+DQo+Pj4+IFF1ZXN0aW9uIGlzIHdoYXQgbGltaXQgdG8gc2V0Li4uDQo+Pg0K
Pj4gVGhhdCdzIG9uZSBvZiB0aGUgcmVhc29ucyB3aHkgSSBvcHRlZCBmb3Iga3Z6YWxsb2MoKSBp
bml0aWFsbHkuDQo+DQo+IEkgZGlkbid0IGdldCB0aGF0LCB3aGF0IHdhcyB0aGUgcmVhc29uPyBU
byBub3QgaGF2ZSB0byBpbnZlbnQgYW4gDQo+IGFyYml0cmFyeSBsaW1pdD8NCg0KV2VsbCB0aGF0
IEkgY291bGRuJ3QgY29tZSB1cCB3aXRoIGFueSBhcmJpdHJhcnkgbGltaXQgdGhhdCBJIGhhZCAN
CmNvbmZpZGVuY2Ugd291bGQgd29yayBhbmQgbm90IGJsb2NrIHJlYWwgd29ybGQgdXNlIGNhc2Vz
Lg0KDQpTd2l0Y2hpbmcgdG8ga3Z6YWxsb2MoKSBqdXN0IHNlZW1lZCB0aGUgbW9yZSBkZWZlbnNp
dmUgYXBwcm9hY2guDQoNCj4NCj4+IEkgbWVhbiB3ZSBjb3VsZCB1c2Ugc29tZSBuaWNlIHJvdW5k
IG51bWJlciBsaWtlIDY1NTM2LCBidXQgdGhhdCB3b3VsZCANCj4+IGJlIHRvdGFsbHkgYXJiaXRy
YXJ5Lg0KPg0KPiBZZWFoLi4gU2V0IGFuIGFyYml0cmFyeSBsaW1pdCBzbyBhIHdhcm5pbmcgaW4g
X19rdm1hbGxvY19ub2RlX25vcHJvZigpIA0KPiBpcyBhdm9pZGVkPyBPciBwYXNzIF9fR0ZQX05P
V0FSTj8NCg0KV2VsbCBhcmUgd2Ugc3VyZSB0aGF0IHdpbGwgbmV2ZXIgaGl0IDY1NTM2IGluIGEg
cmVhbCB3b3JsZCB1c2UgY2FzZT8gDQpJdCdzIHN0aWxsIHByZXR0eSBsb3cuDQoNCj4NCj4+IEFu
eSBjb21tZW50cyBvbiB0aGUgb3RoZXIgdHdvIHBhdGNoZXM/IEkgbmVlZCB0byBnZXQgdGhlbSB1
cHN0cmVhbS4NCj4NCj4gV2lsbCBsb29rIGludG8gdGhlbSBzaG9ydGx5Lg0KDQpUaGFua3MsDQpD
aHJpc3RpYW4uDQoNCj4NCj4gUmVnYXJkcywNCj4NCj4gVHZydGtvDQo+DQo+DQo+PiBUaGFua3Ms
DQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+Pg0KPj4+PiBSZWdhcmRzLA0KPj4+Pg0KPj4+PiBUdnJ0
a28NCj4+Pj4NCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCj4+Pj4+IENDOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+Pj4+
PiAtLS0NCj4+Pj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDYgKysr
LS0tDQo+Pj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQ0KPj4+Pj4NCj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LWFycmF5LmMgDQo+Pj4+PiBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KPj4+
Pj4gaW5kZXggOGEwOGZmZGUzMWU3Li40NmFjNDJiY2ZhYzAgMTAwNjQ0DQo+Pj4+PiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KPj4+Pj4gQEAgLTExOSw4ICsxMTksOCBAQCBzdGF0aWMg
dm9pZCBkbWFfZmVuY2VfYXJyYXlfcmVsZWFzZShzdHJ1Y3QgDQo+Pj4+PiBkbWFfZmVuY2UgKmZl
bmNlKQ0KPj4+Pj4gwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgYXJyYXktPm51bV9mZW5jZXM7
ICsraSkNCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KGFycmF5LT5mZW5j
ZXNbaV0pOw0KPj4+Pj4gLcKgwqDCoCBrZnJlZShhcnJheS0+ZmVuY2VzKTsNCj4+Pj4+IC3CoMKg
wqAgZG1hX2ZlbmNlX2ZyZWUoZmVuY2UpOw0KPj4+Pj4gK8KgwqDCoCBrdmZyZWUoYXJyYXktPmZl
bmNlcyk7DQo+Pj4+PiArwqDCoMKgIGt2ZnJlZV9yY3UoZmVuY2UsIHJjdSk7DQo+Pj4+PiDCoCB9
DQo+Pj4+PiDCoCBzdGF0aWMgdm9pZCBkbWFfZmVuY2VfYXJyYXlfc2V0X2RlYWRsaW5lKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlLA0KPj4+Pj4gQEAgLTE1Myw3ICsxNTMsNyBAQCBzdHJ1Y3QgZG1h
X2ZlbmNlX2FycmF5IA0KPj4+Pj4gKmRtYV9mZW5jZV9hcnJheV9hbGxvYyhpbnQgbnVtX2ZlbmNl
cykNCj4+Pj4+IMKgIHsNCj4+Pj4+IMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZV9hcnJheSAq
YXJyYXk7DQo+Pj4+PiAtwqDCoMKgIHJldHVybiBremFsbG9jKHN0cnVjdF9zaXplKGFycmF5LCBj
YWxsYmFja3MsIG51bV9mZW5jZXMpLCANCj4+Pj4+IEdGUF9LRVJORUwpOw0KPj4+Pj4gK8KgwqDC
oCByZXR1cm4ga3Z6YWxsb2Moc3RydWN0X3NpemUoYXJyYXksIGNhbGxiYWNrcywgbnVtX2ZlbmNl
cyksIA0KPj4+Pj4gR0ZQX0tFUk5FTCk7DQo+Pj4+PiDCoCB9DQo+Pj4+PiDCoCBFWFBPUlRfU1lN
Qk9MKGRtYV9mZW5jZV9hcnJheV9hbGxvYyk7DQo+Pg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
