Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DVKOt6+lWkfUgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Feb 2026 14:30:06 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 654F9156A80
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Feb 2026 14:30:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C43C40150
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Feb 2026 13:30:05 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 5638C3F7EC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 13:30:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=hQXgmrs1;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D4D666132D;
	Wed, 18 Feb 2026 13:30:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D00EC19424;
	Wed, 18 Feb 2026 13:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771421401;
	bh=gN2cljJea4XLY82kVunjPVPH2WX7LYqJDp0lJ1rpnJE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hQXgmrs1Qlib2Iq+e1k/vkhWvMgVnJzznWpXjKLKlL/k+U6Tv2xdc10MIVg/SeCDM
	 A66aqE5wdPpuA5lTlGH60KZ0ZkszhElLCWKFSjtPvfAQkVmYcuhim3wEn+6JjbOJ3S
	 CgqItgBO+/0Zz/5xyOfURJ6rhOX58rpT2RyVXY3PV2l6/m1wkzMcN1gHGt8Wq2oyAk
	 LggaivlXv0p5S8ianw7fhxrVvurLmiSsCQt0MqR7ibOzj5kmVXiosLSTUrFIiv1ULe
	 1h69+BXZAAztSjkxDEOWwl00dfgmEHtRvKxwHhRS6tpZNfNtp4CcSEavVs/fKwledH
	 OtF7zRlwkP7mQ==
Message-ID: <b7adddfc-db7a-466d-a2e8-72bc6a87ae81@kernel.org>
Date: Wed, 18 Feb 2026 14:29:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Larisa Ileana Grigore <larisa.grigore@oss.nxp.com>,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org,
 christian.koenig@amd.com, chester62515@gmail.com, cosmin.stoica@nxp.com,
 adrian.nitu@freescale.com, stefan-gabriel.mirea@nxp.com,
 Mihaela.Martinas@freescale.com
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
 <20260216150205.212318-9-larisa.grigore@oss.nxp.com>
 <24443e02-886e-48e2-911e-e4093d251155@kernel.org>
 <e9c214be-840a-43fe-b24d-610fe90269b2@oss.nxp.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <e9c214be-840a-43fe-b24d-610fe90269b2@oss.nxp.com>
