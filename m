Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB707CF748
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:45:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 314C440C23
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:45:26 +0000 (UTC)
Received: from smtp.smtpout.orange.fr (smtp-29.smtpout.orange.fr [80.12.242.29])
	by lists.linaro.org (Postfix) with ESMTPS id 199083E9F1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Sep 2023 19:22:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=wanadoo.fr header.s=t20230301 header.b=IOzxAW2l;
	spf=pass (lists.linaro.org: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.29 as permitted sender) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
	dmarc=pass (policy=none) header.from=wanadoo.fr
Received: from [192.168.1.18] ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id iJpUqXaW8vRSUiJpVqOPuM; Mon, 18 Sep 2023 21:22:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1695064967;
	bh=qUTILhPdiaRO8mrn/9Xa/LyWEJmc0jgEzY8KobjS0VU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=IOzxAW2lb1j3Wwnmt0nnTQ9t31+qJFPnpTRxYU9+Wupy4Kk82Di9jWTUtPUXyQ48R
	 PvIEWdTX/wwZQY5s+RLBnI/tga8o72m10FsOXACjCxkuxPZNG+wY5TEO5oUW0g+KkE
	 nz5N5o3jtwVqEbus7SQSHMAlLcDb/iJW3QhZjErBHCdDbMuqeRxLtGTSPdEwnCQeR1
	 xCwIs3USoUec9heY2cu3RZ/bcuj3VXmsX4MiYCI/dWA9mdFaUiW1rVygJ09aqNC21n
	 L7cK7pAwtCxzt3irmbIoBQTzRGoJcLhzKyqSq8pa+OEfzXsuWf6BWSdVOvRloEd75X
	 M1lDb3Pv0IOjA==
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 18 Sep 2023 21:22:47 +0200
X-ME-IP: 86.243.2.178
Message-ID: <a49f800e-e56f-433a-81d2-6edd68a0a015@wanadoo.fr>
Date: Mon, 18 Sep 2023 21:22:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <3e37f05c7593f1016f0a46de188b3357cbbd0c0b.1695060389.git.christophe.jaillet@wanadoo.fr>
 <7043f179-b670-db3c-3ab0-a1f3e991add9@embeddedor.com>
