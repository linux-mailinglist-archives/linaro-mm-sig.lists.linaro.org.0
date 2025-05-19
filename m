Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F0CABB7BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 10:48:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71D4541014
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 08:48:18 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 954EC41014
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 08:48:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="vJ0jq/7V";
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D92CA6112E;
	Mon, 19 May 2025 08:48:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25C08C4CEE4;
	Mon, 19 May 2025 08:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747644485;
	bh=e2P5kIf12pmhzIP6nIe0ke4cFpoL7ha0XqwOXr3qDxQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=vJ0jq/7VyJqgSVlYbHkY5RMeRQrUJfL5za0MN+a/59F4KhWyWMMQ6dl/a3ckFH8Uc
	 MNrm9ChLSNlVW4O6+z9boGrKsTkOgr15pBcs+uSILRksNIjMBms7HbKKZTPMmPBX3x
	 tWj6/UBUq0hQurFJ3nA8cWXrs1Pdxz3sL8rZ2QELa8k8msyHR1U58i518qoWNG68bk
	 wOdflOyC3mVuyOpm33gLCbhCqiCICYX09t2Z8POZTv+x9iImZd6AhnTtjAeWgi1NSI
	 sVjzkX0GuisIjD98xnvir5VDUrBCWTUzpjZ2WWODwSZW9xUbd5PvXxtKTU6ozPUOdK
	 5LOc0kJBgm3hg==
Message-ID: <f8cf2c4e-0ae2-4799-bda8-654b4f515846@kernel.org>
Date: Mon, 19 May 2025 10:47:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
References: <20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net>
 <20250516-6-10-rocket-v3-2-7051ac9225db@tomeuvizoso.net>
 <4bd79c88-7da5-4bf0-9300-cfdb296c8919@kernel.org>
 <CAAObsKDsO=5uK3BEn6BOgatb+y73jc-Se6mmSbhwG9P_1nVtwg@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <CAAObsKDsO=5uK3BEn6BOgatb+y73jc-Se6mmSbhwG9P_1nVtwg@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[172.105.4.254:from];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,oss.qualcomm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: 954EC41014
