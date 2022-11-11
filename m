Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD9A625A7C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Nov 2022 13:31:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 131773F5F8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Nov 2022 12:31:38 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 7A0FC3F5D2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Nov 2022 12:31:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=RfVQvH8Q;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from [192.168.2.41] (unknown [109.252.117.140])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A01BF6602A53;
	Fri, 11 Nov 2022 12:31:18 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1668169879;
	bh=gT2Zg1km2mpUlaANAsdrhIMFKbouao1ucd64mMJD3XE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RfVQvH8QKuuVvlOeRkaRv1xbN5mRU15bCs/pLrqhMZmLqmfFEtPJUzxsUpgII32Wt
	 RzbP1bCPO/IQhBcgGjgH7rY8TPuBPBHhwqjHn7CblZkEc2/uo7SohO81qvz94Uqbdz
	 Z0jbjnoSKGsy3QhTL2m+5xOnUfu7NojWBWYXYh0rRWl+U1FPlfYNTuVFixeRODo8XB
	 pGHTMtGpXpHvb0e8/qOSHqZEgAEMqjjz6dK7L7HVoEqGgel4c3fGt+vDdREDppOPbh
	 Vb5Xd6bOxxTNdpUl6GqS+p6kYFilFnoNkiQawBM+8YA0p9Rxb9NEOBgA1Jf4Ij3aXP
	 FMlenubFaL+pQ==
Message-ID: <512e97ec-5d5e-4d6a-e547-13ca4036f3d1@collabora.com>
Date: Fri, 11 Nov 2022 15:31:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>, kraxel@redhat.com
References: <20221111114528.608801-1-lukasz.wiecaszek@gmail.com>
 <2ee10e0e-a347-71a5-051a-02b9bac0bbb6@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <2ee10e0e-a347-71a5-051a-02b9bac0bbb6@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----------
