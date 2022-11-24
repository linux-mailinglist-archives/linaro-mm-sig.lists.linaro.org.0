Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 657856377B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 12:31:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A7CD3EEEE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 11:31:27 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	by lists.linaro.org (Postfix) with ESMTPS id 39DCD3EE5F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 11:31:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of cuigaosheng1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=cuigaosheng1@huawei.com;
	dmarc=pass (policy=quarantine) header.from=huawei.com
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.54])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NHwm4167HzRnsC;
	Thu, 24 Nov 2022 19:30:44 +0800 (CST)
Received: from [10.67.110.176] (10.67.110.176) by
 kwepemi500012.china.huawei.com (7.221.188.12) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 24 Nov 2022 19:31:15 +0800
To: Charan Teja Kalla <quic_charante@quicinc.com>,
	=?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "T.J. Mercier"
	<tjmercier@google.com>
References: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
 <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com>
 <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
 <CABdmKX1UMB0L0PmHB59nijReZef6LUQ3XKXitHZo2YnUrJTz9Q@mail.gmail.com>
 <2c9fa595-e788-5474-4f2b-ffbd08a70d13@amd.com>
 <CABdmKX0KJJV0iQwy0aUNXcLc1DGyLjmh6_Y53asHEoh-uyHzAA@mail.gmail.com>
 <83944425-c177-7918-bcde-9cf7296a613f@amd.com>
 <e12784da-b3e3-ddec-0e84-f968d60097c4@quicinc.com>
From: cuigaosheng <cuigaosheng1@huawei.com>
Message-ID: <ef22322b-0134-3d63-f7c5-97f240ae7fd8@huawei.com>
Date: Thu, 24 Nov 2022 19:31:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <e12784da-b3e3-ddec-0e84-f968d60097c4@quicinc.com>
X-Originating-IP: [10.67.110.176]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Rspamd-Queue-Id: 39DCD3EE5F
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[huawei.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[45.249.212.188:from];
	R_SPF_ALLOW(-0.20)[+ip4:45.249.212.187/29];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.305];
	R_DKIM_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:134543, ipnet:45.249.212.0/24, country:CN];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[szxga02-in.huawei.com:rdns,szxga02-in.huawei.com:helo];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: G2KZSAQHMECSB3N3TDYHDBVJLVS3DQIZ
