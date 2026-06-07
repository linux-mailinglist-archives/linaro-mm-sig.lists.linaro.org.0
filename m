Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nTLVHrclJWrfDwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 07 Jun 2026 10:03:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FAB64F0F0
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 07 Jun 2026 10:03:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=aE1SY8r9;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94AB540A3B
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Jun 2026 08:03:01 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C27143F6A0
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Jun 2026 08:02:50 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 12597439CB;
	Sun,  7 Jun 2026 08:02:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32A9B1F00893;
	Sun,  7 Jun 2026 08:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780819369;
	bh=743mquA8eUU6nXfjkJF2bDmypYOyMCpDQhfZo28zoc8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aE1SY8r9jkNr36mu/YYJAsW8bfiM7zw1BjgwI5hH9xzAqeIuvpxF5a5xHVcykvRhE
	 5rv4zb7l0fL/AVhPq95kRC309GpG2LYn9Tk0LfK0EftcbiMuP0mz7jwTgGkVUiskib
	 FsdBfriQjkjAOSaoOuF08eSIjgEI606M97YlP4uHMmQ2uHpzNScMRGEPVja8VRAJvY
	 PNxXin2R+XTuVfb00frIhDpIHsfV00jTfMFLAAGOUorTUFWPoAM25MVttHHa4l78o7
	 2BvhsE3Q4tELG3Xi5Wreq/lCyzxgWM6T3E3A4pyK+yA89GXQXm4j8JddNoJQxLgi0i
	 ymCQKza5mtMTA==
Date: Sun, 7 Jun 2026 11:02:44 +0300
From: Leon Romanovsky <leon@kernel.org>
To: David Hu <xuehaohu@google.com>
Message-ID: <20260607080244.GA327369@unreal>
References: <20260601200012.3872274-1-xuehaohu@google.com>
 <20260604094344.GB245424@unreal>
 <CAPd9Lg_JkRdtNa=n+HE9SP+NFCSB+X_97eiPBqiONVLwV0pHwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPd9Lg_JkRdtNa=n+HE9SP+NFCSB+X_97eiPBqiONVLwV0pHwQ@mail.gmail.com>
