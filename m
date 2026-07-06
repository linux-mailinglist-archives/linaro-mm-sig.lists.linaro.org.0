Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sX8fJmlwVmpU5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5E77575D2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=collabora.com header.s=zohomail header.b=YslEi+dT;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=collabora.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32623401D8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:22:48 +0000 (UTC)
Received: from sender4-op-o11.zoho.com (sender4-op-o11.zoho.com [136.143.188.11])
	by lists.linaro.org (Postfix) with ESMTPS id F27B13F7D3
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2026 13:07:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1783343253; cv=none;
	d=zohomail.com; s=zohoarc;
	b=IE14LecyLTUD2lB/rBI/sQhw9JBIkK+/rC9JEiYegJEji4MhbEKA/hjc5n77dQrUvSPeRvymwPEJmld5wm7FOvD4Z+MlulH0VRCNHUttb7gdHb0W1/JgtEHiA5g9WCk39Cz7J24S2HmN5LvOyjwHyF5xPr+OMpGYaR8Rdi24IjU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1783343253; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=FMhFvIHqiFILIt2aMFGo+C0rD75x3q8QTjXzqy1UcXQ=;
	b=gdbWFRB9Z+gyfIwYta2iE7fxgB47WxzAO1LCZyiTWCZxU5GxbP7baazddwpnBDwm7bnmjzWoh25cBtw5RpMHV99koLtDXT1Rg0LZdYdZOE+MNSIBYnYq99n6jgbCWswzdG8qhf64vSjjBmcUOVYrXfJZJWi6AF84RJguwy5643I=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=daniel.almeida@collabora.com;
	dmarc=pass header.from=<daniel.almeida@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783343253;
	s=zohomail; d=collabora.com; i=daniel.almeida@collabora.com;
	h=Content-Type:Mime-Version:Subject:Subject:From:From:In-Reply-To:Date:Date:Cc:Cc:Content-Transfer-Encoding:Message-Id:Message-Id:References:To:To:Reply-To;
	bh=FMhFvIHqiFILIt2aMFGo+C0rD75x3q8QTjXzqy1UcXQ=;
	b=YslEi+dTSX0IlNbI9il2u9Yi6zXml0wF5x/6fFpVl/9w/1+CIhvK0D3QKNV4ggM3
	e2bmLV/Fi1c9IljRZ+VVdC05nYbHDTOlvoeOqRZxftJp4lsyB2VmX1L6rZsrJZR4U7h
	/xC6OafhWGrHde+rcf35M+tBLJj6KgPnljltiYEc=
Received: by mx.zohomail.com with SMTPS id 1783343250580972.9098538800296;
	Mon, 6 Jul 2026 06:07:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