X-Rspamd-Queue-Id: 7A0FC3F5D2
X-Spamd-Result: default: False [-11.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[collabora.com:dkim];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[46.235.227.172:from];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,googlemail.com,redhat.com];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org]
Message-ID-Hash: CRCW7EW2X5AP3VYLT4HRYSWB7XSP4WE3
X-Message-ID-Hash: CRCW7EW2X5AP3VYLT4HRYSWB7XSP4WE3
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: add vmap method to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CRCW7EW2X5AP3VYLT4HRYSWB7XSP4WE3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTEvMjIgMTU6MDUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IEFkZGluZyBEbWl0
cnkgYXMgd2VsbC4NCj4gDQo+IEFtIDExLjExLjIyIHVtIDEyOjQ1IHNjaHJpZWIgTHVrYXN6IFdp
ZWNhc3plazoNCj4+IFRoZSByZWFzb24gYmVoaW5kIHRoYXQgcGF0Y2ggaXMgYXNzb2NpYXRlZCB3
aXRoIHZpZGVvYnVmMiBzdWJzeXN0ZW0NCj4+IChvciBtb3JlIGdlbnJhbGx5IHdpdGggdjRsMiBm
cmFtZXdvcmspIGFuZCB1c2VyIGNyZWF0ZWQNCj4+IGRtYSBidWZmZXJzICh1ZG1hYnVmKS4gSW4g
c29tZSBjaXJjdW1zdGFuY2VzDQo+PiB3aGVuIGRlYWxpbmcgd2l0aCBWNEwyX01FTU9SWV9ETUFC
VUYgYnVmZmVycyB2aWRlb2J1ZjIgc3Vic3lzdGVtDQo+PiB3YW50cyB0byB1c2UgZG1hX2J1Zl92
bWFwKCkgbWV0aG9kIG9uIHRoZSBhdHRhY2hlZCBkbWEgYnVmZmVyLg0KPj4gQXMgdWRtYWJ1ZiBk
b2VzIG5vdCBoYXZlIC52bWFwIG9wZXJhdGlvbiBpbXBsZW1lbnRlZCwNCj4+IHN1Y2ggZG1hX2J1
Zl92bWFwKCkgbmF0dWFsbHkgZmFpbHMuDQo+Pg0KPj4gdmlkZW9idWYyX2NvbW1vbjogW2NhcC0w
MDAwMDAwMDM0NzNiMmYxXSBfX3ZiMl9xdWV1ZV9hbGxvYzogYWxsb2NhdGVkDQo+PiAzIGJ1ZmZl
cnMsIDEgcGxhbmUocykgZWFjaA0KPj4gdmlkZW9idWYyX2NvbW1vbjogW2NhcC0wMDAwMDAwMDM0
NzNiMmYxXSBfX3ByZXBhcmVfZG1hYnVmOiBidWZmZXIgZm9yDQo+PiBwbGFuZSAwIGNoYW5nZWQN
Cj4+IHZpZGVvYnVmMl9jb21tb246IFtjYXAtMDAwMDAwMDAzNDczYjJmMV0gX19wcmVwYXJlX2Rt
YWJ1ZjogZmFpbGVkIHRvDQo+PiBtYXAgZG1hYnVmIGZvciBwbGFuZSAwDQo+PiB2aWRlb2J1ZjJf
Y29tbW9uOiBbY2FwLTAwMDAwMDAwMzQ3M2IyZjFdIF9fYnVmX3ByZXBhcmU6IGJ1ZmZlcg0KPj4g
cHJlcGFyYXRpb24gZmFpbGVkOiAtMTQNCj4+DQo+PiBUaGUgcGF0Y2ggaXRzZWxmIHNlZW1zIHRv
IGJlIHN0cmlnaGZvcndhcmQuDQo+PiBJdCBhZGRzIGltcGxlbWVudGF0aW9uIG9mIC52bWFwIG1l
dGhvZCB0byAnc3RydWN0IGRtYV9idWZfb3BzDQo+PiB1ZG1hYnVmX29wcycuDQo+PiAudm1hcCBt
ZXRob2QgaXRzZWxmIHVzZXMgdm1fbWFwX3JhbSgpIHRvIG1hcCBwYWdlcyBsaW5lYXJseQ0KPj4g
aW50byB0aGUga2VybmVsIHZpcnR1YWwgYWRkcmVzcyBzcGFjZSAob25seSBpZiBzdWNoIG1hcHBp
bmcNCj4+IGhhc24ndCBiZWVuIGNyZWF0ZWQgeWV0KS4NCj4gDQo+IE9mIGhhbmQgdGhhdCBzb3Vu
ZHMgc2FuZSB0byBtZS4NCj4gDQo+IFlvdSBzaG91bGQgcHJvYmFibHkgbWVudGlvbiBzb21ld2hl
cmUgaW4gYSBjb2RlIGNvbW1lbnQgdGhhdCB0aGUgY2FjaGVkDQo+IHZhZGRyIGlzIHByb3RlY3Rl
ZCBieSB0aGUgcmVzZXJ2YXRpb24gbG9jayBiZWluZyB0YWtlbi4gVGhhdCdzIG5vdA0KPiBuZWNl
c3Nhcnkgb2J2aW91cyB0byBldmVyeWJvZHkuDQo+IA0KPiBBcGFydCBmcm9tIHRoYXQgbG9va3Mg
Z29vZCB0byBtZS4NCg0KQWRkaW5nIGEgY29tbWVudCB3b24ndCBodXJ0Lg0KDQpXZSBoYXZlIHRo
ZSBkbWFfcmVzdl9hc3NlcnRfaGVsZCgpIGluIGRtYV9idWZfdm1hcCgpIHRoYXQgd2lsbCBoZWxw
DQpzcG90dGluZyBhIG1pc3NpbmcgbG9jayBhdCBydW50aW1lIGJ5IGRldmVsb3BlcnMuIFdoaWxl
IHRoZQ0KZG1idWZfb3BzLT52bWFwKCkgc2hvdWxkbid0IGJlIGV2ZXIgdXNlZCBkaXJlY3RseSBi
eSBpbXBvcnRlcnMuDQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
