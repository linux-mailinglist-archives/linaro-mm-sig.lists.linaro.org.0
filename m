Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KcFRNEfqO2o3fQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 16:31:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AF16BF234
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 16:31:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=Xcj86EXk;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 369E840B03
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:31:34 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 711163F91D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 14:31:24 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D9FB04139A;
	Wed, 24 Jun 2026 14:31:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 183991F000E9;
	Wed, 24 Jun 2026 14:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782311483;
	bh=dMJlxp8QipVxy2M9SnWzpGrx6rBzEVmcbiBu62OC/Ew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Xcj86EXknUiizWzaPEFY1ZJZBKFKp44sKaQgJw4AKDhpmLbVWGfhD2saUODX1WBt2
	 qYc2Akrz3AmSr0iitaVzc/maSTOWGR6/7qYP1rCXN4BfB2DbEdkYST9ZV0KE5sMbBu
	 RgFSAihK8C3KYHuaPxwiOzFOCH3jCehmSVuGwbVeZerU7KpMWXBO5AO2o5qderwYCn
	 qiH5Zm8pa1kbYM//LH4iVQq2DjoIZodWIVytV/2tLOINXQYgIExyPRR3Mo/L3NqFYi
	 OoVIfoGbe0L0GMLeGllR+qC2wkmTefZnIhRgPxseduf1fZBepZKgngNip8+o+Az1zV
	 G230X6Y0L/zpQ==
Date: Wed, 24 Jun 2026 17:31:19 +0300
From: Leon Romanovsky <leon@kernel.org>
To: David Laight <david.laight.linux@gmail.com>
Message-ID: <20260624143119.GA124186@unreal>
References: <20260621222130.1667453-1-xuehaohu@google.com>
 <20260623015459.1153884-1-xuehaohu@google.com>
 <20260623094446.4a8fc2ed@pumpkin>
 <ajryxMaT5evDUxaq@google.com>
 <20260623235350.6540eaa2@pumpkin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260623235350.6540eaa2@pumpkin>
