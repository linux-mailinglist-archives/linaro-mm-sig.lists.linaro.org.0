Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF0E6B4DAF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Mar 2023 17:55:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8086F3F496
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Mar 2023 16:55:53 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lists.linaro.org (Postfix) with ESMTPS id 1F3A63F496
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Mar 2023 16:55:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=PbIPMIR1;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 32AGsv0Y113532;
	Fri, 10 Mar 2023 10:54:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678467297;
	bh=rZ1TuA9PdwIqFv9PvRAEz3S9AdKRMMl+xNizKrzmmLk=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=PbIPMIR1IXX8yGepL2NHxfC/JVoEl3zJ3At/oXcIoIcSL0PAyOec/ZxpnhEnMnghv
	 bOUui4t2BcOmo7kv4xi7LBiRGnLQn4EZE7GlEa0MuZr6A2qYQZ+burmribXCCKr1ns
	 ZwplzSJkEnONzM4aTg9PoYewRnawBE5pJiF0QYjI=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 32AGsvoC013877
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 10 Mar 2023 10:54:57 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Fri, 10
 Mar 2023 10:54:57 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Fri, 10 Mar 2023 10:54:57 -0600
Received: from [128.247.81.39] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 32AGsvH9037518;
	Fri, 10 Mar 2023 10:54:57 -0600
