Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D35CD8AC690
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Apr 2024 10:17:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88ADC3F48D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Apr 2024 08:17:34 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 82E7F3F074
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Apr 2024 08:17:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=kQDUuizb;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713773843;
	bh=cMADH+A0BEOfb9WplRUCFQe3Bk4HECT83QRWAChad4s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kQDUuizbICE+dtRmPyWNhnQaQqWsly3CTdmXZmQrBbWqMvB4KYhIm9TjyFLQaQvv7
	 52gMxKdhvRxWOMgnu++PlsNC33neV4h4xV0XVSaCkTadM80fdgKRV+YQYA8/KzpWGc
	 W/i+SvV1PDMhdCk15lQ9M+ajjgJoShpWK4idgagBaoKvojfAPsp4MP5pmC8KoGEP1f
	 5qEgTCpION7rZaFrJQCfNLlYc/lrAjLDZIjYyv0gK2+cI7L9nLgn6q54Odohgl4KQ6
	 WlA6cTROjamnUl81P6OR1aKAinYlUxC9QDYjFF0/OKmdA4gzP8E8KvEQHSdqYq3xqh
	 ygokbn2sabT5Q==
Received: from [100.109.49.129] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A8F85378001E;
	Mon, 22 Apr 2024 08:17:21 +0000 (UTC)
