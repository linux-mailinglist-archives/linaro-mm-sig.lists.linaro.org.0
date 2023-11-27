Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F277C7FA6CC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Nov 2023 17:48:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D769D40B8F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Nov 2023 16:48:20 +0000 (UTC)
Received: from ts201-smtpout75.ddc.teliasonera.net (ts201-smtpout75.ddc.teliasonera.net [81.236.60.180])
	by lists.linaro.org (Postfix) with ESMTP id 7D6A840AE3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Nov 2023 16:48:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shipmail.org header.s=mail header.b=GpjuXaEF;
	spf=pass (lists.linaro.org: domain of thomas_os@shipmail.org designates 81.236.60.180 as permitted sender) smtp.mailfrom=thomas_os@shipmail.org;
	dmarc=none
X-RG-Rigid: 6516966F025C2C69
X-Originating-IP: [81.229.72.127]
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddgleefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvffgnffktefuhgdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvfhfhjggtgfesthekredttdefjeenucfhrhhomhepvfhhohhmrghsucfjvghllhhsthhrnphmucdlkfhnthgvlhdmuceothhhohhmrghspghoshesshhhihhpmhgrihhlrdhorhhgqeenucggtffrrghtthgvrhhnpeelteegvedvjefgieejtdetffegteefteeuteeukeefvdfgtdeukefhkeefhedtjeenucfkphepkedurddvvdelrdejvddruddvjedpudefgedrudeluddrvdefvddrkeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepmhgrihhluddrshhhihhpmhgrihhlrdhorhhgpdhinhgvthepkedurddvvdelrdejvddruddvjedpmhgrihhlfhhrohhmpehthhhomhgrshgpohhssehshhhiphhmrghilhdrohhrghdpnhgspghrtghpthhtohephedprhgtphhtthhopeetlhgvgigrnhguvghrrdffvghutghhvghrsegrmhgurdgtohhmpdhrtghpthhtoheptghkohgvnhhighdrlhgvihgthhhtiihumhgvrhhkvghnsehgmhgrihhlrdgtohhmpdhrtghpthhtohepughrihdquggvvhgvlheslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghdprhgtphht
	thhopehlihhnrghrohdqmhhmqdhsihhgsehlihhsthhsrdhlihhnrghrohdrohhrghdprhgtphhtthhopehlihhnuhigqdhmvgguihgrsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from mail1.shipmail.org (81.229.72.127) by ts201-smtpout75.ddc.teliasonera.net (5.8.716)
        id 6516966F025C2C69; Mon, 27 Nov 2023 17:48:03 +0100
Received: from [192.168.0.209] (unknown [134.191.232.83])
	by mail1.shipmail.org (Postfix) with ESMTPSA id 30C7D3606B4;
	Mon, 27 Nov 2023 17:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
	t=1701103682; bh=N6spvplnQJmWTN5fRtgemnRL8z3vIYOHsD5+Cv5u6D0=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=GpjuXaEFuFfB6+KC218RvbWuVKolEo6TaHQV6IM3mNy0t278N8YUMgV2eEcL3mRwi
	 hut37fZdIq3+pVMZy1nDOsIDd3HP8JQfFEbAClG3kNbL6UWzbCPEjRHW9ihw1ELtWV
	 uVV0MBK0kRGtyZE31dr16L8NCeIdukeQewgqEq8k=
Message-ID: <8e434475-94f5-8e93-e0bd-3693e4587824@shipmail.org>
Date: Mon, 27 Nov 2023 17:47:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Alex Deucher <Alexander.Deucher@amd.com>
References: <20231115093035.1889-1-christian.koenig@amd.com>
 <e35e67dd-fd96-4ac5-a6ba-f351f12a146c@gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <e35e67dd-fd96-4ac5-a6ba-f351f12a146c@gmail.com>
