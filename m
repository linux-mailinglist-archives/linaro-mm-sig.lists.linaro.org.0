Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FB2637884
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 13:06:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D09B93EE73
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 12:06:00 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	by lists.linaro.org (Postfix) with ESMTPS id 758653EE40
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 12:05:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of cuigaosheng1@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=cuigaosheng1@huawei.com;
	dmarc=pass (policy=quarantine) header.from=huawei.com
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.54])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NHxST0x94zJnr8;
	Thu, 24 Nov 2022 20:02:17 +0800 (CST)
Received: from [10.67.110.176] (10.67.110.176) by
 kwepemi500012.china.huawei.com (7.221.188.12) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 24 Nov 2022 20:05:33 +0800
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
Message-ID: <b2d5d904-99f2-7974-a22d-63a6cf864973@huawei.com>
Date: Thu, 24 Nov 2022 20:05:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <e12784da-b3e3-ddec-0e84-f968d60097c4@quicinc.com>
X-Originating-IP: [10.67.110.176]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Rspamd-Queue-Id: 758653EE40
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[huawei.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:45.249.212.187/29];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.297];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:134543, ipnet:45.249.212.0/24, country:CN];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	HAS_XOIP(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CCZ6C7GDVSGRUEXCPMJ3GLIVJJEF4R5E
X-Message-ID-Hash: CCZ6C7GDVSGRUEXCPMJ3GLIVJJEF4R5E
X-MailFrom: cuigaosheng1@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CCZ6C7GDVSGRUEXCPMJ3GLIVJJEF4R5E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

U29tZSB0aXBzOg0KICAgICBCZWZvcmUgd2UgY2FsbCB0aGUgZG1hX2J1Zl9zdGF0c19zZXR1cCgp
LCB3ZSBoYXZlIHRvIGZpbmlzaCBjcmVhdGluZyB0aGUgZmlsZSwNCm90aGVyd2lzZSBkbWFfYnVm
X3N0YXRzX3NldHVwKCkgd2lsbCByZXR1cm4gLUVJTlZBTCwgbWF5YmUgd2UgbmVlZCB0byB0aGlu
ayBhYm91dA0KdGhpcyB3aGVuIG1ha2luZyBhIG5ldyBwYXRjaC4NCg0KSG9wZSB0aGVzZSB0aXBz
IGFyZSB1c2VmdWwsIHRoYW5rcyENCg0KT24gMjAyMi8xMS8yNCAxMzo1NiwgQ2hhcmFuIFRlamEg
S2FsbGEgd3JvdGU6DQo+IFRoYW5rcyBULkogYW5kIENocmlzdGlhbiBmb3IgdGhlIGlucHV0cy4N
Cj4NCj4gT24gMTEvMTkvMjAyMiA3OjAwIFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+
ICDCoMKgwqAgWWVzLCBleGFjdGx5IHRoYXQncyB0aGUgaWRlYS4NCj4+Pg0KPj4+ICDCoMKgwqAg
VGhlIG9ubHkgYWx0ZXJuYXRpdmVzIEkgY2FuIHNlZSB3b3VsZCBiZSB0byBlaXRoZXIgbW92ZSBh
bGxvY2F0aW5nDQo+Pj4gIMKgwqDCoCB0aGUNCj4+PiAgwqDCoMKgIGZpbGUgYW5kIHNvIGNvbXBs
ZXRpbmcgdGhlIGRtYV9idWYgaW5pdGlhbGl6YXRpb24gbGFzdCBhZ2FpbiBvciBqdXN0DQo+Pj4g
IMKgwqDCoCBpZ25vcmUgZXJyb3JzIGZyb20gc3lzZnMuDQo+Pj4NCj4+PiAgwqDCoMKgID4gSWYg
d2Ugc3RpbGwgd2FudCB0byBhdm9pZCBjYWxsaW5nIGRtYWJ1Zi0+b3BzLT5yZWxlYXNlKGRtYWJ1
ZikgaW4NCj4+PiAgwqDCoMKgID4gZG1hX2J1Zl9yZWxlYXNlIGxpa2UgdGhlIGNvbW1lbnQgc2F5
cyBJIGd1ZXNzIHdlIGNvdWxkIHVzZQ0KPj4+ICDCoMKgwqAgc3lzZnNfZW50cnkNCj4+PiAgwqDC
oMKgID4gYW5kIEVSUl9QVFIgdG8gZmxhZyB0aGF0LCBvdGhlcndpc2UgaXQgbG9va3MgbGlrZSB3
ZSdkIG5lZWQgYSBiaXQNCj4+PiAgwqDCoMKgID4gc29tZXdoZXJlLg0KPj4+DQo+Pj4gIMKgwqDC
oCBObywgdGhpcyBzaG91bGQgYmUgZHJvcHBlZCBhcyBmYXIgYXMgSSBjYW4gc2VlLiBUaGUgc3lz
ZnMgY2xlYW51cA0KPj4+ICDCoMKgwqAgY29kZQ0KPj4+ICDCoMKgwqAgbG9va3MgbGlrZSBpdCBj
YW4gaGFuZGxlIG5vdCBpbml0aWFsaXplZCBrb2JqIHBvaW50ZXJzLg0KPj4+DQo+Pj4NCj4+PiBZ
ZWFoIHRoZXJlIGlzIGFsc28gdGhlIG51bGwgY2hlY2sgaW4gZG1hX2J1Zl9zdGF0c190ZWFyZG93
bigpIHRoYXQNCj4+PiB3b3VsZCBwcmV2ZW50IGl0IGZyb20gcnVubmluZywgYnV0IEkgdW5kZXJz
dG9vZCB0aGUgY29tbWVudCB0byBiZQ0KPj4+IHJlZmVycmluZyB0byB0aGUgcmVsZWFzZSgpIGRt
YV9idWZfb3BzIGNhbGwgaW50byB0aGUgZXhwb3J0ZXIgd2hpY2gNCj4+PiBjb21lcyByaWdodCBh
ZnRlciB0aGUgdGVhcmRvd24gY2FsbC4gVGhhdCBsb29rcyBsaWtlIGl0J3MgcHJldmVudGluZw0K
Pj4+IHRoZSBmcHV0IHRhc2sgd29yayBjYWxsaW5nIGJhY2sgaW50byB0aGUgZXhwb3J0ZXIgYWZ0
ZXIgdGhlIGV4cG9ydGVyDQo+Pj4gYWxyZWFkeSBnb3QgYW4gZXJyb3IgZnJvbSBkbWFfYnVmX2V4
cG9ydCgpLiBPdGhlcndpc2UgdGhlIGV4cG9ydGVyDQo+Pj4gc2VlcyBhIHJlbGVhc2UoKSBmb3Ig
YSBidWZmZXIgdGhhdCBpdCBkb2Vzbid0IGtub3cgYWJvdXQgLyB0aGlua3MNCj4+PiBzaG91bGRu
J3QgZXhpc3QuIFNvIEkgY291bGQgaW1hZ2luZSBhbiBleHBvcnRlciB0cnlpbmcgdG8gZG91Ymxl
IGZyZWU6DQo+Pj4gb25jZSBmb3IgdGhlIGZhaWxlZCBkbWFfYnVmX2V4cG9ydCgpIGNhbGwsIGFu
ZCBhZ2FpbiB3aGVuIHRoZQ0KPj4+IHJlbGVhc2UoKSBvcCBpcyBjYWxsZWQgbGF0ZXIuDQo+Pg0K
Pj4gT2gsIHZlcnkgZ29vZCBwb2ludCBhcyB3ZWxsLiBZZWFoLCB0aGVuIGNyZWF0aW5nIHRoZSBm
aWxlIHNob3VsZA0KPj4gcHJvYmFibHkgY29tZSBsYXN0Lg0KPj4NCj4gQEdhb3NoZW5nOiBDb3Vs
ZCB5b3UgcGxlYXNlIG1ha2UgdGhlc2UgY2hhbmdlcyBvciB5b3UgbGV0IG1lIHRvIGRvPw0KPg0K
Pj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4gLg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