Message-ID: <6066f6f0-49c6-4607-9c33-88e166ccae86@collabora.com>
Date: Mon, 22 Apr 2024 11:17:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Zack Rusin <zack.rusin@broadcom.com>
References: <20240421163951.3398622-1-adrian.larumbe@collabora.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20240421163951.3398622-1-adrian.larumbe@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 82E7F3F074
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.89 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,kernel.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,broadcom.com];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[195.201.22.229:received,46.235.227.194:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: QCTVKWHI7AMTPEN7QAQUEOIFUZWQC5QN
X-Message-ID-Hash: QCTVKWHI7AMTPEN7QAQUEOIFUZWQC5QN
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/panfrost: Fix dma_resv deadlock at drm object pin time
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QCTVKWHI7AMTPEN7QAQUEOIFUZWQC5QN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNC8yMS8yNCAxOTozOSwgQWRyacOhbiBMYXJ1bWJlIHdyb3RlOg0KPiBXaGVuIFBhbmZyb3N0
IG11c3QgcGluIGFuIG9iamVjdCB0aGF0IGlzIGJlaW5nIHByZXBhcmVkIGEgZG1hLWJ1Zg0KPiBh
dHRhY2htZW50IGZvciBvbiBiZWhhbGYgb2YgYW5vdGhlciBkcml2ZXIsIHRoZSBjb3JlIGRybSBn
ZW0gb2JqZWN0IHBpbm5pbmcNCj4gY29kZSBhbHJlYWR5IHRha2VzIGEgbG9jayBvbiB0aGUgb2Jq
ZWN0J3MgZG1hIHJlc2VydmF0aW9uLg0KPiANCj4gSG93ZXZlciwgUGFuZnJvc3QgR0VNIG9iamVj
dCdzIHBpbm5pbmcgY2FsbGJhY2sgd291bGQgZXZlbnR1YWxseSB0cnkgdGFraW5nDQo+IHRoZSBs
b2NrIG9uIHRoZSBzYW1lIGRtYSByZXNlcnZhdGlvbiB3aGVuIGRlbGVnYXRpbmcgcGlubmluZyBv
ZiB0aGUgb2JqZWN0DQo+IG9udG8gdGhlIHNobWVtIHN1YnN5c3RlbSwgd2hpY2ggbGVkIHRvIGEg
ZGVhZGxvY2suDQo+IA0KPiBUaGlzIGNhbiBiZSBzaG93biBieSBlbmFibGluZyBDT05GSUdfREVC
VUdfV1dfTVVURVhfU0xPV1BBVEgsIHdoaWNoIHRocm93cw0KPiB0aGUgZm9sbG93aW5nIHJlY3Vy
c2l2ZSBsb2NraW5nIHNpdHVhdGlvbjoNCj4gDQo+IHdlc3Rvbi8zNDQwIGlzIHRyeWluZyB0byBh
Y3F1aXJlIGxvY2s6DQo+IGZmZmYwMDAwMDBlMjM1YTAgKHJlc2VydmF0aW9uX3d3X2NsYXNzX211
dGV4KXsrLisufS17MzozfSwgYXQ6IGRybV9nZW1fc2htZW1fcGluKzB4MzQvMHhiOCBbZHJtX3No
bWVtX2hlbHBlcl0NCj4gYnV0IHRhc2sgaXMgYWxyZWFkeSBob2xkaW5nIGxvY2s6DQo+IGZmZmYw
MDAwMDBlMjM1YTAgKHJlc2VydmF0aW9uX3d3X2NsYXNzX211dGV4KXsrLisufS17MzozfSwgYXQ6
IGRybV9nZW1fcGluKzB4MmMvMHg4MCBbZHJtXQ0KPiANCj4gRml4IGl0IGJ5IGFzc3VtaW5nIHRo
ZSBvYmplY3QncyByZXNlcnZhdGlvbiBoYWQgYWxyZWFkeSBiZWVuIGxvY2tlZCBieSB0aGUNCj4g
dGltZSB3ZSByZWFjaCBwYW5mcm9zdF9nZW1fcGluLg0KPiANCj4gQ2M6IFRob21hcyBaaW1tZXJt
YW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiBDYzogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnku
b3NpcGVua29AY29sbGFib3JhLmNvbT4NCj4gQ2M6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJl
emlsbG9uQGNvbGxhYm9yYS5jb20+DQo+IENjOiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBh
cm0uY29tPg0KPiBGaXhlczogYTc4MDI3ODQ3MjI2ICgiZHJtL2dlbTogQWNxdWlyZSByZXNlcnZh
dGlvbiBsb2NrIGluIGRybV9nZW1fe3Bpbi91bnBpbn0oKSIpDQo+IFNpZ25lZC1vZmYtYnk6IEFk
cmnDoW4gTGFydW1iZSA8YWRyaWFuLmxhcnVtYmVAY29sbGFib3JhLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMgfCA3ICsrKysrKy0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMNCj4gaW5kZXggZDQ3YjQwYjgyYjBiLi42
YzI2NjUyZDQyNWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5m
cm9zdF9nZW0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2Vt
LmMNCj4gQEAgLTE5Miw3ICsxOTIsMTIgQEAgc3RhdGljIGludCBwYW5mcm9zdF9nZW1fcGluKHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPiAgCWlmIChiby0+aXNfaGVhcCkNCj4gIAkJcmV0
dXJuIC1FSU5WQUw7DQo+ICANCj4gLQlyZXR1cm4gZHJtX2dlbV9zaG1lbV9waW4oJmJvLT5iYXNl
KTsNCj4gKwkvKg0KPiArCSAqIFBpbm5pbmcgY2FuIG9ubHkgaGFwcGVuIGluIHJlc3BvbnNlIHRv
IGEgcHJpbWUgYXR0YWNobWVudCByZXF1ZXN0IGZyb20NCj4gKwkgKiBhbm90aGVyIGRyaXZlciwg
YnV0IHRoYXQncyBhbHJlYWR5IGJlaW5nIGhhbmRsZWQgYnkgZHJtX2dlbV9waW4NCj4gKwkgKi8N
Cj4gKwlkcm1fV0FSTl9PTihvYmotPmRldiwgb2JqLT5pbXBvcnRfYXR0YWNoKTsNCj4gKwlyZXR1
cm4gZHJtX2dlbV9zaG1lbV9waW5fbG9ja2VkKCZiby0+YmFzZSk7DQo+ICB9DQoNCldpbGwgYmUg
YmV0dGVyIHRvIHVzZSBkcm1fZ2VtX3NobWVtX29iamVjdF9waW4oKSB0byBhdm9pZCBzdWNoIHBy
b2JsZW0NCmluIGZ1dHVyZQ0KDQpQbGVhc2UgYWxzbyBmaXggdGhlIExpbWEgZHJpdmVyDQoNCi0t
IA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