From: Daniel Almeida <daniel.almeida@collabora.com>
In-Reply-To: <20260703073141.3962604-2-phasta@kernel.org>
Date: Mon, 6 Jul 2026 10:07:10 -0300
Message-Id: <B9872CAD-C4F4-40C6-86FF-26559732419F@collabora.com>
References: <20260703073141.3962604-2-phasta@kernel.org>
To: Philipp Stanner <phasta@kernel.org>
X-Mailer: Apple Mail (2.3826.700.81)
X-ZohoMailClient: External
X-Spamd-Bar: ----
X-MailFrom: daniel.almeida@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6MXWW3V7SLSWVGCTSB4N5NLRADSEE2LT
X-Message-ID-Hash: 6MXWW3V7SLSWVGCTSB4N5NLRADSEE2LT
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:29 +0000
CC: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?utf-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Asahi Lina <lina+kernel@asahilina.net>, Burak Emir <bqe@google.com>, Lorenzo Stoakes <ljs@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Tamir Duberstein <tamird@kernel.org>, Mirko Adzic <adzicmirko97@gmail.com>, Alistair Francis <alistair.francis@wdc.com>, =?utf-8?Q?Onur_=C3=96zkan?= <work@onurozkan.dev>, Shankari Anand <shankari.ak0208@gmail.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linu
 x-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/5] rust / dma_buf: Add abstractions for dma_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MXWW3V7SLSWVGCTSB4N5NLRADSEE2LT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[196];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:gregkh@linuxfoundation.org,m:lina+kernel@asahilina.net,m:bqe@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:acourbot@nvidia.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:work@onurozkan.dev,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linu x-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[daniel.almeida@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,linuxfoundation.org,asahilina.net,nvidia.com,gmail.com,wdc.com,onurozkan.dev,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.almeida@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	APPLE_MAILER_COMMON(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B5E77575D2

DQoNCj4gT24gMyBKdWwgMjAyNiwgYXQgMDQ6MzEsIFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtl
cm5lbC5vcmc+IHdyb3RlOg0KPiANCj4gQ2hhbmdlcyBzaW5jZSB2NDoNCj4gIC0gRml4IGFuIHVu
aW5pdGlhbGl6ZWQgbWVtb3J5IGJ1ZyBmb3IgRmVuY2VDYlJlZ2lzdHJhdGlvbiB3aXRoDQo+ICAg
IE1hbnVhbGx5RHJvcC4NCj4gIC0gUmV0dXJuIEZlbmNlQ3R4IGFzIGltcGwgUGluSW5pdA0KPiAg
LSBNYWtlIEZlbmNlQ3R4IHJldHVybiBhbiBpbXBsIFBpbkluaXQ8VCwgRXJyb3I+IChEYW5pbG8p
DQo+ICAtIFJlZm9ybWF0IHNvbWUgY29tbWVudHMNCj4gIC0gQWRqdXN0IHRoZSBkb2N1IGZvciBy
Y3VfYmFycmllcigpLCBzbyB0aGF0IGl0IG1hdGNoZXMgdGhlIEMgc2lkZSdzDQo+ICAgIGRvY3Ug
YW5kIG91ciBkb2N1IGZvciByY3U6OnN5bmNocm9uaXplX3JjdSgpLg0KPiANCj4gQ2hhbmdlcyBz
aW5jZSB2MzoNCj4gIC0gQWRkIGEgRklYTUUgZm9yIGFuIGVuY291bnRlcmVkIFJ1c3QgY29tcGls
ZXIgYnVnLiAoR2FyeSkNCj4gIC0gQWRkIG5ldyBSdXN0IGZpbGVzIGFsc28gdG8gRFJNIGRyaXZl
cnMgJiBjb21tb24gaW5mcmFzdHJ1Y3R1cmUNCj4gICAgTUFJTlRBSU5FUlMgZmlsZS4gKERhbmls
bykNCj4gIC0gUmVwb3NpdGlvbiBFQ0FOQ0VMRUQgZXJyb3IgY29kZS4gKE1pZ3VlbCkNCj4gIC0g
UmVwbGFjZSByZWZjb3VudGVkIEZlbmNlQ3R4IGluIERyaXZlckZlbmNlRGF0YSB3aXRoIGEgcmVm
ZXJlbmNlIHBsdXMNCj4gICAgbGlmZSB0aW1lLiAoQm9yaXMpDQo+ICAtIFJlLWFkZCByY3VfYmFy
cmllcigpIHBhdGNoLCBzaW5jZSB3ZSBub3cgY2FuIHVzZSBpdCBmb3IgZHJvcHBpbmcgdGhlDQo+
ICAgIGZlbmNlIGNvbnRleHQuIChEYW5pbG8pDQo+ICAtIEFkZCBmb3Jnb3R0ZW4gUi1iIGZyb20g
QWxpY2UsIGFuZCBBY2tzIGZvciBNQUlOVEFJTkVSUyBmcm9tDQo+ICAgIENocmlzdGlhbiBhbmQg
U3VtaXQuDQo+IA0KPiBDaGFuZ2VzIHNpbmNlIHYyOg0KPiAgLSBEb24ndCBkcm9wIERyaXZlckZl
bmNlRGF0YSBhcyBhIHdob2xlLCBidXQgb25seSB0aGUgbWVtYmVycyB3ZQ0KPiAgICByZWFsbHkg
d2FudCB0byBkcm9wLiBHaXZlcyBtb3JlIHJvYnVzdG5lc3MuIChHYXJ5KS4NCj4gIC0gQnJlYWsg
YXBhcnQgbGFyZ2UgcGluX2luaXRfZnJvbV9jbG9zdXJlKCkuIChEYW5pbG8sIE9udXIpDQo+ICAt
IFJlbW92ZSByY3VfYmFycmllcigpIGFuZCBzeW5jaHJvbml6ZV9yY3UoKSBmcm9tIEZlbmNlQ3R4
Ojpkcm9wKCkuDQo+ICAgIEZlbmNlQ3R4IG1pZ2h0IGRyb3AgaW4gYXRvbWljIGNvbnRleHQsIHdo
ZXJlIHlvdSBtdXN0IG5vdCBwZXJmb3JtDQo+ICAgIHRob3NlIG9wZXJhdGlvbnMuIFdpdGggdGhl
IGN1cnJlbnQgd2F5IEMgZG1hX2ZlbmNlIGlzIGRlc2lnbmVkLCB0aGUNCj4gICAgZHJpdmVyIG11
c3Qgd2FpdCBmb3IgYSBncmFjZSBwZXJpb2QgbWFudWFsbHkgdW50aWwgaXQgdW5sb2Fkcy4NCj4g
IC0gUmVwYWlyIHRoZSBEcml2ZXJGZW5jZUJvcnJvdyBpbXBsZW1lbnRhdGlvbiwgcHJvcGVybHkg
aW5qZWN0aW5nIGENCj4gICAgbGlmZSB0aW1lIGludG8gaXQuIChEYW5pbG8pDQo+ICAtIEZpeCBt
ZW1vcnkgbGF5b3V0IGJ1ZyBmb3IgcmN1X2hlYWQuIChPbnVyKQ0KPiAgLSBEcm9wIFJDVSBwYXRj
aGVzLCBzaW5jZSB0aGlzIHNlcmllcyBkb2Vzbid0IG5lZWQgdGhlbSBhbnltb3JlLg0KPiANCj4g
Q2hhbmdlcyBzaW5jZSB2MToNCj4gIC0gUmVtb3ZlIHVubmVjZXNzYXJ5IG11dGFibGUgcmVmZXJl
bmNlcyAoQWxpY2UpDQo+ICAtIFNwbGl0IHVwIHVuc2FmZSBjb21tZW50cyB3aGVyZSBwb3NzaWJs
ZSAoRGFuaWxvKQ0KPiAgLSBSZW1vdmUgUGhhbnRvbURhdGEgKyBpbXBsZW1lbnQgRmVuY2VDdHgg
b3BzIHRyYWl0IChCb3JpcykNCj4gIC0gQ29uc2lzdGVudGx5IGNhbGwgRmVuY2VDdHggZ2VuZXJp
YyBkYXRhIGBUYC4gRmVuY2VEYXRhVHlwZSBpcw0KPiAgICBkZXJpdmVkIGZyb20gdGhhdC4gKEJv
cmlzKQ0KPiAgLSBBZGQgYWJzdHJhY3Rpb25zIGZvciBjYWxsX3JjdSgpIGFuZCBzeW5jaHJvbml6
ZV9yY3UoKSAoRGFuaWxvKQ0KPiAgLSBBZGQgRUNBTkNFTEVEIGVycm9yIGNvZGUgaW4gUnVzdCAo
QWxpY2UpDQo+ICAtIFJlbW92ZSB0aGUgcmN1X2JhcnJpZXIoKSBmcm9tIEZlbmNlQ3R4Ojpkcm9w
KCkg4oCTIGJlY2F1c2Ugd2Ugbm93IHVzZQ0KPiAgICBjYWxsX3JjdSgpLCB0aGVyZSBjYW4gYmUg
bm8gVUFGIGFjY2VzcyB0byB0aGUgRmVuY2VDdHggYW55bW9yZS4gSW4NCj4gICAgYW55IGNhc2Us
IGl0IGlzIGlsbGVnYWwgdG8gdXNlIGVpdGhlciBjYWxsX3JjdSgpIG9yDQo+ICAgIHN5bmNocm9u
aXplX3JjdSgpIGluIEZlbmNlQ3R4Ojpkcm9wKCksIGJlY2F1c2Ugb3VyIG5ldw0KPiAgICBkcm9w
X2RyaXZlcl9mZW5jZV9kYXRhKCkgY2FuIHJ1biBpbiBhdG9taWMgY29udGV4dCBhbmQgbWlnaHQg
cHV0IHRoZQ0KPiAgICBsYXN0IGZlbmNlX2N0eCByZWZlcmVuY2UuDQo+ICAgIFNvIHdlIG5vdyBv
bmx5IGhhdmUgdG8gZ3VhcmQgYWdhaW5zdCBtb2R1bGUgdW5sb2FkLCB3aGljaCBpdCBzZWVtcw0K
PiAgICBlaXRoZXIgdGhlIGRyaXZlciBvciBSdXN0IGRyaXZlci1jb3JlIC8gbW9kdWxlIHVubG9h
ZCBpbmZyYXN0cnVjdHVyZQ0KPiAgICBtdXN0IHNvbHZlLg0KPiAgLSBNaW5vciBmb3JtYXR0aW5n
IGV0Yy4gY2hhbmdlcw0KPiAgLSBBZGQgQyBoZWxwZXJzIHRvIE1BSU5UQUlORVJTLiAoRGFuaWxv
KQ0KPiAgLSBFbnN1cmUgdGhhdCBgRmVuY2U6OmlzX3NpZ25hbGVkKClgIGlzIGZ1bGx5IHN5bmNo
cm9uaXplZCwgaS5lLiwgYWxsDQo+ICAgIGNhbGxiYWNrcyByZWFsbHkgaGF2ZSBydW4uIFNlZSBb
MV0gYW5kIFsyXS4gKE15c2VsZiwgQ2hyaXN0aWFuDQo+ICAgIEvDtm5pZykNCj4gDQo+IENoYW5n
ZXMgc2luY2UgdGhlIFJGQ3M6DQo+ICAtIEluY2x1ZGUgc3VwcG9ydCBmb3IgRm9yZWlnbk93bmFi
bGUgZm9yIEFSZWYsIHNvIHRoYXQgYSBGZW5jZSBjYW4gYmUNCj4gICAgc3R1ZmZlZCBpbnRvIGFu
IFhBcnJheSBldCBhbC4gKENvZGUgYnkgRGFuaWxvKQ0KPiAgLSBJbXBsZW1lbnQgRm9yZWlnbk93
bmFibGUgKHdpdGggbmV3IGJvcnJvdyB0eXBlKSBmb3IgRHJpdmVyRmVuY2UsIHNvDQo+ICAgIHRo
YXQgaXQgY2FuIGJlIHN0dWZmZWQgaW50byBhbiBYQXJyYXkuDQo+ICAtIEluY2x1ZGUgdGhlIHJj
dTo6UmN1Qm94IGRhdGEgdHlwZSB0byBkZWZlciBkcm9wcGluZyBkYXRhIHdpdGggUkNVDQo+ICAg
IChDb2R5IGJ5IEFsaWNlKQ0KPiAgLSBQb3J0IERtYUZlbmNlIHRvIFJjdUJveCB0byBtYWtlIFVB
RiBidWdzIHRocm91Z2ggbGF0ZXIsIG5ldyBkbWFfZmVuY2UNCj4gICAgY2FsbGJhY2tzIChiYWNr
ZW5kX29wcykgaW1wb3NzaWJsZS4NCj4gIC0gRm9yY2UgdXNlcnMgdG8gcGFzcyB0aGVpciBmZW5j
ZSBkYXRhIGluIGFuIFJjdUJveCAob3IgaGF2ZSBpdCBub3QNCj4gICAgbmVlZCBkcm9wKCkpIHRo
cm91Z2ggYSBTZWFsZWQgdHJhaXQuDQo+ICAtIERvY3VtZW50IHRoZSBydWxlcyBmb3IgdGhlIHVz
ZXIncyBEcml2ZXJGZW5jZTo6ZGF0YSdzIGRyb3ANCj4gICAgaW1wbGVtZW50YXRpb24gdmVyeSBj
bGVhcmx5IChkZWFkbG9jayBkYW5nZXIpLg0KPiAgLSBydXN0Zm10LCBDbGlwcHkuDQo+ICAtIFZh
cmlvdXMgc3R5bGUgc3VnZ2VzdGlvbnMsIHNhZmV0eSBjb21tZW50cywgZXRjLiAow5ZudXIpDQo+
ICAtIEFkZCBfX3J1c3RfaGVscGVyIHByZWZpeCB0byBoZWxwZXIgZnVuY3Rpb25zLiAow5ZudXIp
DQo+IA0KPiBDaGFuZ2VzIGluIFJGQyB2MzoNCj4gIC0gT21pdCBKb2JRdWV1ZSBwYXRjaGVzIGZv
ciBub3cNCj4gIC0gQ29tcGxldGVseSByZWRlc2lnbiB0aGUgbWVtb3J5IGxheW91dDogSW5zdGVh
ZCBvZiBhIEZlbmNlDQo+ICAgIHJlZmNvdW50aW5nIGEgRHJpdmVyRmVuY2UsIGJvdGggbm93IGxp
dmUgaW4gdGhlIHNhbWUgYWxsb2NhdGlvbiB0bw0KPiAgICBhbGxvdyBmb3IgZnV0dXJlIHN1cHBv
cnQgdGhlIGRtYV9mZW5jZSBiYWNrZW5kX29wcyBjYWxsYmFja3Mgd2hpY2gNCj4gICAgbmVlZCB0
byBkbyBjb250YWluZXJfb2YuIChtb3N0bHkgQm9yaXMncyBmZWVkYmFjaykNCj4gIC0gQWxsb3cg
Zm9yIHByZS1hbGxvY2F0aW5nIGZlbmNlcyB0byBhdm9pZCBkZWFkbG9ja3Mgd2hlbiBzdWJtaXR0
aW5nDQo+ICAgIGpvYnMgdG8gYSBHUFUuIChCb3JpcykNCj4gIC0gU2ltdWx0YW5lb3VzbHksIGFs
bG93IGZvciBwcmUtcHJlcGFyaW5nIGZlbmNlIGNhbGxiYWNrIG9iamVjdHMsIHNvDQo+ICAgIHRo
ZSBkcml2ZXIgY2FuIGFsbG9jYXRlIHRoZW0gd2hlbiBpdCBzZWVzIGZpdC4gKGNvZGUgbGFyZ2Vs
eSBzdG9sZW4NCj4gICAgYW5kIGluc3BpcmVkIGJ5IERhbmllbCkuDQo+ICAtIFNpZ25hbCBmZW5j
ZXMgb24gZHJvcCwgZW5zdXJlIHN5bmNocm9uaXphdGlvbi4NCj4gIC0gRm9yY2UgdXNlcnMgdG8g
c2V0IGFuIGVycm9yIGNvZGUgd2hlbiBzaWduYWxsaW5nLg0KPiAgLSBXcml0ZSBtb3JlIGRvY3Vt
ZW50YXRpb24NCj4gIC0gQSB0b24gb2YgbWlub3Igb3RoZXIgY2hhbmdlcy4NCj4gDQo+IA0KPiBb
MV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjYwNjA4MTQyNDM2LjI2NTgy
MC0yLXBoYXN0YUBrZXJuZWwub3JnLw0KPiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJp
LWRldmVsLzIwMjYwNjEyMTA0MjUxLjIyNjQ3MDctMi1waGFzdGFAa2VybmVsLm9yZy8NCj4gDQo+
IA0KPiBBbHJpZ2h0LCBzbyBzaW5jZSB0aGUgbGFzdCBSRkNzIGRpZCBub3QgcmV2ZWFsIHNpZ25p
ZmljYW50IGRlc2lnbg0KPiBpc3N1ZXMsIEkgZGVjaWRlZCB0byB0cmFuc2l0aW9uIHRoaXMgc2Vy
aWVzIHRvIGEgdjEgYW5kIGhvcGUgdGhhdCB3ZSBjYW4NCj4gZ2V0IGl0IHVwc3RyZWFtLg0KPiAN
Cj4gVGhpcyBub3cgaW5jbHVkZXMgY29kZSBmb3IgbW9yZSBjb21tb24gaW5mcmFzdHJ1Y3R1cmUg
dGhhdCBkbWFfZmVuY2UNCj4gbmVlZHMsIGNvbnRyaWJ1dGVkIGJ5IERhbmlsbyBhbmQgQWxpY2Uu
DQo+IA0KPiAtLS0NCj4gDQo+IE9sZCBjb3ZlciBsZXR0ZXIgZm9yIFJGQzoNCj4gDQo+IFNvLCB0
aGlzIGlzIHRoZSBzcGlyaXR1YWwgc3VjY2Vzc29yIG9mIHRoZSBmaXJzdCAvIHNlY29uZCBSRkMg
WzFdLiB2Mg0KPiBhbHNvIGNvbnRhaW5lZCBjb2RlIGZvciBkcm06OkpvYlF1ZXVlLCBidXQgbW9z
dGx5IHRvIHNob3cgaG93IHRoZSBmZW5jZQ0KPiBjb2RlIHdvdWxkIGJlIHVzZWQuIEpvYlF1ZXVl
IGlzIHVuZGVyIGhlYXZ5IHJld29yayByaWdodCBub3csIHNvIEkgZG9uJ3QNCj4gd2FudCB0byBi
b3RoZXIgeW91ciBleWVzIHdpdGggaXQuIFRoZSBkb2NzdHJpbmcgZXhhbXBsZXMgc2hvdWxkIHNo
b3cgaG93DQo+IFJ1c3QgZmVuY2VzIGFyZSBzdXBwb3NlZCB0byBiZSB1c2VkLCB0aG91Z2guDQo+
IA0KPiBUaGlzIHYzIGNvbnRhaW5zIGEgaHVnZSBhbW91bnQgb2YgaGlnaGx5IHZhbHVhYmxlIGZl
ZWRiYWNrIGZyb20gYQ0KPiB2YXJpZXR5IG9mIHBlb3BsZSwgbm90YWJseSBCb3JpcywgYnV0IGFs
c28gZnJvbSBBbGljZSwgR2FyeSBhbmQgRGFuaWxvLg0KPiANCj4gVGhlcmUgYXJlIHNvbWUgVE9E
T3Mgb3BlbiAoYSBiZXR0ZXIgdHJhaXQgZm9yIGZlbmNlIGJhY2tlbmRfb3BzIGFuZCBSQ1UNCj4g
c3VwcG9ydCksIGJ1dCBteSBob3BlIGlzIHRoYXQgdGhpcyBlZmZvcnQgaXMgbm93IGZpbmFsbHkg
YXBwcm9hY2hpbmcgaXRzDQo+IGVuZC4NCj4gDQo+IEkgd291bGQgZ3JlYXRseSBhcHByZWNpYXRl
IGZlZWRiYWNrIGFuZCBlc3BlY2lhbGx5IG1vcmUgaW5mb3JtYXRpb24NCj4gYWJvdXQgd2hhdCBt
aWdodCBiZSBtaXNzaW5nIHRvIG1ha2UgdGhpcyB1c2FibGUsIHdoaWNoIGlzIG9idmlvdXNseQ0K
PiB3aGVyZSBEYW5pZWwncyBhbmQgQm9yaXMncyBmZWVkYmFjayB3aWxsIGJlIHZhbHVhYmxlIG9u
Y2UgbW9yZS4NCj4gDQo+IFBsZWFzZSByZWdhcmQgdGhpcyBwYXRjaCBqdXN0IGFzIHdoYXQgaXQn
cyB0aXRsZWQ6IGFuIFJGQywgdG8gZGlzY3VzcyBhDQo+IGJpdCBtb3JlIGFuZCB0byBpbmZvcm0g
YSBicm9hZGVyIGNvbW11bml0eSBhYm91dCB3aGF0IHRoZSBjdXJyZW50IHN0YXRlDQo+IGlzIGFu
ZCB3aGVyZSB0aGlzIGlzIGhlYWRpbmcgYXQuDQo+IA0KPiBNYW55IHJlZ2FyZHMsDQo+IFBoaWxp
cHANCj4gDQo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9ydXN0LWZvci1saW51eC8yMDI2
MDIwMzA4MTQwMy42ODczMy0yLXBoYXN0YUBrZXJuZWwub3JnLw0KPiANCj4gRGFuaWxvIEtydW1t
cmljaCAoMSk6DQo+ICBydXN0OiB0eXBlczogaW1wbGVtZW50IEZvcmVpZ25Pd25hYmxlIGZvciBB
UmVmPFQ+DQo+IA0KPiBQaGlsaXBwIFN0YW5uZXIgKDQpOg0KPiAgcnVzdDogZXJyb3I6IEFkZCBF
Q0FOQ0VMRUQgZXJyb3IgY29kZQ0KPiAgcnVzdDogc3luYzogQWRkIGFic3RyYWN0aW9uIGZvciBy
Y3VfYmFycmllcigpDQo+ICBydXN0OiBBZGQgZG1hX2ZlbmNlIGFic3RyYWN0aW9ucw0KPiAgTUFJ
TlRBSU5FUlM6IEFkZCBlbnRyeSBmb3IgUnVzdCBkbWEtYnVmDQo+IA0KPiBNQUlOVEFJTkVSUyAg
ICAgICAgICAgICAgICAgICAgICB8ICAgNSArDQo+IHJ1c3QvYmluZGluZ3MvYmluZGluZ3NfaGVs
cGVyLmggIHwgICAxICsNCj4gcnVzdC9oZWxwZXJzL2RtYV9mZW5jZS5jICAgICAgICAgfCAgNDgg
KysNCj4gcnVzdC9oZWxwZXJzL2hlbHBlcnMuYyAgICAgICAgICAgfCAgIDEgKw0KPiBydXN0L2tl
cm5lbC9kbWFfYnVmL2RtYV9mZW5jZS5ycyB8IDg5NCArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrDQo+IHJ1c3Qva2VybmVsL2RtYV9idWYvbW9kLnJzICAgICAgIHwgIDE0ICsNCj4gcnVz
dC9rZXJuZWwvZXJyb3IucnMgICAgICAgICAgICAgfCAgIDEgKw0KPiBydXN0L2tlcm5lbC9saWIu
cnMgICAgICAgICAgICAgICB8ICAgMSArDQo+IHJ1c3Qva2VybmVsL3N5bmMvYXJlZi5ycyAgICAg
ICAgIHwgIDQwICsrDQo+IHJ1c3Qva2VybmVsL3N5bmMvcmN1LnJzICAgICAgICAgIHwgIDIwICsN
Cj4gMTAgZmlsZXMgY2hhbmdlZCwgMTAyNSBpbnNlcnRpb25zKCspDQo+IGNyZWF0ZSBtb2RlIDEw
MDY0NCBydXN0L2hlbHBlcnMvZG1hX2ZlbmNlLmMNCj4gY3JlYXRlIG1vZGUgMTAwNjQ0IHJ1c3Qv
a2VybmVsL2RtYV9idWYvZG1hX2ZlbmNlLnJzDQo+IGNyZWF0ZSBtb2RlIDEwMDY0NCBydXN0L2tl
cm5lbC9kbWFfYnVmL21vZC5ycw0KPiANCj4gDQo+IGJhc2UtY29tbWl0OiBhNzNhMzk4YTY4Y2E5
YjllNTExNmE2MTc1NjI0NzFmMTZiODMxMGM0DQo+IC0tIA0KPiAyLjU0LjANCj4gDQoNClRoaXMg
d29ya3Mgb24gVHlyIDopDQoNCkZvciB0aGUgd2hvbGUgc2VyaWVzOg0KDQpUZXN0ZWQtYnk6IERh
bmllbCBBbG1laWRhIDxkYW5pZWwuYWxtZWlkYUBjb2xsYWJvcmEuY29tPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