Message-ID: <8f8f131d-437c-6bf8-9e44-1c3a6c01e68f@ti.com>
Date: Fri, 10 Mar 2023 10:54:57 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: John Stultz <jstultz@google.com>
References: <20230306165143.1671-1-afd@ti.com>
 <CANDhNCrzi+9BszTj+9v9t6cHOcxv=4C1yQZnZZ-_7FWoxwAd5A@mail.gmail.com>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <CANDhNCrzi+9BszTj+9v9t6cHOcxv=4C1yQZnZZ-_7FWoxwAd5A@mail.gmail.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1F3A63F496
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[ti.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: 76SSNBORWWLCYIG4NCYPMZLQ3G2P5IFD
X-Message-ID-Hash: 76SSNBORWWLCYIG4NCYPMZLQ3G2P5IFD
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: cma_heap: Check for device max segment size when attaching
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/76SSNBORWWLCYIG4NCYPMZLQ3G2P5IFD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMy82LzIzIDg6NDggUE0sIEpvaG4gU3R1bHR6IHdyb3RlOg0KPiBPbiBNb24sIE1hciA2LCAy
MDIzIGF0IDg6NTLigK9BTSBBbmRyZXcgRGF2aXMgPGFmZEB0aS5jb20+IHdyb3RlOg0KPj4NCj4+
IEFsdGhvdWdoIHRoZXJlIGlzIHVzdWFsbHkgbm90IHN1Y2ggYSBsaW1pdGF0aW9uIChhbmQgd2hl
biB0aGVyZSBpcyBpdCBpcw0KPj4gb2Z0ZW4gb25seSBiZWNhdXNlIHRoZSBkcml2ZXIgZm9yZ290
IHRvIGNoYW5nZSB0aGUgc3VwZXIgc21hbGwgZGVmYXVsdCksDQo+PiBpdCBpcyBzdGlsbCBjb3Jy
ZWN0IGhlcmUgdG8gYnJlYWsgc2NhdHRlcmxpc3QgZWxlbWVudCBpbnRvIGNodW5rcyBvZg0KPj4g
ZG1hX21heF9tYXBwaW5nX3NpemUoKS4NCj4gDQo+IEhleSBBbmRyZXchDQo+ICAgIFRoYW5rcyBm
b3Igc2VuZGluZyB0aGlzIG91dCENCj4gDQo+IFNvICp3aHkqIGlzIGl0ICJjb3JyZWN0IGhlcmUg
dG8gYnJlYWsgc2NhdHRlcmxpc3QgZWxlbWVudCBpbnRvIGNodW5rcw0KPiBvZiAgZG1hX21heF9t
YXBwaW5nX3NpemUoKS4iID8NCj4gDQoNCkdvb2QgcXVlc3Rpb24sIEknbSBub3QgMTAwJSBzdXJl
IG9uIHRoZSBiYWNrZ3JvdW5kIG15c2VsZi4gSXQgc2VlbXMNCnNpbmNlIHNvbWUgZGV2aWNlcyBo
YXZlIHJlc3RyaWN0aW9ucyBvbiBob3cgbGFyZ2UgYSBtYXBwaW5nIHRoZXkgY2FuDQpoYW5kbGUg
aW4gYSBzaW5nbGUgcnVuLCB3ZSBzaG91bGQgbm90IGhhbmQgb3V0IHNpbmdsZSBzY2F0dGVybGlz
dA0KZWxlbWVudHMgbG9uZ2VyIHRoYW4gdGhhdC4NCg0KSXQgaXMgc3RpbGwgYSBjb250aWd1b3Vz
IGJ1ZmZlciwgYnV0IHNvbWUgZHJpdmVycyBmb3JnZXQgdG8gc2V0IHRoZWlyDQptYXBwaW5nIGxp
bWl0cyBhbmQgYWxzbyBvbmx5IGNoZWNrIHRoZSBudW1iZXIgb2YgZWxlbWVudHMgPT0gMSB0byBk
ZXRlcm1pbmUNCmlmIGEgc2cgaXMgY29udGlndW91cyAod2hpY2ggaXMgbm90IGNvcnJlY3QgYXMg
dGhlcmUgaXMgbm8gcnVsZSB0aGF0DQpjb250aWd1b3VzIHJ1bnMgbXVzdCBiZSBtZXJnZWQgaW50
byBhIHNpbmdsZSBzY2F0dGVybGlzdCkuIEZvciB0aG9zZQ0KZHJpdmVyIHRoaXMgd291bGQgYmUg
YW4gaXNzdWUgKEkndmUgb25seSBmb3VuZCBvbmUgc3VjaCBjYXNlIGluLXRyZWUgYW5kDQpzZW50
IGEgZml4LCBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjIwODI1MTYyNjA5LjE0MDc2
LTEtYWZkQHRpLmNvbS8pDQoNCj4+IFRoaXMgbWlnaHQgY2F1c2Ugc29tZSBpc3N1ZXMgZm9yIHVz
ZXJzIHdpdGggbWlzYmVoYXZpbmcgZHJpdmVycy4gSWYNCj4+IGJpc2VjdGluZyBoYXMgbGFuZGVk
IHlvdSBvbiB0aGlzIGNvbW1pdCwgbWFrZSBzdXJlIHlvdXIgZHJpdmVycyBib3RoIHNldA0KPj4g
ZG1hX3NldF9tYXhfc2VnX3NpemUoKSBhbmQgYXJlIGNoZWNraW5nIGZvciBjb250aWd1b3VzbmVz
cyBjb3JyZWN0bHkuDQo+IA0KPiBXaHkgaXMgdGhpcyBjaGFuZ2Ugd29ydGggdGhlIHJpc2s/IChJ
ZiB0aGlzIGlzIHJlYWxseSBsaWtlbHkgdG8gYnJlYWsNCj4gZm9sa3MsIHNob3VsZCB3ZSBtYXli
ZSBwcm92aWRlIHdhcm5pbmdzIGluaXRpYWxseSBpbnN0ZWFkPyBNYXliZQ0KPiBmYWxsaW5nIGJh
Y2sgdG8gdGhlIG9sZCBjb2RlIGlmIHdlIGNhbiBjYXRjaCB0aGUgZmFpbHVyZT8pDQo+IA0KPiBJ
IGRvbid0IHJlYWxseSBvYmplY3QgdG8gdGhlIGNoYW5nZSwganVzdCB3YW50IHRvIG1ha2Ugc3Vy
ZSB0aGUgY29tbWl0DQo+IG1lc3NhZ2UgaXMgbW9yZSBjbGVhciBvbiB3aHkgd2Ugc2hvdWxkIG1h
a2UgdGhpcyBjaGFuZ2UsIHdoYXQgdGhlDQo+IGJlbmVmaXQgd2lsbCBiZSBhbG9uZyB3aXRoIHRo
ZSBwb3RlbnRpYWwgZG93bnNpZGVzLg0KPiANCg0KSSdtIG5vdCBzdXJlIGl0IGlzIHdvcnRoIHRo
ZSByaXNrIHRvZGF5IGVpdGhlciwgYnV0IGZpZ3VyZWQgdGhpcyBiZWluZyBhDQp5b3VuZyBlbm91
Z2ggZXhwb3J0ZXIgaXQgY291bGQgYmUgYSBnb29kIHNwb3QgdG8gc3RhcnQgd2l0aCBmb3IgZXhw
b3NpbmcNCm1pc2JlaGF2aW5nIGRyaXZlcnMgdnMgc29tZSBsZWdhY3kgR1BVIGRyaXZlciBleHBv
cnRlci4gUGx1cyBiZXR0ZXIgdG8NCm1ha2UgdGhpcyBjaGFuZ2Ugbm93IHJhdGhlciB0aGFuIGxh
dGVyIGluIGFueSBjYXNlLg0KDQpJIGRvbid0IGhhdmUgYW55IHN0cm9uZyByZWFzb24gZm9yIHRo
aXMgeWV0IHRob3VnaCwgc28gSSdtIGZpbmQgd2l0aA0KanVzdCBjb25zaWRlcmluZyB0aGlzIHBh
dGNoIGFuIFJGQyBmb3Igbm93Lg0KDQpUaGFua3MsDQpBbmRyZXcNCg0KPiB0aGFua3MNCj4gLWpv
aG4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