X-Spamd-Bar: --
Message-ID-Hash: 5IPDDKCYPOXFP3JFYSPFUY3WDBMN5ZDQ
X-Message-ID-Hash: 5IPDDKCYPOXFP3JFYSPFUY3WDBMN5ZDQ
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 02/10] arm64: dts: rockchip: Add nodes for NPU and its MMU to rk3588s
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5IPDDKCYPOXFP3JFYSPFUY3WDBMN5ZDQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTkvMDUvMjAyNSAxMDoyNywgVG9tZXUgVml6b3NvIHdyb3RlOg0KPiBPbiBNb24sIE1heSAx
OSwgMjAyNSBhdCA4OjA44oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3Jn
PiB3cm90ZToNCj4+DQo+PiBPbiAxNi8wNS8yMDI1IDE4OjUzLCBUb21ldSBWaXpvc28gd3JvdGU6
DQo+Pj4gU2VlIENoYXB0ZXIgMzYgIlJLTk4iIGZyb20gdGhlIFJLMzU4OCBUUk0gKFBhcnQgMSku
DQo+Pj4NCj4+PiBUaGlzIGlzIGEgZGVyaXZhdGl2ZSBvZiBOVklESUEncyBOVkRMQSwgYnV0IHdp
dGggaXRzIG93biBmcm9udC1lbmQNCj4+PiBwcm9jZXNzb3IuDQo+Pj4NCj4+PiBUaGUgSVAgaXMg
ZGl2aWRlZCBpbiB0aHJlZSBjb3JlcywgcHJvZ3JhbW1lZCBpbmRlcGVuZGVudGx5LiBUaGUgZmly
c3QNCj4+PiBjb3JlIHRob3VnaCBpcyBzcGVjaWFsLCByZXF1aXJpbmcgdG8gYmUgcG93ZXJlZCBv
biBiZWZvcmUgYW55IG9mIHRoZQ0KPj4+IG90aGVycyBjYW4gYmUgdXNlZC4NCj4+Pg0KPj4+IFRo
ZSBJT01NVSBvZiB0aGUgZmlyc3QgY29yZSBpcyBhbHNvIHNwZWNpYWwgaW4gdGhhdCBpdCBoYXMg
dHdvIHN1YnVuaXRzDQo+Pj4gKHJlYWQvd3JpdGU/KSB0aGF0IG5lZWQgdG8gYmUgcHJvZ3JhbW1l
ZCBpbiBzeW5jLg0KPj4+DQo+Pj4gdjI6DQo+Pj4gLSBIYXZlIG9uZSBkZXZpY2UgZm9yIGVhY2gg
TlBVIGNvcmUgKFNlYmFzdGlhbiBSZWljaGVsKQ0KPj4+IC0gSGF2ZSBvbmUgZGV2aWNlIGZvciBl
YWNoIElPTU1VIChTZWJhc3RpYW4gUmVpY2hlbCkNCj4+PiAtIENvcnJlY3RseSBzb3J0IG5vZGVz
IChEaWVkZXJpayBkZSBIYWFzKQ0KPj4+IC0gQWRkIHJvY2tjaGlwLGlvbW11IGNvbXBhdGlibGUg
dG8gSU9NTVUgbm9kZXMgKFNlYmFzdGlhbiBSZWljaGVsKQ0KPj4+DQo+Pj4gdjM6DQo+Pj4gLSBB
ZGFwdCB0byBhIHNwbGl0IG9mIHRoZSByZWdpc3RlciBibG9jayBpbiB0aGUgRFQgYmluZGluZ3Mg
KE5pY29sYXMNCj4+PiAgIEZyYXR0YXJvbGkpDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBUb21l
dSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4NCj4+PiAtLS0NCj4+PiAgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIHwgODUgKysrKysrKysrKysrKysr
KysrKysrKysrKysrDQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA4NSBpbnNlcnRpb25zKCspDQo+Pj4N
Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFz
ZS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpDQo+
Pj4gaW5kZXggMWUxOGFkOTNiYTBlYmRhZDMxNjQyYjg4ZmYwZjkwZWY0ZThkYzc2Zi4uN2I5NjFh
YjgzODIxMmZhZDhlNGE3MDM5MGZkYzkxN2E4Mjg0MzNhOSAxMDA2NDQNCj4+PiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kNCj4+PiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kNCj4+PiBAQCAtMTEzNiw2
ICsxMTM2LDkxIEBAIHBvd2VyLWRvbWFpbkBSSzM1ODhfUERfU0RNTUMgew0KPj4+ICAgICAgICAg
ICAgICAgfTsNCj4+PiAgICAgICB9Ow0KPj4+DQo+Pj4gKyAgICAgcmtubl9jb3JlX3RvcDogbnB1
LWNvcmVAZmRhYjAwMDAgew0KPj4NCj4+IG5wdUANCj4+DQo+Pj4gKyAgICAgICAgICAgICBjb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUtdG9wIiwgInJvY2tjaGlwLHJrbm4t
Y29yZS10b3AiOw0KPj4NCj4+IFlvdSBuZXZlciB0ZXN0ZWQgdGhpcy4gVGVzdCBiZWZvcmUgc2Vu
ZGluZyBpbnN0ZWFkIG9mIHJlbHlpbmcgb24gdXMgb3INCj4+IGFmdGVyIG1lcmdpbmcuDQo+IA0K
PiBDYW4geW91IHBsZWFzZSBleHRlbmQgb24gdGhpcz8gSSBoYXZlIHRlc3RlZCB0aGlzIHNlcmll
cyBiZWZvcmUNCj4gc2VuZGluZyBhbmQgSSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4g
aGVyZS4NCg0KSSBtZWFuIGV4YWN0bHkgdGhhdDogaXQgd2FzIG5vdCB0ZXN0ZWQsIGJlY2F1c2Ug
d2FybmluZ3MgYXJlIGNsZWFybHkNCnZpc2libGUvZXhwZWN0ZWQuIEkgYWxzbyBmb3VuZCBub3cg
Um9iJ3MgcmVwb3J0IHdoaWNoIGV2ZW4gc2hvd3MgeW91IHRoZQ0Kd2FybmluZ3MsIHNvIGhvdyBj
b21lIHlvdSBzdGlsbCBjbGFpbSB0aGlzIHdhcyB0ZXN0ZWQ/DQoNCkJlc3QgcmVnYXJkcywNCkty
enlzenRvZg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