X-Spamd-Bar: ------
Message-ID-Hash: 4SNW4OP2SUJMEE2XTURZYZLKW2UWUB34
X-Message-ID-Hash: 4SNW4OP2SUJMEE2XTURZYZLKW2UWUB34
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Pranjal Shrivastava <praan@google.com>, David Hu <xuehaohu@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, kpberry@google.com, chriscli@google.com, sashiko-bot@kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Split sgl into page-aligned 2G chunks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4SNW4OP2SUJMEE2XTURZYZLKW2UWUB34/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:praan@google.com,m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:kpberry@google.com,m:chriscli@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[widen.net:url,linaro.org:email,bootlin.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50AF16BF234

T24gVHVlLCBKdW4gMjMsIDIwMjYgYXQgMTE6NTM6NTBQTSArMDEwMCwgRGF2aWQgTGFpZ2h0IHdy
b3RlOg0KPiBPbiBUdWUsIDIzIEp1biAyMDI2IDIwOjU1OjMyICswMDAwDQo+IFByYW5qYWwgU2hy
aXZhc3RhdmEgPHByYWFuQGdvb2dsZS5jb20+IHdyb3RlOg0KPiANCj4gPiBPbiBUdWUsIEp1biAy
MywgMjAyNiBhdCAwOTo0NDo0NkFNICswMTAwLCBEYXZpZCBMYWlnaHQgd3JvdGU6DQo+ID4gDQo+
ID4gSGkgRGF2aWQsDQo+ID4gDQo+ID4gPiBPbiBUdWUsIDIzIEp1biAyMDI2IDAxOjU0OjU5ICsw
MDAwDQo+ID4gPiBEYXZpZCBIdSA8eHVlaGFvaHVAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gPiAg
IA0KPiA+ID4gPiBDdXJyZW50bHksIGBmaWxsX3NnX2VudHJ5KClgIHNwbGl0cyB0aGUgc2NhdHRl
cmxpc3QgdXNpbmcgYFVJTlRfTUFYYC4NCj4gPiA+ID4gVGhpcyBjcmVhdGVzIGEgbm9uLXBhZ2Ut
YWxpZ25lZCBETUEgbGVuZ3RoIChgMHhGRkZGRkZGRmApIGZvciB0aGUNCj4gPiA+ID4gZmlyc3Qg
ZW50cnksIHJlc3VsdGluZyBpbiBub24tcGFnZS1hbGlnbmVkIERNQSBhZGRyZXNzZXMgZm9yIGFs
bA0KPiA+ID4gPiBzdWJzZXF1ZW50IGVudHJpZXMuICANCj4gPiA+IA0KPiA+ID4gVGhlcmUgaXMg
YSBzZXBhcmF0ZSBpc3N1ZSBvZiB3aGV0aGVyIHRoaXMgY29kZSBpcyBldmVuIG5lZWRlZCBhdCBh
bGwuDQo+ID4gPiBXaGVyZSBjYW4gdHJhbnNmZXJzIG92ZXIgMkcgKG5ldmVyIG1pbmQgNEcpIGFj
dHVhbGx5IGNvbWUgZnJvbS4NCj4gPiA+IA0KPiA+ID4gVGhlIHJlYWQsIHdyaXRlIGFuZCBzaW1p
bGFyIHN5c3RlbSBjYWxscyBsaW1pdCB0cmFuc2ZlcnMgdG8gSU5UX01BWA0KPiA+ID4gKGV2ZW4g
b24gNjRiaXQpIGFuZCBhIGxvdCBvZiBkcml2ZXIgY29kZSB3aWxsIG5lZWQgZml4aW5nIGl0IGxv
bmdlcg0KPiA+ID4gbGVuZ3RocyBhcmUgYWxsb3dlZCB0aG91Z2guDQo+ID4gPiBpb191cmluZyBi
ZXR0ZXIgZW5mb3JjZSB0aGUgc2FtZSBsaW1pdHMuDQo+ID4gPiBTbyB0aGUgdHJhbnNmZXJzIGNh
biBjb21lIGRpcmVjdGx5IGZyb20gdXNlcnNwYWNlLg0KPiA+ID4gDQo+ID4gPiBOb3Qgb25seSB0
aGF0IGJ1dCB5b3UgYWxzbyBuZWVkIGEgc2luZ2xlIHBoeXNpY2FsbHkgY29udGlndW91cyBidWZm
ZXIuDQo+ID4gPiBHb29kIGx1Y2sgYWxsb2NhdGluZyB0aGF0IQ0KPiA+ID4gDQo+ID4gPiBOb3cg
bWF5YmUgdGhlcmUgYXJlIHNvbWUgcGVlci10by1wZWVyIHBsYWNlcyB3aGVyZSB0aGUgbGFyZ2Ug
YnVmZmVyDQo+ID4gPiBpcyBkZXZpY2UgbWVtb3J5LCBidXQgdGhleSB3aWxsIGJlIHVudXN1YWwg
YW5kIHByb2JhYmx5IG5lZWQNCj4gPiA+IHNwZWNpYWwgdHJlYXRtZW50IGFueXdheS4NCj4gPiA+
ICAgDQo+ID4gDQo+ID4gSSBhZ3JlZSB0aGF0IHRyYWRpdGlvbmFsIFZGUyByZWFkL3dyaXRlIGZh
Y2UgdGhlIE1BWF9SV19DT1VOVCBsaW1pdCANCj4gPiAofjJHQiksIGFuZCBpb191cmluZyBoYXMg
aXRzIGxpbWl0cywgYnV0IEknbSBhIGxpdHRsZSBjb25mdXNlZCBieSB0aGUNCj4gPiBwdXNoIHRv
IGVuZm9yY2UgdGhlc2UgbGltaXRzIGhlcmUgaW4gdGhlIFNHTCBjb2RlPw0KPiA+IA0KPiA+IEZp
bGUgSS9PIHNlZW1zIHRvIGJlIG9ubHkgb25lIHNpZGUgb2YgdGhlIHBpY3R1cmUuIEluIG15IHZp
ZXcsIHRoaXMgZml4DQo+ID4gaXMgbmVjZXNzYXJ5IGFuZCBjZXJ0YWlubHkgaGFzIGEgdXNlLWNh
c2U6DQo+ID4gDQo+ID4gRm9yIGV4YW1wbGUsIHRoZSBSRE1BIHN1YnN5c3RlbSBoYXMgdGhlIGNh
cGFiaWxpdHkgdG8gaW1wb3J0IGRtYWJ1ZnMgWzFdLA0KPiA+IHdoaWNoIGdpdmVzIHJpc2UgdG8g
dXNlIGNhc2VzIGZvciBkbWFidWYgYmV5b25kIHN0YW5kYXJkIGZpbGUgb3BzIA0KPiA+ICh2aWEg
VkZTL2lvX3VyaW5nKS4gDQo+ID4gDQo+ID4gSW4gdGhlc2Ugc2NlbmFyaW9zLCBHUFUgSEJNIGNh
biBiZSBleHBvcnRlZCBhcyBkbWFidWZzLiBXaXRoIHJlY2VudCBHUFVzLA0KPiA+IEhCTSBjYXBh
Y2l0eSBjYW4gYmUgaW4gdGhlIG9yZGVyIG9mIGh1bmRyZWRzIG9mIEdCcyBbMl0uIFJETUEgY2Fu
IGVtcGxveQ0KPiA+IGluZnJhc3RydWN0dXJlIGxpa2UgdGhlIHZmaW8tZG1hYnVmLWV4cG9ydGVy
IFszXSBvciBzaW1pbGFyIGRtYWJ1ZiANCj4gPiBleHBvcnRlcnMgdG8gZnJlcXVlbnRseSBtb3Zl
IGh1Z2UgYmxvY2tzIG9mIGRhdGEgdmlhIFAyUERNQS4NCj4gDQo+IE9rLCB0aGF0IGV4cGxhaW5z
IHdoZXJlIGJpZyBidWZmZXJzIGNhbiBjb21lIGZyb20uDQo+IEkganVzdCB3YXNuJ3Qgc3VyZS4N
Cj4gDQo+ID4gSWYgd2UgcmVzdHJpY3QgaW5jb21pbmcgZG1hYnVmIHRyYW5zZmVycyB0byBmaXQg
d2l0aGluIFZGUy1jZW50cmljIA0KPiA+IGxpbWl0cyAoMkdCKSwgd2UgaW1wb3NlIHVubmVjZXNz
YXJ5IG92ZXJoZWFkIG9uIHRoZSBSRE1BIHN0YWNrLCBmb3JjaW5nDQo+ID4gaXQgdG8gbWFuYWdl
IGEgc2lnbmlmaWNhbnRseSBoaWdoZXIgbnVtYmVyIG9mIG1lbW9yeSByZWdpc3RyYXRpb25zLiBC
eSANCj4gPiBjbGVhbmx5IHNwbGl0dGluZyB0aGVzZSBtYXNzaXZlIGNvbnRpZ3VvdXMgZGV2aWNl
IGJ1ZmZlcnMgaW50byANCj4gPiBwYWdlLWFsaWduZWQgU0dMIGVudHJpZXMsIHdlIGRpcmVjdGx5
IGltcHJvdmUgdGhlIGVmZmljaWVuY3kgb2YgUDJQIA0KPiA+IHRyYW5zZmVycyBhbmQgbWVtb3J5
IHJlZ2lzdHJhdGlvbi4NCj4gDQo+IEJ1dCBhIGRpdmlkZSBieSAnNEcgLSBQQUdFX1NJWkUnIGlz
IGFsc28gbm9uLXRyaXZpYWwgYW5kIChJIHRoaW5rIGFmZmVjdHMNCj4gYSBsb3Qgb2YgaW8pIHdo
ZW4gdGhlIHF1b3RpZW50IGlzIGFsd2F5cyAxLg0KPiBTcGxpdHRpbmcgaW50byAyRyBjaHVua3Mg
aXMgYSBsb3QgY2hlYXBlci4NCj4gDQo+ID4gU2luY2UgdGhpcyBjaGFuZ2UgZG9lc24ndCBzZWVt
IHRvIGhhdmUgYSBuZWdhdGl2ZSBpbXBhY3Qgb24gc3RhbmRhcmQgZmlsZQ0KPiA+IEkvTyBvciBi
cmVhayBleGlzdGluZyBWRlMgY29uc3RyYWludHMsIEknbSBjdXJpb3VzIHdoeSB3ZSBzaG91bGRu
J3QgDQo+ID4gc3VwcG9ydCBzcGxpdHRpbmcgdGhlc2UgPjRHQiBQMlAgdHJhbnNmZXJzPyBBbSBJ
IG1pc3Npbmcgc29tZXRoaW5nPw0KPiANCj4gSSB3YXMgb25seSB3b25kZXJpbmcgd2hldGhlciBp
dCB3YXMgbmVlZGVkLi4uDQo+IEl0IGRvZXMgYnJpbmcgdXAgdGhlIHF1ZXN0aW9uIG9mIHdoeSB0
aGUgPjRHQiB0cmFuc2ZlcnMgZXZlbiBuZWVkIHNwbGl0dGluZy4NCj4gQnV0IHRoYXQgaXMgYW5v
dGhlciBxdWVzdGlvbi4NCg0KSnVzdCBhIHNpZGUgbm90ZToNCg0KSW4gb3VyIHZpc2lvbiwgd2Ug
YWltIHRvIHRyYW5zaXRpb24gRE1BQlVGIHRvIHVzZSBwaHlzaWNhbCAgDQphZGRyZXNzZXMgZGly
ZWN0bHkgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzAtdjEtYjVjYWI2MzA0OWMwKzE5MWFm
LWRtYWJ1Zl9tYXBfdHlwZV9qZ2dAbnZpZGlhLmNvbS8gIA0KYW5kIGVsaW1pbmF0ZSB0aGUgc2Nh
dHRlcuKAkWdhdGhlciBsYXllciBmcm9tIHRoZSBETUFCVUYgcGF0aC4NCg0KVGhhbmtzDQoNCj4g
DQo+IElmIHlvdSB3YW50IHRvIHNwbGl0IGxhcmdlIHRyYW5zZmVycyBpbnRvIDRHLVBBR0VfU0la
RSBibG9ja3MNCj4gaXQgaXMgcHJvYmFibHkgd29ydGggaGF2aW5nIGEgcXVpY2sgdGVzdCB0aGF0
IHJldHVybnMgMSBmb3IgJ3NtYWxsJyBidWZmZXJzLg0KPiANCj4gCURhdmlkDQo+IA0KPiA+IA0K
PiA+IFRoYW5rcywNCj4gPiBQcmFhbg0KPiA+IA0KPiA+IFsxXSBodHRwczovL2VsaXhpci5ib290
bGluLmNvbS9saW51eC92Ny4xLjEvc291cmNlL2RyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1f
ZG1hYnVmLmMjTDE3NCANCj4gPiBbMl0gaHR0cHM6Ly9udmRhbS53aWRlbi5uZXQvcy9mZHZkcXZm
dmoyL2hvcHBlci1oMjAwLW52bC1wcm9kdWN0LWJyaWVmIChUYWJsZSAyLTIpDQo+ID4gWzNdIGh0
dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y3LjEuMS9zb3VyY2UvZHJpdmVycy92Zmlv
L3BjaS92ZmlvX3BjaV9kbWFidWYuYyNMMjk3DQo+ID4gDQo+IA0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