Content-Language: fr, en-US
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <7043f179-b670-db3c-3ab0-a1f3e991add9@embeddedor.com>
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[wanadoo.fr:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[wanadoo.fr,none];
	R_SPF_ALLOW(-0.20)[+ip4:80.12.0.0/14:c];
	R_DKIM_ALLOW(-0.20)[wanadoo.fr:s=t20230301];
	RWL_MAILSPIKE_GOOD(-0.10)[80.12.242.29:from];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[wanadoo.fr];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3215, ipnet:80.12.240.0/20, country:FR];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[wanadoo.fr];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.932];
	DKIM_TRACE(0.00)[wanadoo.fr:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 199083E9F1
X-MailFrom: christophe.jaillet@wanadoo.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LVNIKDP74YVM7XTLXZTGKZUOCKXGOJEB
X-Message-ID-Hash: LVNIKDP74YVM7XTLXZTGKZUOCKXGOJEB
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:45:05 +0000
CC: linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: Fix a potential (and unlikely) access to unallocated memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LVNIKDP74YVM7XTLXZTGKZUOCKXGOJEB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

TGUgMTgvMDkvMjAyMyDDoCAwNToxMCwgR3VzdGF2byBBLiBSLiBTaWx2YSBhIMOpY3JpdMKgOg0K
PiANCj4gDQo+IE9uIDkvMTgvMjMgMTI6NDYsIENocmlzdG9waGUgSkFJTExFVCB3cm90ZToNCj4+
IElmICdsaXN0X2xpbWl0JyBpcyBzZXQgdG8gYSB2ZXJ5IGhpZ2ggdmFsdWUsICdsc2l6ZScgY29t
cHV0YXRpb24gY291bGQNCj4+IG92ZXJmbG93IGlmICdoZWFkLmNvdW50JyBpcyBiaWcgZW5vdWdo
Lg0KPj4NCj4+IEluIHN1Y2ggYSBjYXNlLCB1ZG1hYnVmX2NyZWF0ZSgpIHdpbGwgYWNjZXNzIHRv
IG1lbW9yeSBiZXlvbmQgJ2xpc3QnLg0KPj4NCj4+IFVzZSBzaXplX211bCgpIHRvIHNhdHVyYXRl
IHRoZSB2YWx1ZSwgYW5kIGhhdmUgbWVtZHVwX3VzZXIoKSBmYWlsLg0KPj4NCj4+IEZpeGVzOiBm
YmIwZGU3OTUwNzggKCJBZGQgdWRtYWJ1ZiBtaXNjIGRldmljZSIpDQo+PiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPg0KPj4g
LS0tDQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIHwgNCArKy0tDQo+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFi
dWYuYw0KPj4gaW5kZXggYzQwNjQ1OTk5NjQ4Li5mYjRjNGI1YjMzMzIgMTAwNjQ0DQo+PiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvdWRt
YWJ1Zi5jDQo+PiBAQCAtMzE0LDEzICszMTQsMTMgQEAgc3RhdGljIGxvbmcgdWRtYWJ1Zl9pb2N0
bF9jcmVhdGVfbGlzdChzdHJ1Y3QgDQo+PiBmaWxlICpmaWxwLCB1bnNpZ25lZCBsb25nIGFyZykN
Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHVkbWFidWZfY3JlYXRlX2xpc3QgaGVhZDsNCj4+IMKgwqDC
oMKgwqAgc3RydWN0IHVkbWFidWZfY3JlYXRlX2l0ZW0gKmxpc3Q7DQo+PiDCoMKgwqDCoMKgIGlu
dCByZXQgPSAtRUlOVkFMOw0KPj4gLcKgwqDCoCB1MzIgbHNpemU7DQo+PiArwqDCoMKgIHNpemVf
dCBsc2l6ZTsNCj4+IMKgwqDCoMKgwqAgaWYgKGNvcHlfZnJvbV91c2VyKCZoZWFkLCAodm9pZCBf
X3VzZXIgKilhcmcsIHNpemVvZihoZWFkKSkpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IC1FRkFVTFQ7DQo+PiDCoMKgwqDCoMKgIGlmIChoZWFkLmNvdW50ID4gbGlzdF9saW1pdCkNCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsNCj4+IC3CoMKgwqAgbHNpemUgPSBz
aXplb2Yoc3RydWN0IHVkbWFidWZfY3JlYXRlX2l0ZW0pICogaGVhZC5jb3VudDsNCj4+ICvCoMKg
wqAgbHNpemUgPSBzaXplX211bChzaXplb2Yoc3RydWN0IHVkbWFidWZfY3JlYXRlX2l0ZW0pLCBo
ZWFkLmNvdW50KTsNCj4+IMKgwqDCoMKgwqAgbGlzdCA9IG1lbWR1cF91c2VyKCh2b2lkIF9fdXNl
ciAqKShhcmcgKyBzaXplb2YoaGVhZCkpLCBsc2l6ZSk7DQo+PiDCoMKgwqDCoMKgIGlmIChJU19F
UlIobGlzdCkpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIobGlzdCk7DQo+
IA0KPiBIb3cgYWJvdXQgdGhpcywgYW5kIHdlIGdldCByaWQgb2YgYGxzaXplYDoNCg0KS2VlcGlu
ZyBvciByZW1vdmluZyBsc2l6ZSBpcyBtb3N0bHkgYSBtYXR0ZXIgb2YgdGFzdGUsIEkgdGhpbmsu
DQoNClVzaW5nIHNpemVvZigqbGlzdCkgaXMgYmV0dGVyLg0KDQpMZXQgc2VlIGlmIHRoZXJlIGFy
ZSBzb21lIG90aGVyIGNvbW1lbnRzLCBhbmQgSSdsbCBzZW5kIGEgdjIuDQoNClRoYW5rcyBmb3Ig
dGhlIGZlZWQtYmFjay4NCg0KQ0oNCg0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi91ZG1hYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+IGluZGV4IGM0MDY0NTk5
OTY0OC4uNWNmOWQ4NDlhYWE4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1
Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4gQEAgLTMxNCwxNCArMzE0
LDEzIEBAIHN0YXRpYyBsb25nIHVkbWFidWZfaW9jdGxfY3JlYXRlX2xpc3Qoc3RydWN0IGZpbGUg
DQo+ICpmaWxwLCB1bnNpZ25lZCBsb25nIGFyZykNCj4gIMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB1
ZG1hYnVmX2NyZWF0ZV9saXN0IGhlYWQ7DQo+ICDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgdWRtYWJ1
Zl9jcmVhdGVfaXRlbSAqbGlzdDsNCj4gIMKgwqDCoMKgwqDCoMKgIGludCByZXQgPSAtRUlOVkFM
Ow0KPiAtwqDCoMKgwqDCoMKgIHUzMiBsc2l6ZTsNCj4gDQo+ICDCoMKgwqDCoMKgwqDCoCBpZiAo
Y29weV9mcm9tX3VzZXIoJmhlYWQsICh2b2lkIF9fdXNlciAqKWFyZywgc2l6ZW9mKGhlYWQpKSkN
Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVGQVVMVDsNCj4gIMKg
wqDCoMKgwqDCoMKgIGlmIChoZWFkLmNvdW50ID4gbGlzdF9saW1pdCkNCj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsNCj4gLcKgwqDCoMKgwqDCoCBsc2l6
ZSA9IHNpemVvZihzdHJ1Y3QgdWRtYWJ1Zl9jcmVhdGVfaXRlbSkgKiBoZWFkLmNvdW50Ow0KPiAt
wqDCoMKgwqDCoMKgIGxpc3QgPSBtZW1kdXBfdXNlcigodm9pZCBfX3VzZXIgKikoYXJnICsgc2l6
ZW9mKGhlYWQpKSwgbHNpemUpOw0KPiArwqDCoMKgwqDCoMKgIGxpc3QgPSBtZW1kdXBfdXNlcigo
dm9pZCBfX3VzZXIgKikoYXJnICsgc2l6ZW9mKGhlYWQpKSwNCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfbXVsKHNpemVvZigqbGlzdCks
IGhlYWQuY291bnQpKTsNCj4gIMKgwqDCoMKgwqDCoMKgIGlmIChJU19FUlIobGlzdCkpDQo+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIobGlzdCk7DQo+IA0K
PiANCj4gLS0gDQo+IEd1c3Rhdm8NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