X-Spamd-Bar: ---
Message-ID-Hash: P77SQMVQ4JSU4XWGY3DKTM43PONNMRUT
X-Message-ID-Hash: P77SQMVQ4JSU4XWGY3DKTM43PONNMRUT
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Radu Pirea <radu-nicolae.pirea@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/13] dt-bindings: serial: fsl-linflexuart: add clock input properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P77SQMVQ4JSU4XWGY3DKTM43PONNMRUT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[oss.nxp.com,linuxfoundation.org,kernel.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,401c8000:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 654F9156A80
X-Rspamd-Action: no action

T24gMTgvMDIvMjAyNiAxNDoyNiwgTGFyaXNhIElsZWFuYSBHcmlnb3JlIHdyb3RlOg0KPiBPbiAy
LzE2LzIwMjYgNToxMCBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4+IE9uIDE2LzAy
LzIwMjYgMTY6MDIsIExhcmlzYSBHcmlnb3JlIHdyb3RlOg0KPj4+IEZyb206IFJhZHUgUGlyZWEg
PHJhZHUtbmljb2xhZS5waXJlYUBueHAuY29tPg0KPj4+DQo+Pj4gQWRkIG9wdGlvbmFsIHN1cHBv
cnQgZm9yIHRoZSB0d28gY2xvY2sgaW5wdXRzIHVzZWQgYnkgdGhlIExJTkZsZXhEIFVBUlQNCj4+
PiBjb250cm9sbGVyOg0KPj4+IC0gImxpbiI6IExJTl9CQVVEX0NMSw0KPj4+IC0gImlwZyI6IExJ
TkZMRVhEX0NMSw0KPj4+DQo+Pj4gVGhlIGNsb2NrIGlucHV0cyBhcmUga2VwdCBvcHRpb25hbCB0
byBtYWludGFpbiBjb21wYXRpYmlsaXR5IHdpdGggdGhlDQo+Pj4gUzMyVjIzNCBwbGF0Zm9ybS4N
Cj4+DQo+PiBEb2VzIFMzMlYyMzQgaGF2ZSB0aGUgY2xvY2tzPyBJIGRvbid0IHVuZGVyc3RhbmQg
dGhlICJtYWludGFpbg0KPj4gY29tcGF0aWJpbGl0eSIgaW4gdGhpcyBjb250ZXh0LiBFaXRoZXIg
eW91IGhhdmUgb3IgeW91IGhhdmUgbm90IGNsb2NrcywNCj4+IHdoaWNoIHNob3VsZCBiZSBleHBy
ZXNzZWQgaW4gc2NoZW1hICg6IGZhbHNlLCBzZWUgZXhhbXBsZSBzY2hlbWEpLg0KPj4NCj4gSGVs
bG8gS3J6eXN6dG9mLA0KPiANCj4gVGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dCEgSSB3aWxs
IHVwZGF0ZSBib3RoIHRoZSBzY2hlbWEgYW5kIHRoZSANCj4gY29tbWl0IGRlc2NyaXB0aW9uLg0K
PiBTMzJWMjM0IGRvZXMgbm90IGV4cG9zZSB0aGVzZSBjbG9ja3MgaW4gaXRzIGRldmljZSB0cmVl
4oCUb24gdGhpcyBwbGF0Zm9ybSANCj4gdGhlIExJTkZsZXhEIGNsb2NrcyBhcmUgc2V0IHVwIGFu
ZCBlbmFibGVkIGJ5IFXigJFCb290LCBzbyB0aGV5IGFyZSBub3QgDQo+IGF2YWlsYWJsZSB0byB0
aGUga2VybmVsLg0KDQpTbyB0aGVyZSBhcmUgY2xvY2tzLiBEVFMgaXMgYmVpbmcgdXNlZCBieSBi
b290bG9hZGVyLCBzbyBob3cgYm9vdGxvYWRlcg0KaXMgZ29pbmcgdG8gc2V0IHVwIGNsb2NrcyBm
b3IgUzMyVjIzNCBpZiBubyBvbmUgcHJvdmlkZXMgdGhlbT8NCg0KVGhpcyBsb29rcyBsaWtlIGJ1
Z2d5L2luY29tcGxldGUgYXBwcm9hY2gsIGFsdGhvdWdoIEkgdW5kZXJzdGFuZCB0aGF0DQp0aGUg
b3JpZ2luYWwgYmluZGluZyBoYWQgdGhlIGlzc3VlLg0KDQoNCj4gVGhlIGNoYW5nZXMgaW4gdGhp
cyBwYXRjaCBhcmUgaW50ZW5kZWQgc3BlY2lmaWNhbGx5IGZvciBTMzJHMi9HMywgd2hlcmUgDQo+
IHRoZSBjbG9ja3MgYXJlIHByb3ZpZGVkIGluIHRoZSBEVCBhbmQgcmVxdWlyZWQgYnkgdGhlIGRy
aXZlci4NCj4gDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBSYWR1IFBpcmVhIDxyYWR1LW5pY29s
YWUucGlyZWFAbnhwLmNvbT4NCj4+PiBDby1kZXZlbG9wZWQtYnk6IExhcmlzYSBHcmlnb3JlIDxs
YXJpc2EuZ3JpZ29yZUBvc3MubnhwLmNvbT4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBMYXJpc2EgR3Jp
Z29yZSA8bGFyaXNhLmdyaWdvcmVAb3NzLm54cC5jb20+DQo+Pj4gLS0tDQo+Pj4gICAuLi4vYmlu
ZGluZ3Mvc2VyaWFsL2ZzbCxzMzItbGluZmxleHVhcnQueWFtbCAgIHwgMTggKysrKysrKysrKysr
KysrKysrDQo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQ0KPj4+DQo+Pj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvZnNs
LHMzMi1saW5mbGV4dWFydC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3NlcmlhbC9mc2wsczMyLWxpbmZsZXh1YXJ0LnlhbWwNCj4+PiBpbmRleCA0MTcxZjUyNGE5Mjgu
Ljg4NWYwYjFiMzQ5MiAxMDA2NDQNCj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc2VyaWFsL2ZzbCxzMzItbGluZmxleHVhcnQueWFtbA0KPj4+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvZnNsLHMzMi1saW5mbGV4dWFydC55
YW1sDQo+Pj4gQEAgLTM0LDYgKzM0LDE0IEBAIHByb3BlcnRpZXM6DQo+Pj4gICAgIGludGVycnVw
dHM6DQo+Pj4gICAgICAgbWF4SXRlbXM6IDENCj4+PiAgIA0KPj4+ICsgIGNsb2NrczoNCj4+PiAr
ICAgIG1heEl0ZW1zOiAyDQo+Pj4gKw0KPj4+ICsgIGNsb2NrLW5hbWVzOg0KPj4+ICsgICAgaXRl
bXM6DQo+Pj4gKyAgICAgIC0gY29uc3Q6IGxpbg0KPj4+ICsgICAgICAtIGNvbnN0OiBpcGcNCj4+
PiArDQo+Pj4gICByZXF1aXJlZDoNCj4+PiAgICAgLSBjb21wYXRpYmxlDQo+Pj4gICAgIC0gcmVn
DQo+Pj4gQEAgLTQ4LDMgKzU2LDEzIEBAIGV4YW1wbGVzOg0KPj4+ICAgICAgICAgICByZWcgPSA8
MHg0MDA1MzAwMCAweDEwMDA+Ow0KPj4+ICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDAgNTkgND47
DQo+Pj4gICAgICAgfTsNCj4+PiArDQo+Pj4gKyAgLSB8DQo+Pj4gKyAgICBzZXJpYWxANDAxYzgw
MDAgew0KPj4+ICsgICAgICAgIGNvbXBhdGlibGUgPSAibnhwLHMzMmcyLWxpbmZsZXh1YXJ0IiwN
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgImZzbCxzMzJ2MjM0LWxpbmZsZXh1YXJ0IjsNCj4+
PiArICAgICAgICByZWcgPSA8MHg0MDFDODAwMCAweDMwMDA+Ow0KPj4+ICsgICAgICAgIGludGVy
cnVwdHMgPSA8MCA4MiAxPjsNCj4+PiArICAgICAgICBjbG9ja3MgPSA8JmNsa3MgMTQ+LCA8JmNs
a3MgMTM+Ow0KPj4+ICsgICAgICAgIGNsb2NrLW5hbWVzID0gImxpbiIsICJpcGciOw0KPj4NCj4+
IEp1c3QgYWRkIHRoZSBjbG9ja3MgdG8gZXhpc3RpbmcgZXhhbXBsZS4gTm8gbmVlZCBmb3IgbmV3
IGV4YW1wbGUgZm9yDQo+PiBlYWNoIG5ldyBwcm9wZXJ0eS4NCj4+DQo+Pj4gKyAgICB9Ow0KPiAN
Cj4gVGhlIGV4aXN0aW5nIG5vZGUgcmVmZXJzIHRvIFMzMlYyMzQgd2hpY2ggZG9lcyBub3QgZXhw
b3NlIGFueSBjbG9jayANCj4gcHJvcGVydGllcyBpbiBpdHMgZGV2aWNlIHRyZWUuIEJlY2F1c2Ug
b2YgdGhpcywgSSBjb3VsZG7igJl0IGV4dGVuZCB0aGF0IA0KDQpZb3UganVzdCBzYWlkIFMzMlYy
MzQgaGFzIGNsb2Nrcy4uLg0KDQo+IGV4YW1wbGUgd2l0aCBjbG9ja3MgYW5kIGNsb2NrLW5hbWVz
LiBUaGUgYWRkaXRpb25hbCBleGFtcGxlIGlzIHRoZXJlIA0KPiBvbmx5IHRvIGlsbHVzdHJhdGUg
dGhlIFMzMkcyIGNhc2UsIHdoZXJlIHRoZSBjbG9ja3MgYXJlIHJlcXVpcmVkIGFuZCANCj4gYWN0
dWFsbHkgcHJlc2VudCBpbiB0aGUgZGV2aWNlIHRyZWUuIFNob3VsZCBJIHJlbW92ZSBpdD8NCj4g
DQo+IEJlc3QgcmVnYXJkcywNCj4gTGFyaXNhDQo+Pg0KPj4gQmVzdCByZWdhcmRzLA0KPj4gS3J6
eXN6dG9mDQo+IA0KDQoNCkJlc3QgcmVnYXJkcywNCktyenlzenRvZg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
