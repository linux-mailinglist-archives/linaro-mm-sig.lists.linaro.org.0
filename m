Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6AVeE6kXlmkSaAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Feb 2026 20:48:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B83EC159312
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Feb 2026 20:48:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D7443F8F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Feb 2026 19:48:55 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B0C4A3F7B2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 19:48:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BEZij971;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1D168442D3;
	Wed, 18 Feb 2026 19:48:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99622C116D0;
	Wed, 18 Feb 2026 19:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771444132;
	bh=Ayatm5KsyQmPxgzMzQ34taloQEfuU8tOmIF4DDu2FkA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BEZij971PNdAg5YhHOT9+/G9SfOJ2XGwhlLjR2EIkCYm/XLOpT7lluMwc0et4qnoJ
	 AW1SETTE8f0Xg+NMnnTAsktTZDMl9WQIrdTfASq7mbYVAG3fokUAvW9J8Gp4tofA9e
	 F9SKW1gz25NjtbQmHzdvpr2c8wnhpnLJepQl4sCC+kHPVIpCR7RQDYky8nQmpbxbLm
	 yET+DsXWhGLXKvpDx2eyqoFlqQH1jIi+69duWLba1taJ1q3QA7XxjOOy1KCvZyJ5BS
	 e2bgwmmUZ5vO+qEedLboQ1iw1rCRNK2CbjcUolkQOhO08yyedviqijiPR53C4hkjLa
	 DfnAGwE1Hyy3Q==
Message-ID: <1ac72f09-f079-4b43-9728-74c49f2e8bf1@kernel.org>
Date: Wed, 18 Feb 2026 20:48:44 +0100
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
 <b7adddfc-db7a-466d-a2e8-72bc6a87ae81@kernel.org>
 <69fafe15-a539-4429-ad15-3ec44babab28@oss.nxp.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <69fafe15-a539-4429-ad15-3ec44babab28@oss.nxp.com>
X-Spamd-Bar: ---
Message-ID-Hash: XRGR3JWEJMEJMUVVY77JSD6MHX4NJXDZ
X-Message-ID-Hash: XRGR3JWEJMEJMUVVY77JSD6MHX4NJXDZ
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Radu Pirea <radu-nicolae.pirea@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/13] dt-bindings: serial: fsl-linflexuart: add clock input properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XRGR3JWEJMEJMUVVY77JSD6MHX4NJXDZ/>
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
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
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
	NEURAL_HAM(-0.00)[-0.940];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B83EC159312
X-Rspamd-Action: no action