X-Message-ID-Hash: G2KZSAQHMECSB3N3TDYHDBVJLVS3DQIZ
X-MailFrom: cuigaosheng1@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G2KZSAQHMECSB3N3TDYHDBVJLVS3DQIZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VGhhbmtzIFQuSiBhbmQgQ2hyaXN0aWFuLCB0aGFua3MgZXZlcnlvbmUgZm9yIHRha2luZyB0aW1l
IHRvIHJldmlldyB0aGlzIHBhdGNoLg0KDQpDaGFyYW4sIGFjdHVhbGx5IEkgZG9uJ3QgaGF2ZSBh
IGdvb2QgcGF0Y2ggdG8gdG8gZml4IGl0LCBpZiB5b3UgY2FuIHN1Ym1pdA0KYSBuZXcgcGF0Y2gg
dG8gc29sdmUgaXQsIHBsZWFzZSBmZWVsIGZyZWUgdG8gZG8gaXQuDQoNCkJ5IHRoZSB3YXksIEkn
ZCBhcHByZWNpYXRlIGl0IGlmIHlvdSBjb3VsZCBzZW5kIHRvIG1lIHRoZSBuZXcgcGF0Y2ggd2hl
biB5b3Ugc3VibWl0IGl0Lg0KDQpUaGFua3MgYWdhaW4hDQoNCkdhb3NoZW5nLg0KDQpPbiAyMDIy
LzExLzI0IDEzOjU2LCBDaGFyYW4gVGVqYSBLYWxsYSB3cm90ZToNCj4gVGhhbmtzIFQuSiBhbmQg
Q2hyaXN0aWFuIGZvciB0aGUgaW5wdXRzLg0KPg0KPiBPbiAxMS8xOS8yMDIyIDc6MDAgUE0sIENo
cmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gIMKgwqDCoCBZZXMsIGV4YWN0bHkgdGhhdCdzIHRo
ZSBpZGVhLg0KPj4+DQo+Pj4gIMKgwqDCoCBUaGUgb25seSBhbHRlcm5hdGl2ZXMgSSBjYW4gc2Vl
IHdvdWxkIGJlIHRvIGVpdGhlciBtb3ZlIGFsbG9jYXRpbmcNCj4+PiAgwqDCoMKgIHRoZQ0KPj4+
ICDCoMKgwqAgZmlsZSBhbmQgc28gY29tcGxldGluZyB0aGUgZG1hX2J1ZiBpbml0aWFsaXphdGlv
biBsYXN0IGFnYWluIG9yIGp1c3QNCj4+PiAgwqDCoMKgIGlnbm9yZSBlcnJvcnMgZnJvbSBzeXNm
cy4NCj4+Pg0KPj4+ICDCoMKgwqAgPiBJZiB3ZSBzdGlsbCB3YW50IHRvIGF2b2lkIGNhbGxpbmcg
ZG1hYnVmLT5vcHMtPnJlbGVhc2UoZG1hYnVmKSBpbg0KPj4+ICDCoMKgwqAgPiBkbWFfYnVmX3Jl
bGVhc2UgbGlrZSB0aGUgY29tbWVudCBzYXlzIEkgZ3Vlc3Mgd2UgY291bGQgdXNlDQo+Pj4gIMKg
wqDCoCBzeXNmc19lbnRyeQ0KPj4+ICDCoMKgwqAgPiBhbmQgRVJSX1BUUiB0byBmbGFnIHRoYXQs
IG90aGVyd2lzZSBpdCBsb29rcyBsaWtlIHdlJ2QgbmVlZCBhIGJpdA0KPj4+ICDCoMKgwqAgPiBz
b21ld2hlcmUuDQo+Pj4NCj4+PiAgwqDCoMKgIE5vLCB0aGlzIHNob3VsZCBiZSBkcm9wcGVkIGFz
IGZhciBhcyBJIGNhbiBzZWUuIFRoZSBzeXNmcyBjbGVhbnVwDQo+Pj4gIMKgwqDCoCBjb2RlDQo+
Pj4gIMKgwqDCoCBsb29rcyBsaWtlIGl0IGNhbiBoYW5kbGUgbm90IGluaXRpYWxpemVkIGtvYmog
cG9pbnRlcnMuDQo+Pj4NCj4+Pg0KPj4+IFllYWggdGhlcmUgaXMgYWxzbyB0aGUgbnVsbCBjaGVj
ayBpbiBkbWFfYnVmX3N0YXRzX3RlYXJkb3duKCkgdGhhdA0KPj4+IHdvdWxkIHByZXZlbnQgaXQg
ZnJvbSBydW5uaW5nLCBidXQgSSB1bmRlcnN0b29kIHRoZSBjb21tZW50IHRvIGJlDQo+Pj4gcmVm
ZXJyaW5nIHRvIHRoZSByZWxlYXNlKCkgZG1hX2J1Zl9vcHMgY2FsbCBpbnRvIHRoZSBleHBvcnRl
ciB3aGljaA0KPj4+IGNvbWVzIHJpZ2h0IGFmdGVyIHRoZSB0ZWFyZG93biBjYWxsLiBUaGF0IGxv
b2tzIGxpa2UgaXQncyBwcmV2ZW50aW5nDQo+Pj4gdGhlIGZwdXQgdGFzayB3b3JrIGNhbGxpbmcg
YmFjayBpbnRvIHRoZSBleHBvcnRlciBhZnRlciB0aGUgZXhwb3J0ZXINCj4+PiBhbHJlYWR5IGdv
dCBhbiBlcnJvciBmcm9tIGRtYV9idWZfZXhwb3J0KCkuIE90aGVyd2lzZSB0aGUgZXhwb3J0ZXIN
Cj4+PiBzZWVzIGEgcmVsZWFzZSgpIGZvciBhIGJ1ZmZlciB0aGF0IGl0IGRvZXNuJ3Qga25vdyBh
Ym91dCAvIHRoaW5rcw0KPj4+IHNob3VsZG4ndCBleGlzdC4gU28gSSBjb3VsZCBpbWFnaW5lIGFu
IGV4cG9ydGVyIHRyeWluZyB0byBkb3VibGUgZnJlZToNCj4+PiBvbmNlIGZvciB0aGUgZmFpbGVk
IGRtYV9idWZfZXhwb3J0KCkgY2FsbCwgYW5kIGFnYWluIHdoZW4gdGhlDQo+Pj4gcmVsZWFzZSgp
IG9wIGlzIGNhbGxlZCBsYXRlci4NCj4+DQo+PiBPaCwgdmVyeSBnb29kIHBvaW50IGFzIHdlbGwu
IFllYWgsIHRoZW4gY3JlYXRpbmcgdGhlIGZpbGUgc2hvdWxkDQo+PiBwcm9iYWJseSBjb21lIGxh
c3QuDQo+Pg0KPiBAR2Fvc2hlbmc6IENvdWxkIHlvdSBwbGVhc2UgbWFrZSB0aGVzZSBjaGFuZ2Vz
IG9yIHlvdSBsZXQgbWUgdG8gZG8/DQo+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPiAu
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