X-Spamd-Bar: ---
Message-ID-Hash: CV6G6WLTHUKSRQZYXLDJCGFMHZNPQ5WS
X-Message-ID-Hash: CV6G6WLTHUKSRQZYXLDJCGFMHZNPQ5WS
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CV6G6WLTHUKSRQZYXLDJCGFMHZNPQ5WS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[unreal:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1FAB64F0F0

T24gVGh1LCBKdW4gMDQsIDIwMjYgYXQgMDM6MzY6NDhQTSAtMDQwMCwgRGF2aWQgSHUgd3JvdGU6
DQo+IE9uIFRodSwgSnVuIDQsIDIwMjYgYXQgNTo0M+KAr0FNIExlb24gUm9tYW5vdnNreSA8bGVv
bkBrZXJuZWwub3JnPiB3cm90ZToNCj4gPg0KPiA+IE9uIE1vbiwgSnVuIDAxLCAyMDI2IGF0IDA4
OjAwOjEyUE0gKzAwMDAsIERhdmlkIEh1IHdyb3RlOg0KPiA+ID4gQEAgLTM2LDcgKzM2LDcgQEAg
c3RhdGljIHVuc2lnbmVkIGludCBjYWxjX3NnX25lbnRzKHN0cnVjdCBkbWFfaW92YV9zdGF0ZSAq
c3RhdGUsDQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBwaHlz
X3ZlYyAqcGh5c192ZWMsIHNpemVfdCBucl9yYW5nZXMsDQo+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHNpemVfdCBzaXplKQ0KPiA+ID4gIHsNCj4gPiA+IC0gICAgIHVuc2ln
bmVkIGludCBuZW50cyA9IDA7DQo+ID4gPiArICAgICBzaXplX3QgbmVudHMgPSAwOw0KPiA+ID4g
ICAgICAgc2l6ZV90IGk7DQo+ID4gPg0KPiA+ID4gICAgICAgaWYgKCFzdGF0ZSB8fCAhZG1hX3Vz
ZV9pb3ZhKHN0YXRlKSkgew0KPiA+ID4gQEAgLTUxLDYgKzUxLDkgQEAgc3RhdGljIHVuc2lnbmVk
IGludCBjYWxjX3NnX25lbnRzKHN0cnVjdCBkbWFfaW92YV9zdGF0ZSAqc3RhdGUsDQo+ID4gPiAg
ICAgICAgICAgICAgIG5lbnRzID0gRElWX1JPVU5EX1VQKHNpemUsIFVJTlRfTUFYKTsNCj4gPiA+
ICAgICAgIH0NCj4gPiA+DQo+ID4gPiArICAgICBpZiAobmVudHMgPiBVSU5UX01BWCkNCj4gPg0K
PiA+IEkgd291bGQgc3VnZ2VzdCB0byB1c2UgY2hlY2tfYWRkX292ZXJmbG93KCkgd2hpbGUgY2Fs
Y3VsYXRpbmcgbmVudHMNCj4gPiBpbnN0ZWFkIG9mIHRoaXMgY2hlY2suDQo+IA0KPiBIaSBMZW9u
LA0KPiANCj4gVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3LiBVc2luZyBgY2hlY2tfYWRkX292ZXJm
bG93KClgIGlzIGEgZ3JlYXQNCj4gc3VnZ2VzdGlvbiBhbmQgZGVmaW5pdGVseQ0KPiBjbGVhbmVy
IGZvciB0aGUgYWNjdW11bGF0aW9uIGxvb3AuIEknbGwgdXBkYXRlIHRoaXMgZm9yIHY2Lg0KPiAN
Cj4gPiA+IEBAIC0xMzMsNiArMTM3LDExIEBAIHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1Zl9waHlz
X3ZlY190b19zZ3Qoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPiA+ID4gICAg
ICAgfQ0KPiA+ID4NCj4gPiA+ICAgICAgIG5lbnRzID0gY2FsY19zZ19uZW50cyhkbWEtPnN0YXRl
LCBwaHlzX3ZlYywgbnJfcmFuZ2VzLCBzaXplKTsNCj4gPiA+ICsgICAgIGlmICghbmVudHMpIHsN
Cj4gPiA+ICsgICAgICAgICAgICAgcmV0ID0gLUVJTlZBTDsNCj4gPiA+ICsgICAgICAgICAgICAg
Z290byBlcnJfZnJlZV9zdGF0ZTsNCj4gPiA+ICsgICAgIH0NCj4gPg0KPiA+IFRlY2huaWNhbGx5
LCB0aGlzIGh1bmsgaXMgbm90IG5lY2Vzc2FyeSwgc2luY2Ugc2dfYWxsb2NfdGFibGUoKSB3aWxs
DQo+ID4gcmV0dXJuIC1FSU5WQUwgd2hlbiBuZW50cyA9PSAwLiBBdCBsZWFzdCwgdGhhdCBpcyB0
aGUgYmVoYXZpb3IgSSByZWxpZWQgb24uDQo+IA0KPiBJIG9yaWdpbmFsbHkgYWRkZWQgdGhpcyBl
eHBsaWNpdCBjaGVjayBpbiB2NSB0byBhZGRyZXNzIEphc29uJ3MNCj4gZmVlZGJhY2ssIGFuZCB0
byBtYWtlIHRoZQ0KPiBmYWlsdXJlIGV4cGxpY2l0IHJhdGhlciB0aGFuIHJlbHlpbmcgb24gYHNn
X2FsbG9jX3RhYmxlKClgIGZhaWxpbmcNCj4gc2lsZW50bHkgb24gYG5lbnRzPTBgLg0KDQpJIHBy
ZWZlciBleHBsaWNpdCBjaGVja3MsIGJ1dCBJIGFtIG5vdCBpbiBmYXZvciBvZiBkdXBsaWNhdGlu
ZyB0aGVtLg0KU2luY2Ugc2dfYWxsb2NfdGFibGUoKSBhbHJlYWR5IHZhbGlkYXRlcyB0aGlzIGNv
bmRpdGlvbiwgd2UgZG8gbm90IG5lZWQNCnRvIHJlcGVhdCB0aGUgc2FtZSBjaGVjayBpbiBkbWEt
YnVmLiBBIGNvbW1lbnQgc2hvdWxkIGJlIHN1ZmZpY2llbnQgdG8NCmluZm9ybSBmdXR1cmUgcmV2
aWV3ZXJzIHRoYXQgbmVudHMgPT0gMCBpcyBhbHJlYWR5IGhhbmRsZWQuDQoNClRoYW5rcw0KDQo+
IA0KPiBKYXNvbiwgZG8geW91IGhhdmUgYSBzdHJvbmcgcHJlZmVyZW5jZSBoZXJlPyBJIGFtIGhh
cHB5IHRvIGRyb3AgdGhlDQo+IGh1bmsgYW5kIHJlbHkgb24NCj4gYHNnX2FsbG9jX3RhYmxlKClg
IHJldHVybmluZyBgLUVJTlZBTGAgaWYgeW91IGFyZSBib3RoIGNvbWZvcnRhYmxlIHdpdGggdGhh
dC4NCj4gDQo+IFRoYW5rcywNCj4gRGF2aWQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
