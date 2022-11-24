Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D346F637938
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 13:49:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA8103EEEE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 12:49:35 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
	by lists.linaro.org (Postfix) with ESMTPS id F28963EBE4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 12:49:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of cuigaosheng1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=cuigaosheng1@huawei.com;
	dmarc=pass (policy=quarantine) header.from=huawei.com
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NHyQG11FkzqSPQ;
	Thu, 24 Nov 2022 20:45:26 +0800 (CST)
Received: from [10.67.110.176] (10.67.110.176) by
 kwepemi500012.china.huawei.com (7.221.188.12) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 24 Nov 2022 20:49:22 +0800
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Charan Teja
 Kalla <quic_charante@quicinc.com>, "T.J. Mercier" <tjmercier@google.com>
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
From: cuigaosheng <cuigaosheng1@huawei.com>
Message-ID: <a87e407c-f858-28f1-c5ea-ca69b39db53a@huawei.com>
Date: Thu, 24 Nov 2022 20:49:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <689ad89b-0e34-3743-24c9-3f92856720f8@amd.com>
X-Originating-IP: [10.67.110.176]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Rspamd-Queue-Id: F28963EBE4
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[huawei.com,quarantine];
	RCVD_IN_DNSWL_MED(-0.20)[45.249.212.187:from];
	R_SPF_ALLOW(-0.20)[+ip4:45.249.212.187/29];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.133];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:134543, ipnet:45.249.212.0/24, country:CN];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	HAS_XOIP(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[szxga01-in.huawei.com:rdns,szxga01-in.huawei.com:helo];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GP7ILRXDH3YRL5VEUDWMQWWEXK74UWXE
X-Message-ID-Hash: GP7ILRXDH3YRL5VEUDWMQWWEXK74UWXE
X-MailFrom: cuigaosheng1@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GP7ILRXDH3YRL5VEUDWMQWWEXK74UWXE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

PiBJIHdhcyBhbHJlYWR5IHdvbmRlcmluZyB3aHkgdGhlIG9yZGVyIGlzIHRoaXMgd2F5Lg0KPg0K
PiBXaHkgaXMgZG1hX2J1Zl9zdGF0c19zZXR1cCgpIG5lZWRpbmcgdGhlIGZpbGUgaW4gdGhlIGZp
cnN0IHBsYWNlPyANCg0KZG1hYnVmLT5maWxlIHdpbGwgYmUgdXNlZCBpbiBkbWFfYnVmX3N0YXRz
X3NldHVwKCksIHRoZSANCmRtYV9idWZfc3RhdHNfc2V0dXAoKSBhcyBmb2xsb3dzOg0KDQo+IDE3
MSBpbnQgZG1hX2J1Zl9zdGF0c19zZXR1cChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KPiAxNzIg
ew0KPiAxNzPCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfYnVmX3N5c2ZzX2VudHJ5ICpzeXNm
c19lbnRyeTsNCj4gMTc0wqDCoMKgwqDCoMKgwqDCoCBpbnQgcmV0Ow0KPiAxNzUNCj4gMTc2wqDC
oMKgwqDCoMKgwqDCoCBpZiAoIWRtYWJ1ZiB8fCAhZG1hYnVmLT5maWxlKQ0KPiAxNzfCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsNCj4gMTc4DQo+IDE3OcKg
wqDCoMKgwqDCoMKgwqAgaWYgKCFkbWFidWYtPmV4cF9uYW1lKSB7DQo+IDE4MMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByX2VycigiZXhwb3J0ZXIgbmFtZSBtdXN0IG5vdCBiZSBl
bXB0eSBpZiBzdGF0cyANCj4gbmVlZGVkXG4iKTsNCj4gMTgxwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+IDE4MsKgwqDCoMKgwqDCoMKgwqAgfQ0KPiAx
ODMNCj4gMTg0wqDCoMKgwqDCoMKgwqDCoCBzeXNmc19lbnRyeSA9IGt6YWxsb2Moc2l6ZW9mKHN0
cnVjdCBkbWFfYnVmX3N5c2ZzX2VudHJ5KSwgDQo+IEdGUF9LRVJORUwpOw0KPiAxODXCoMKgwqDC
oMKgwqDCoMKgIGlmICghc3lzZnNfZW50cnkpDQo+IDE4NsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiAtRU5PTUVNOw0KPiAxODcNCj4gMTg4wqDCoMKgwqDCoMKgwqDCoCBz
eXNmc19lbnRyeS0+a29iai5rc2V0ID0gZG1hX2J1Zl9wZXJfYnVmZmVyX3N0YXRzX2tzZXQ7DQo+
IDE4OcKgwqDCoMKgwqDCoMKgwqAgc3lzZnNfZW50cnktPmRtYWJ1ZiA9IGRtYWJ1ZjsNCj4gMTkw
DQo+IDE5McKgwqDCoMKgwqDCoMKgwqAgZG1hYnVmLT5zeXNmc19lbnRyeSA9IHN5c2ZzX2VudHJ5
Ow0KPiAxOTINCj4gMTkzwqDCoMKgwqDCoMKgwqDCoCAvKiBjcmVhdGUgdGhlIGRpcmVjdG9yeSBm
b3IgYnVmZmVyIHN0YXRzICovDQo+IDE5NMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0ga29iamVjdF9p
bml0X2FuZF9hZGQoJnN5c2ZzX2VudHJ5LT5rb2JqLCANCj4gJmRtYV9idWZfa3R5cGUsIE5VTEws
DQo+IDE5NcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgIiVsdSIsIA0KPiBmaWxlX2lub2RlKGRtYWJ1Zi0+ZmlsZSkt
PmlfaW5vKTsNCj4gMTk2wqDCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQ0KPiAxOTfCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9zeXNmc19kbWFidWY7DQo+IDE5OA0KPiAx
OTnCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOw0KPiAyMDANCj4gMjAxIGVycl9zeXNmc19kbWFi
dWY6DQo+IDIwMsKgwqDCoMKgwqDCoMKgwqAga29iamVjdF9wdXQoJnN5c2ZzX2VudHJ5LT5rb2Jq
KTsNCj4gMjAzwqDCoMKgwqDCoMKgwqDCoCBkbWFidWYtPnN5c2ZzX2VudHJ5ID0gTlVMTDsNCj4g
MjA0wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Ow0KPiAyMDUgfQ0KRGlkIEkgbWlzcyBzb21l
dGhpbmc/DQoNClRoYW5rcy4NCg0KT24gMjAyMi8xMS8yNCAyMDozNywgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4NCj4NCj4gQW0gMjQuMTEuMjIgdW0gMTM6MDUgc2NocmllYiBjdWlnYW9zaGVu
ZzoNCj4+IFNvbWUgdGlwczoNCj4+IMKgwqDCoCBCZWZvcmUgd2UgY2FsbCB0aGUgZG1hX2J1Zl9z
dGF0c19zZXR1cCgpLCB3ZSBoYXZlIHRvIGZpbmlzaCANCj4+IGNyZWF0aW5nIHRoZSBmaWxlLA0K
Pj4gb3RoZXJ3aXNlIGRtYV9idWZfc3RhdHNfc2V0dXAoKSB3aWxsIHJldHVybiAtRUlOVkFMLCBt
YXliZSB3ZSBuZWVkIHRvIA0KPj4gdGhpbmsgYWJvdXQNCj4+IHRoaXMgd2hlbiBtYWtpbmcgYSBu
ZXcgcGF0Y2guDQo+DQo+IEkgd2FzIGFscmVhZHkgd29uZGVyaW5nIHdoeSB0aGUgb3JkZXIgaXMg
dGhpcyB3YXkuDQo+DQo+IFdoeSBpcyBkbWFfYnVmX3N0YXRzX3NldHVwKCkgbmVlZGluZyB0aGUg
ZmlsZSBpbiB0aGUgZmlyc3QgcGxhY2U/DQo+DQo+IFRoYW5rcywNCj4gQ2hyaXN0aWFuLg0KPg0K
Pj4NCj4+IEhvcGUgdGhlc2UgdGlwcyBhcmUgdXNlZnVsLCB0aGFua3MhDQo+Pg0KPj4gT24gMjAy
Mi8xMS8yNCAxMzo1NiwgQ2hhcmFuIFRlamEgS2FsbGEgd3JvdGU6DQo+Pj4gVGhhbmtzIFQuSiBh
bmQgQ2hyaXN0aWFuIGZvciB0aGUgaW5wdXRzLg0KPj4+DQo+Pj4gT24gMTEvMTkvMjAyMiA3OjAw
IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+Pj4gwqDCoMKgwqAgWWVzLCBleGFjdGx5
IHRoYXQncyB0aGUgaWRlYS4NCj4+Pj4+DQo+Pj4+PiDCoMKgwqDCoCBUaGUgb25seSBhbHRlcm5h
dGl2ZXMgSSBjYW4gc2VlIHdvdWxkIGJlIHRvIGVpdGhlciBtb3ZlIA0KPj4+Pj4gYWxsb2NhdGlu
Zw0KPj4+Pj4gwqDCoMKgwqAgdGhlDQo+Pj4+PiDCoMKgwqDCoCBmaWxlIGFuZCBzbyBjb21wbGV0
aW5nIHRoZSBkbWFfYnVmIGluaXRpYWxpemF0aW9uIGxhc3QgYWdhaW4gDQo+Pj4+PiBvciBqdXN0
DQo+Pj4+PiDCoMKgwqDCoCBpZ25vcmUgZXJyb3JzIGZyb20gc3lzZnMuDQo+Pj4+Pg0KPj4+Pj4g
wqDCoMKgwqAgPiBJZiB3ZSBzdGlsbCB3YW50IHRvIGF2b2lkIGNhbGxpbmcgDQo+Pj4+PiBkbWFi
dWYtPm9wcy0+cmVsZWFzZShkbWFidWYpIGluDQo+Pj4+PiDCoMKgwqDCoCA+IGRtYV9idWZfcmVs
ZWFzZSBsaWtlIHRoZSBjb21tZW50IHNheXMgSSBndWVzcyB3ZSBjb3VsZCB1c2UNCj4+Pj4+IMKg
wqDCoMKgIHN5c2ZzX2VudHJ5DQo+Pj4+PiDCoMKgwqDCoCA+IGFuZCBFUlJfUFRSIHRvIGZsYWcg
dGhhdCwgb3RoZXJ3aXNlIGl0IGxvb2tzIGxpa2Ugd2UnZCBuZWVkIA0KPj4+Pj4gYSBiaXQNCj4+
Pj4+IMKgwqDCoMKgID4gc29tZXdoZXJlLg0KPj4+Pj4NCj4+Pj4+IMKgwqDCoMKgIE5vLCB0aGlz
IHNob3VsZCBiZSBkcm9wcGVkIGFzIGZhciBhcyBJIGNhbiBzZWUuIFRoZSBzeXNmcyANCj4+Pj4+
IGNsZWFudXANCj4+Pj4+IMKgwqDCoMKgIGNvZGUNCj4+Pj4+IMKgwqDCoMKgIGxvb2tzIGxpa2Ug
aXQgY2FuIGhhbmRsZSBub3QgaW5pdGlhbGl6ZWQga29iaiBwb2ludGVycy4NCj4+Pj4+DQo+Pj4+
Pg0KPj4+Pj4gWWVhaCB0aGVyZSBpcyBhbHNvIHRoZSBudWxsIGNoZWNrIGluIGRtYV9idWZfc3Rh
dHNfdGVhcmRvd24oKSB0aGF0DQo+Pj4+PiB3b3VsZCBwcmV2ZW50IGl0IGZyb20gcnVubmluZywg
YnV0IEkgdW5kZXJzdG9vZCB0aGUgY29tbWVudCB0byBiZQ0KPj4+Pj4gcmVmZXJyaW5nIHRvIHRo
ZSByZWxlYXNlKCkgZG1hX2J1Zl9vcHMgY2FsbCBpbnRvIHRoZSBleHBvcnRlciB3aGljaA0KPj4+
Pj4gY29tZXMgcmlnaHQgYWZ0ZXIgdGhlIHRlYXJkb3duIGNhbGwuIFRoYXQgbG9va3MgbGlrZSBp
dCdzIHByZXZlbnRpbmcNCj4+Pj4+IHRoZSBmcHV0IHRhc2sgd29yayBjYWxsaW5nIGJhY2sgaW50
byB0aGUgZXhwb3J0ZXIgYWZ0ZXIgdGhlIGV4cG9ydGVyDQo+Pj4+PiBhbHJlYWR5IGdvdCBhbiBl
cnJvciBmcm9tIGRtYV9idWZfZXhwb3J0KCkuIE90aGVyd2lzZSB0aGUgZXhwb3J0ZXINCj4+Pj4+
IHNlZXMgYSByZWxlYXNlKCkgZm9yIGEgYnVmZmVyIHRoYXQgaXQgZG9lc24ndCBrbm93IGFib3V0
IC8gdGhpbmtzDQo+Pj4+PiBzaG91bGRuJ3QgZXhpc3QuIFNvIEkgY291bGQgaW1hZ2luZSBhbiBl
eHBvcnRlciB0cnlpbmcgdG8gZG91YmxlIA0KPj4+Pj4gZnJlZToNCj4+Pj4+IG9uY2UgZm9yIHRo
ZSBmYWlsZWQgZG1hX2J1Zl9leHBvcnQoKSBjYWxsLCBhbmQgYWdhaW4gd2hlbiB0aGUNCj4+Pj4+
IHJlbGVhc2UoKSBvcCBpcyBjYWxsZWQgbGF0ZXIuDQo+Pj4+DQo+Pj4+IE9oLCB2ZXJ5IGdvb2Qg
cG9pbnQgYXMgd2VsbC4gWWVhaCwgdGhlbiBjcmVhdGluZyB0aGUgZmlsZSBzaG91bGQNCj4+Pj4g
cHJvYmFibHkgY29tZSBsYXN0Lg0KPj4+Pg0KPj4+IEBHYW9zaGVuZzogQ291bGQgeW91IHBsZWFz
ZSBtYWtlIHRoZXNlIGNoYW5nZXMgb3IgeW91IGxldCBtZSB0byBkbz8NCj4+Pg0KPj4+PiBSZWdh
cmRzLA0KPj4+PiBDaHJpc3RpYW4uDQo+Pj4gLg0KPg0KPiAuDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