X-Rspamd-Queue-Id: 7D6A840AE3
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[shipmail.org:s=mail];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[81.236.60.180:from];
	R_SPF_ALLOW(-0.20)[+ip4:81.236.60.128/26];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3301, ipnet:81.224.0.0/12, country:SE];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[shipmail.org];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[shipmail.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4JWZ63AXB4PKHZE4UXTNKWFAUZ54JGIS
X-Message-ID-Hash: 4JWZ63AXB4PKHZE4UXTNKWFAUZ54JGIS
X-MailFrom: thomas_os@shipmail.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix check in dma_resv_add_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4JWZ63AXB4PKHZE4UXTNKWFAUZ54JGIS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAxMS8yNy8yMyAxNDoyNCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gUGluZz8gQ2Fu
IEkgZ2V0IGFuIHJiIG9yIGFja2VkLWJ5IGZvciB0aGF0Pw0KPg0KPiBUaGFua3MsDQo+IENocmlz
dGlhbi4NCj4NCj4gQW0gMTUuMTEuMjMgdW0gMTA6MzAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmln
Og0KPj4gSXQncyB2YWxpZCB0byBhZGQgdGhlIHNhbWUgZmVuY2UgbXVsdGlwbGUgdGltZXMgdG8g
YSBkbWEtcmVzdiBvYmplY3QgYW5kDQo+PiB3ZSBzaG91bGRuJ3QgbmVlZCBvbmUgZXh0cmEgc2xv
dCBmb3IgZWFjaC4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiBGaXhlczogYTNmN2MxMGEyNjlkNSAoImRtYS1idWYv
ZG1hLXJlc3Y6IGNoZWNrIGlmIHRoZSBuZXcgZmVuY2UgaXMgDQo+PiByZWFsbHkgbGF0ZXIiKQ0K
Pj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyB2NS4xOSsNCg0KDQpSZXZpZXdlZC1ieTog
VGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KDQoN
Cj4+IC0tLQ0KPj4gwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfMKgIDIgKy0NCj4+IMKg
IGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmjCoCB8IDE1ICsrKysrKysrKysrKysrKw0KPj4gwqAg
MiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+Pg0KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMNCj4+IGluZGV4IDM4YjQxMTAzNzhkZS4uZWI4YjczMzA2NWIyIDEwMDY0NA0K
Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jDQo+PiBAQCAtMzAxLDcgKzMwMSw3IEBAIHZvaWQgZG1hX3Jlc3ZfYWRk
X2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCANCj4+IHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
LA0KPj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9yZXN2X2xpc3RfZW50cnkoZm9iaiwgaSwg
b2JqLCAmb2xkLCAmb2xkX3VzYWdlKTsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoKG9sZC0+
Y29udGV4dCA9PSBmZW5jZS0+Y29udGV4dCAmJiBvbGRfdXNhZ2UgPj0gdXNhZ2UgJiYNCj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX2lzX2xhdGVyKGZlbmNlLCBvbGQpKSB8
fA0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfaXNfbGF0ZXJfb3Jfc2Ft
ZShmZW5jZSwgb2xkKSkgfHwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5j
ZV9pc19zaWduYWxlZChvbGQpKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFf
cmVzdl9saXN0X3NldChmb2JqLCBpLCBmZW5jZSwgdXNhZ2UpOw0KPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChvbGQpOw0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
bGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+PiBpbmRleCBl
YmU3OGJkM2QxMjEuLmIzNzcyZWRjYTJlNiAxMDA2NDQNCj4+IC0tLSBhL2luY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLmgNCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+IEBAIC00
OTgsNiArNDk4LDIxIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfbGF0ZXIoc3Ry
dWN0IA0KPj4gZG1hX2ZlbmNlICpmMSwNCj4+IMKgwqDCoMKgwqAgcmV0dXJuIF9fZG1hX2ZlbmNl
X2lzX2xhdGVyKGYxLT5zZXFubywgZjItPnNlcW5vLCBmMS0+b3BzKTsNCj4+IMKgIH0NCj4+IMKg
ICsvKioNCj4+ICsgKiBkbWFfZmVuY2VfaXNfbGF0ZXJfb3Jfc2FtZSAtIHJldHVybiB0cnVlIGlm
IGYxIGlzIGxhdGVyIG9yIHNhbWUgDQo+PiBhcyBmMg0KPj4gKyAqIEBmMTogdGhlIGZpcnN0IGZl
bmNlIGZyb20gdGhlIHNhbWUgY29udGV4dA0KPj4gKyAqIEBmMjogdGhlIHNlY29uZCBmZW5jZSBm
cm9tIHRoZSBzYW1lIGNvbnRleHQNCj4+ICsgKg0KPj4gKyAqIFJldHVybnMgdHJ1ZSBpZiBmMSBp
cyBjaHJvbm9sb2dpY2FsbHkgbGF0ZXIgdGhhbiBmMiBvciB0aGUgc2FtZSANCj4+IGZlbmNlLiBC
b3RoDQo+PiArICogZmVuY2VzIG11c3QgYmUgZnJvbSB0aGUgc2FtZSBjb250ZXh0LCBzaW5jZSBh
IHNlcW5vIGlzIG5vdCANCj4+IHJlLXVzZWQgYWNyb3NzDQo+PiArICogY29udGV4dHMuDQo+PiAr
ICovDQo+PiArc3RhdGljIGlubGluZSBib29sIGRtYV9mZW5jZV9pc19sYXRlcl9vcl9zYW1lKHN0
cnVjdCBkbWFfZmVuY2UgKmYxLA0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmYyKQ0KPj4gK3sNCj4+ICvCoMKg
wqAgcmV0dXJuIGYxID09IGYyIHx8IGRtYV9mZW5jZV9pc19sYXRlcihmMSwgZjIpOw0KPj4gK30N
Cj4+ICsNCj4+IMKgIC8qKg0KPj4gwqDCoCAqIGRtYV9mZW5jZV9sYXRlciAtIHJldHVybiB0aGUg
Y2hyb25vbG9naWNhbGx5IGxhdGVyIGZlbmNlDQo+PiDCoMKgICogQGYxOsKgwqDCoCB0aGUgZmly
c3QgZmVuY2UgZnJvbSB0aGUgc2FtZSBjb250ZXh0DQo+DQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IExpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZw0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