T24gMTgvMDIvMjAyNiAxNDo1NywgTGFyaXNhIElsZWFuYSBHcmlnb3JlIHdyb3RlOg0KPiBPbiAy
LzE4LzIwMjYgMzoyOSBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4+IE9uIDE4LzAy
LzIwMjYgMTQ6MjYsIExhcmlzYSBJbGVhbmEgR3JpZ29yZSB3cm90ZToNCj4+PiBPbiAyLzE2LzIw
MjYgNToxMCBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4+Pj4gT24gMTYvMDIvMjAy
NiAxNjowMiwgTGFyaXNhIEdyaWdvcmUgd3JvdGU6DQo+Pj4+PiBGcm9tOiBSYWR1IFBpcmVhIDxy
YWR1LW5pY29sYWUucGlyZWFAbnhwLmNvbT4NCj4+Pj4+DQo+Pj4+PiBBZGQgb3B0aW9uYWwgc3Vw
cG9ydCBmb3IgdGhlIHR3byBjbG9jayBpbnB1dHMgdXNlZCBieSB0aGUgTElORmxleEQgVUFSVA0K
Pj4+Pj4gY29udHJvbGxlcjoNCj4+Pj4+IC0gImxpbiI6IExJTl9CQVVEX0NMSw0KPj4+Pj4gLSAi
aXBnIjogTElORkxFWERfQ0xLDQo+Pj4+Pg0KPj4+Pj4gVGhlIGNsb2NrIGlucHV0cyBhcmUga2Vw
dCBvcHRpb25hbCB0byBtYWludGFpbiBjb21wYXRpYmlsaXR5IHdpdGggdGhlDQo+Pj4+PiBTMzJW
MjM0IHBsYXRmb3JtLg0KPj4+Pg0KPj4+PiBEb2VzIFMzMlYyMzQgaGF2ZSB0aGUgY2xvY2tzPyBJ
IGRvbid0IHVuZGVyc3RhbmQgdGhlICJtYWludGFpbg0KPj4+PiBjb21wYXRpYmlsaXR5IiBpbiB0
aGlzIGNvbnRleHQuIEVpdGhlciB5b3UgaGF2ZSBvciB5b3UgaGF2ZSBub3QgY2xvY2tzLA0KPj4+
PiB3aGljaCBzaG91bGQgYmUgZXhwcmVzc2VkIGluIHNjaGVtYSAoOiBmYWxzZSwgc2VlIGV4YW1w
bGUgc2NoZW1hKS4NCj4+Pj4NCj4+PiBIZWxsbyBLcnp5c3p0b2YsDQo+Pj4NCj4+PiBUaGFua3Mg
Zm9yIHBvaW50aW5nIHRoaXMgb3V0ISBJIHdpbGwgdXBkYXRlIGJvdGggdGhlIHNjaGVtYSBhbmQg
dGhlDQo+Pj4gY29tbWl0IGRlc2NyaXB0aW9uLg0KPj4+IFMzMlYyMzQgZG9lcyBub3QgZXhwb3Nl
IHRoZXNlIGNsb2NrcyBpbiBpdHMgZGV2aWNlIHRyZWXigJRvbiB0aGlzIHBsYXRmb3JtDQo+Pj4g
dGhlIExJTkZsZXhEIGNsb2NrcyBhcmUgc2V0IHVwIGFuZCBlbmFibGVkIGJ5IFXigJFCb290LCBz
byB0aGV5IGFyZSBub3QNCj4+PiBhdmFpbGFibGUgdG8gdGhlIGtlcm5lbC4NCj4+DQo+PiBTbyB0
aGVyZSBhcmUgY2xvY2tzLiBEVFMgaXMgYmVpbmcgdXNlZCBieSBib290bG9hZGVyLCBzbyBob3cg
Ym9vdGxvYWRlcg0KPj4gaXMgZ29pbmcgdG8gc2V0IHVwIGNsb2NrcyBmb3IgUzMyVjIzNCBpZiBu
byBvbmUgcHJvdmlkZXMgdGhlbT8NCj4+DQo+PiBUaGlzIGxvb2tzIGxpa2UgYnVnZ3kvaW5jb21w
bGV0ZSBhcHByb2FjaCwgYWx0aG91Z2ggSSB1bmRlcnN0YW5kIHRoYXQNCj4+IHRoZSBvcmlnaW5h
bCBiaW5kaW5nIGhhZCB0aGUgaXNzdWUuDQo+Pg0KPiBJbmRlZWQsIEkgYWxzbyBiZWxpZXZlIHRo
ZSBiaW5kaW5nIGlzIG5vdCBmdWxseSBhY2N1cmF0ZSBvbiBTMzJWMjM0LiBBcyANCj4gSSBtZW50
aW9uZWQgZWFybGllciwgdGhlIExJTkZsZXhEIGNsb2NrcyBhcmUgbm90IG1hbmFnZWQgYnkgTGlu
dXggb24gDQo+IHRoaXMgcGxhdGZvcm0uIFRoZXksIGFsb25nIHdpdGggc2V2ZXJhbCBvdGhlciBj
bG9ja3MsIGFyZSB1c3VhbGx5IA0KPiBpbml0aWFsaXplZCBieSBV4oCRQm9vdCwgYW5kIExpbnV4
IGRvZXMgbm90IGhhbmRsZSB0aGVtLiBUaGF0IGlzIGxpa2VseSANCj4gdGhlIHJlYXNvbiB0aGV5
IHdlcmUgb21pdHRlZCBmcm9tIHRoZSBTMzJWMjM0IGJpbmRpbmcuDQo+IEnigJltIHdpbGxpbmcg
dG8gY29ycmVjdCB0aGlzIGZvciB0aGUgUzMyVjIzNCBjb21wYXRpYmxlIGJ5IG1ha2luZyB0aGF0
IA0KPiBwcm9wZXJ0eSBvcHRpb25hbCwgc28gd2UgZG9u4oCZdCBicmVhayBjb21wYXRpYmlsaXR5
Lg0KPiBGb3IgUzMyRywgSSB3b3VsZCBwcmVmZXIgdG8gYXZvaWQgcmVwZWF0aW5nIHRoZSBzYW1l
IG92ZXJzaWdodCB3ZSBoYWQgb24gDQo+IFMzMlYyMzQgYW5kIG1ha2UgdGhlIHByb3BlcnR5IHJl
cXVpcmVkLCBzaW5jZSB0aGUgSVAsIGFzIHlvdSBjb3JyZWN0bHkgDQo+IHBvaW50ZWQgb3V0LCBk
b2VzIGhhdmUgZGVkaWNhdGVkIGNsb2NrIGlucHV0cy4NCj4gDQo+IEhvdyB3b3VsZCB5b3UgYXBw
cm9hY2ggdGhpcz8NCg0KU28gdGhlIG5ldyBkZXZpY2Ugc2hvdWxkIHJlcXVpcmUgY2xvY2tzLCB3
aGljaCBjYW4gYmUgbGVmdCBvcHRpb25hbCBmb3INCnRoZSBvbGQgb25lIHdpdGggZXhwbGFuYXRp
b24gaW4gdGhlIGNvbW1pdCBtc2cuIExpbnV4IGlzIG5vdCB0aGUgb25seQ0KY29uc3VtZXIgb2Yg
YmluZGluZ3MgYW5kIERUUy4NCg0KDQoNCkJlc3QgcmVnYXJkcywNCktyenlzenRvZg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
